<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

require 'sendgrid-php/vendor/autoload.php';

class SendGridEmail
{
    private $sfrom;
    private $sreply_to;
    private $sto;
    private $sbcc;
    private $ssubject;
    private $smessage;
    private $stxmessage;
    private $customargs;
    private $sset_newline;
    private $semailat;
    private $asm;

    private function check_blacklist($email)
    {
        $CI =& get_instance();
    
        return $CI->db->get_where(MAIN_DATABASE . ".history_emails_blacklist", array("email" => $email))->num_rows();
    }

    public function send()
    {
        $email = new \SendGrid\Mail\Mail();
        $email->setFrom($this->sfrom);
        $email->setSubject($this->ssubject);
        $email->addCustomArgs($this->customargs);
        
        if(isset($this->asm))
        {
            $email->addSubstitution("#ASM_GROUP_UNSUBSCRIBE_RAW_URL#", "<%asm_group_unsubscribe_raw_url%>");
            
            $email->setASM($this->asm);
        }
        
        if (!is_array($this->sto)) 
        {
            $is_blacklisted = $this->check_blacklist($this->sto);

            if($is_blacklisted)
            {
                return;
            }

            $this->sto = array($this->sto => $this->sto);
        }
        else
        {
            $arr_tos = array();
            $emails = array_keys($this->sto);

            foreach($emails as $key => $value)
            {
                $is_blacklisted = $this->check_blacklist($value);

                if(!$is_blacklisted)
                {
                    $arr_tos[$value] = $value;
                }
            }

            $this->sto = $arr_tos;
        }

        $email->addTos($this->sto);

        $email->addContent(
            "text/html",
            $this->smessage
        );
        
        if($this->semailat){
            $email->setSendAt(new \SendGrid\Mail\SendAt($this->semailat));
        }
        $sendgrid = new \SendGrid(SENDGRID_API_KEY);

        $response = null;

        try 
        {
            $response = $sendgrid->send($email);
        } 
        catch (Exception $e) 
        {
            $response = 'Caught exception: ' . $e->getMessage() . "\n";
        }

        return $response;
    }

    public function sendMultiple($emails)
    {
        $from = new \SendGrid\Mail\From($this->sfrom);

        $tos = array();

        foreach ($emails as $value) {
            $to = new \SendGrid\Mail\To(
                $value[0],
                $value[1],
                $value[2],
                $value[3]
            );

            $is_blacklisted = $this->check_blacklist($value[0]);

            if(!$is_blacklisted)
            {
                array_push($tos, $to);
            }
        }

        $subject = new \SendGrid\Mail\Subject($this->ssubject);
        /* $globalSubstitutions = [
            '-time-' => "2018-05-03 23:10:29"
        ]; */
        $plainTextContent = new \SendGrid\Mail\PlainTextContent(
            $this->stxmessage
        );
        $htmlContent = new \SendGrid\Mail\HtmlContent(
            $this->smessage
        );
        $email = new \SendGrid\Mail\Mail(
            $from,
            $tos,
            $subject, // or array of subjects, these take precendence
            $plainTextContent,
            $htmlContent
            //$globalSubstitutions
        );
        
        if($this->semailat){
            $email->setSendAt(new \SendGrid\Mail\SendAt($this->semailat));
        }

        $sendgrid = new \SendGrid(SENDGRID_API_KEY);
        try {
            $response = $sendgrid->send($email);
            print $response->statusCode() . "\n";
            print_r($response->headers());
            print $response->body() . "\n";
        } catch (Exception $e) {
            echo 'Caught exception: ' .  $e->getMessage() . "\n";
        }
    }

    /**
     * Set the value of from
     *
     * @return  self
     */
    public function email_at($emailat)
    {
        $this->semailat = $emailat;

        return $this;
    }

    /**
     * Set the value of from
     *
     * @return  self
     */
    public function from($from)
    {
        $this->sfrom = $from;

        return $this;
    }

    /**
     * Set the value of reply_to
     *
     * @return  self
     */
    public function reply_to($reply_to)
    {
        $this->sreply_to = $reply_to;

        return $this;
    }

    /**
     * Set the value of to
     *
     * @return  self
     */
    public function to($to)
    {
        $this->sto = $to;

        return $this;
    }

    /**
     * Set the value of bcc
     *
     * @return  self
     */
    public function bcc($bcc)
    {
        $this->sbcc = $bcc;

        return $this;
    }

    /**
     * Set the value of subject
     *
     * @return  self
     */
    public function subject($subject)
    {
        $this->ssubject = $subject;

        return $this;
    }

    /**
     * Set the value of message
     *
     * @return  self
     */
    public function message($message)
    {
        $this->smessage = $message;

        return $this;
    }

    /**
     * Set the value of text message
     *
     * @return  self
     */
    public function txt_message($message)
    {
        $this->stxmessage = $message;

        return $this;
    }

    /**
     * Set the value of the custom args
     *
     * @return  self
     */
    public function add_custom_args($customargs)
    {
        $this->customargs = $customargs;

        return $this;
    }

    /**
     * Set the value of the custom args
     *
     * @return  self
     */
    public function set_asm_group($group_id)
    {
        $asm = new SendGrid\Mail\Asm();
        $asm->setGroupId($group_id);

        $this->asm = $asm;

        return $this;
    }

    /**
     * Set the value of set_newline
     *
     * @return  self
     */
    public function set_newline($set_newline)
    {
        $this->sset_newline = $set_newline;

        return $this;
    }
}

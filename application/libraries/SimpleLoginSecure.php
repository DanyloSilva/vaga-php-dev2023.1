<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

require_once('phpass-0.3/PasswordHash.php');

define('PHPASS_HASH_STRENGTH', 8);
define('PHPASS_HASH_PORTABLE', false);

/**
 * SimpleLoginSecure Class
 *
 * Makes authentication simple and secure.
 *
 * Simplelogin expects the following database setup. If you are not using
 * this setup you may need to do some tweaking.
 *
 * @package   SimpleLoginSecure
 * @version   2.1.1
 * @author    Stéphane Bourzeix, Pixelmio <stephane[at]bourzeix.com>
 * @copyright Copyright (c) 2012-2013, Stéphane Bourzeix
 * @license   http://www.gnu.org/licenses/gpl-3.0.txt
 * @link      https://github.com/DaBourz/SimpleLoginSecure
 */
class SimpleLoginSecure
{
    var $CI;
    var $user_table = 'users';

    /**
     * Função que efetua o login do usuário no sistema.
     * Executa algumas validações de acesso e segurança.
     *
     * @param  string $user_username Nome do usuário
     * @param  string $user_pass Senha do usuário
     * @param  boolean $app Informa se o login é oriundo dos aplicativos
     *
     * @return boolean
     */
    function login($user_username = '', $user_pass = '', $app = false)
    {
        $this->CI = &get_instance();

        if ($user_username == '' or $user_pass == '')
            return false;

        //Check against user table
        $this->CI->db->where('username', $user_username);
        $this->CI->db->where('grupo_id !=', 3);

        $query = $this->CI->db->get_where($this->user_table);

        $actual_uri = $this->getUri();

        if ($query->num_rows() > 0) {
            $user_data = $query->row_array();

            $hasher = new PasswordHash(PHPASS_HASH_STRENGTH, PHPASS_HASH_PORTABLE);

            if (!$hasher->CheckPassword($user_pass, $user_data['password'])) {
                return false;
            }

            if ($this->checkLastLoginAttempt($user_data)) {
                return false;
            }

            //Destroy old session
            $this->CI->session->sess_destroy();

            //Create a fresh, brand new session
            $this->CI->session->sess_create();

            $this->CI->db->query('UPDATE ' . $this->user_table . ' SET last_login = "' . date('Y-m-d H:i:s') . '" WHERE id = ' . $user_data['id']);

            //Set session data
            unset($user_data['password']);

            $user = $this->CI->db->get_where("users", array('id' => $user_data['id']))->row();
            $empresa = $this->CI->db->get_where("empresas", array('id' => $user_data['empresa_id']))->row();
            $empresas = explode(',', $user->empresas_id);

            if (!@in_array(@$empresa->id, $empresas)) {
                if (!@$empresas[0]) {
                    $empresa = $this->CI->db->get("empresas")->row();
                    $empresas[0] = $empresa->id;
                }
                $user_data['empresa_id'] = $empresas[0];
                $empresa = $this->CI->db->get_where("empresas", array('id' => $empresas[0]))->row();
                $this->CI->db->query('UPDATE ' . $this->user_table . ' SET empresa_id = "' . $empresas[0] . '" WHERE id = ' . $user_data['id']);
            } elseif (!@$empresa->id) {
                $empresa = $this->CI->db->get("empresas")->row();
                $empresas[0] = $empresa->id;
                $user_data['empresa_id'] = $empresas[0];
                $empresa = $this->CI->db->get_where("empresas", array('id' => $empresas[0]))->row();
                $this->CI->db->query('UPDATE ' . $this->user_table . ' SET empresa_id = "' . $empresas[0] . '" WHERE id = ' . $user_data['id']);
            }

            $user_data['empresa_tipo'] = $empresa->tipo;
            $user_data["empresa_data"] = $empresa;
            $user_data['user'] = $user_data['username'];
            $user_data['logged_in'] = true;
            $user_data['group_access'] = $this->get_group_access($user_data['username']);

            //$permissions = $this->CI->db->get_where(MAIN_DATABASE . ".users_permissions", array('user_id' => $user_data['id']))->row();
            $permissions_by_empresa = $this->CI->db->get_where(MAIN_DATABASE.".users_permissions", array('user_id' => $user->id, "empresa_id" => $empresa->id))->row();
            $permissions = $this->CI->db->get_where(MAIN_DATABASE.".users_permissions", array('user_id' => $user->id))->row();
            $permissions = $permissions_by_empresa ?: $permissions;
            $permissions = json_decode($permissions->data_permissions, true);

            if (!$app) 
            {
                $acessos_aux = $this->get_access($user_data['username']);
                $acessos_aux = array_intersect_key($acessos_aux, $permissions);

                foreach ($permissions as $key => $value) {
                    $acessos_aux[$key] = 1;
                }

                $user_data['user_access'] = $acessos_aux;

                $this->CI->session->set_userdata($user_data);
            }

            if ($actual_uri) {
                redirect($actual_uri);
            }

            return true;
        } else {
            return false;
        }
    }

    /**
     * Função que registra a tentativa de acesso de um usuário desabilidato ao sistema.
     *
     * @param  array $user_data Row com o user
     *
     * @return boolean
     */
    public function checkLastLoginAttempt($user_data)
    {
        if (!$user_data['is_active']) {
            $last_login_attempt = $user_data['last_login_attempt'] ? $user_data['last_login_attempt'] . "," : "";
            $last_login_attempt .= date('Y-m-d H:i:s');

            $this->CI->db->query('UPDATE ' . $this->user_table . ' SET last_login_attempt = "' . $last_login_attempt . '" WHERE id = ' . $user_data['id']);

            $this->CI->load->helper('sys');
            save_log(array(), "users", "last_login_attempt", $user_data['id']);

            return true;
        }

        return false;
    }

    function get_userinfo($id)
    {
        $userinfo = $this->CI->db->query('SELECT * FROM clientes WHERE user_id = "' . $id . '"');
        return $userinfo->row_array();
    }

    function get_representante_id($username)
    {
        $representantes = $this->CI->db->query('SELECT users.representante_id FROM users WHERE username = "' . $username . '"')->result_array();
        $representante_id = $representantes[0]['representante_id'];

        return $representante_id;
    }

    function get_group_access($username)
    {
        $user_access = $this->CI->db->query('SELECT users.grupo_id FROM users WHERE username = "' . $username . '"')->result_array();

        return $user_access[0]['grupo_id'];
    }

    function get_access($username)
    {
        $grupo_id = $this->get_group_access($username);

        $access = $this->CI->db->query('SELECT grupo_acessos.* FROM grupo_acessos WHERE grupo_id = "' . $grupo_id . '"');

        $acc = $this->CI->db->get('acessos')->result();

        $acessos = [];
        $acessos_aux = [];

        foreach ($acc as $a) {
            $acessos[$a->id] = $a->controller;
        }

        foreach ($access->result() as $row) {
            if ($row->acesso_id) {
                @$acessos_aux[$acessos[$row->acesso_id]] = true;
            }
        }

        return $acessos_aux;
    }

    /**
     * Função que efetua o logout do usuário no sistema
     *
     * @return void
     */
    function logout()
    {
        $this->CI = &get_instance();

        $this->CI->session->_sess_gc();
        $this->CI->session->sess_destroy();

        redirect('/login');
    }


    function authServices($class, $method, $services)
    {
        $this->CI = &get_instance();

        for ($i = 0; $i < count($services); $i++) {
            if ($method == $services[$i]) {
                if (!$this->CI->session->userdata('logged_in')) {
                    $this->setUri();
                    redirect('/login');
                }
            }
        }

        eval("\$class->$method();");
    }

    function getUserPermissions()
    {
        $this->CI = &get_instance();

        $user_id = $this->CI->session->userdata('id');
        $empresa_id = $this->CI->session->userdata('empresa_id');
        
        $permissions_by_empresa = $this->CI->db->get_where(MAIN_DATABASE.".users_permissions", array('user_id' => $user_id, "empresa_id" => $empresa_id))->row();
        $permissions = $this->CI->db->get_where(MAIN_DATABASE.".users_permissions", array('user_id' => $user_id))->row();
        $permissions = $permissions_by_empresa ?: $permissions;

        return json_decode($permissions->data_permissions, true);
    }

    function updatePermissions()
    {
        $this->CI = &get_instance();

        $permissions = $this->getUserPermissions();

        $acessos_aux = $this->CI->session->userdata('user_access');
        $acessos_aux = array_intersect_key($acessos_aux, $permissions);

        foreach ($permissions as $key => $value) {
            $acessos_aux[$key] = 1;
        }

        CI_Controller::save_session('user_access', $acessos_aux);
    }

    function verify_access($module)
    {
        $this->CI = &get_instance();
        // $this->CI->load->helper('tickets');

        if (!$this->CI->session->userdata('username')) {
            $this->setUri();
            redirect('/login');
        }

        if (IS_IN_MANUTENCAO && !in_array($module, MODULES_NOACCESS_ALLOWED)) {
            redirect(site_url('login/ops'));
            return;
        }

        $user_id = $this->CI->session->userdata('id');
        $user = $this->CI->db->get_where(MAIN_DATABASE . ".users", array('id' => $user_id))->row();
        $empresa_id = $user->empresa_id;
        $empresa = $this->CI->db->get_where(MAIN_DATABASE . ".empresas", array('id' => $empresa_id))->row();

        $empresas = explode(',', $user->empresas_id);

        if (!@in_array(@$empresa->id, $empresas)) { 
            redirect(site_url('login/ops/'));
            return;
        }

        if (!$empresa->available && !in_array($module, MODULES_NOACCESS_ALLOWED)) {
            redirect(site_url('empresas/ops/'));
            return;
        }

        if ($module) {
            $this->updatePermissions();

            $acessos_aux = $this->CI->session->userdata('user_access');

            if (!@$acessos_aux[$module] && !in_array($module, MODULES_NOACCESS_ALLOWED)) {
                redirect(site_url('login/ops'));
            }

            /* $tickets_update = getNotificationsTickets(true, "-48 HOUR");

            if (count($tickets_update) && $module != "tickets")
            {
                redirect("login/ticketsnotification");

                die();
            } */
        }
    }

    private function setUri()
    {
        $this->CI = &get_instance();
        $this->CI->session->sess_create();
        $access_data['actual_uri'] = uri_string();
        $this->CI->session->set_userdata($access_data);
    }

    private function getUri()
    {
        $this->CI = &get_instance();
        return $this->CI->session->userdata('actual_uri');
    }

    public function setPass($user_pass)
    {
        //Hash user_pass using phpass
        $hasher = new PasswordHash(PHPASS_HASH_STRENGTH, PHPASS_HASH_PORTABLE);
        $user_pass_hashed = $hasher->HashPassword($user_pass);

        return $user_pass_hashed;
    }

    public function checkPass($user_pass, $user_data)
    {

        $user_pass_hashed = true;

        $hasher = new PasswordHash(PHPASS_HASH_STRENGTH, PHPASS_HASH_PORTABLE);
        if (!$hasher->CheckPassword($user_pass, $user_data))
            $user_pass_hashed = false;

        return $user_pass_hashed;
    }

    /**
     * Função que edita a senha atual.
     * A validação da nova senha passa por algumas validações de hash/criptogragia.
     *
     * @param  string $user_username Usuário
     * @param  string $old_pass Senha antiga
     * @param  string $new_pass Nova senha
     *
     * @return boolean
     */
    public function edit_password($user_username = '', $old_pass = null, $new_pass = '')
    {
        $this->CI = &get_instance();

        $query = $this->CI->db->get_where($this->user_table, array('username' => $user_username));
        $user_data = $query->row_array();

        $hasher = new PasswordHash(PHPASS_HASH_STRENGTH, PHPASS_HASH_PORTABLE);

        if ($old_pass && !$hasher->CheckPassword($old_pass, $user_data['password'])) {
            return FALSE;
        }

        $data = array(
            'password' => $hasher->HashPassword($new_pass)
        );

        $this->CI->db->set($data);
        $this->CI->db->where('username', $user_username);

        if (!$this->CI->db->update($this->user_table, $data)) {
            return FALSE;
        } else {
            return TRUE;
        }
    }

    /**
     * Função que valida a senha antes de salvar no banco de dados.
     *
     * @param  string $senha Valor do input informado pelo usuário
     *
     * @return boolean
     */
    public function validatePassword($senha)
    {
        //return preg_match('/^(?=.[a-z])(?=.[A-Z])(?=.*[0-9])[\w$@]{5,}$/', $senha);

        return preg_match('/[a-z]/', $senha) // tem pelo menos uma letra minúscula
            && preg_match('/[A-Z]/', $senha) // tem pelo menos uma letra maiúscula
            && preg_match('/[0-9]/', $senha) // tem pelo menos um número
            && preg_match('/^[\w#$@\*_-]{5,}$/', $senha); // tem 5 ou mais caracteres
    }

    /**
     * Função que verifica se o usuário está há mais de DAYS_LASTLOGIN_TO_DEACTIVATE sem acessar o sistema.
     * Desabilita automaticamente esse usuário em caso de retorno positivo.
     * 
     * @see api.php common_constants.php
     *
     * @return boolean
     */
    public function checkLastLoginToDeactivate()
    {
        $CI = &get_instance();
        $CI->load->helper('sys');

        $date_today = date("Y-m-d");
        $users = $CI->db->get_where($this->user_table, array("is_active" => 1))->result_array();

        foreach ($users as $user_data) 
        {
            if ($user_data['last_login'] && $user_data['is_active']) 
            {
                $date_last_login = date("Y-m-d", strtotime($user_data['last_login']));
                $diff_days = diff_datas($date_last_login, $date_today);

                // Se o usuário for do grupo App do Vendedor, dobramos o número de dias
                $days_lastlogin_to_deactivate = DAYS_LASTLOGIN_TO_DEACTIVATE * ($user_data["group_id"] == 5 ? 2 : 1);
                
                if ($diff_days >= $days_lastlogin_to_deactivate) 
                {
                    $CI->db->update($this->user_table, array("is_active" => 0), array("id" => $user_data['id']));

                    save_log(array(), "users", "last_login_deactivate", $user_data['id']);
                }
            }
        }
    }
}

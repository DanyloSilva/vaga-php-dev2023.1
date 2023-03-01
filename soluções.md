## 1)  Diante desse cenário, sugiro duas abordagens possiveis:
### Abordagem a curto prazo: 
- A depender do metodo de pagamento utilizado (Pix, Boleto, cartão debito ou cartão crédito) a equipe de atendimento da Legacy Enterprise pode entrar em contato com a intermediadora de pagamento para verificar se o pagamento do cliente Edinaldo Carvalho foi processado corretamente. Se houver um registro de pagamento bem-sucedido.
Caso contrário, se o pagamento não foi processado corretamente, a equipe deve trabalhar com a intermediadora para solucionar o problema e confirmar que o pagamento foi processado corretamente. Se necessário, a equipe pode ajudar o cliente a realizar um novo pagamento para garantir que a cobrança em questão seja paga antes do evento.
Independentemente do resultado, é importante que a equipe de atendimento mantenha uma comunicação clara e frequente com o cliente Edinaldo Carvalho para mantê-lo informado sobre o status da cobrança e quaisquer medidas que estejam sendo tomadas para resolvê-la. É importante ser transparente e empático com o cliente, mostrando-lhe que a Legacy Enterprise está empenhada em resolver o problema o mais rápido possível.
### Resolução a longo prazo: 
Verificar a viabilidade da implementação de  uma nova  feature para validação do comprovante.
Essa verificação deve depender da forma do pagamento utilizada Pix, boleto, credito ou debito, nessa
validação pode ser realizada pelo numero de serie validador no comprovante, no caso do pix existe um campo chamado id_comprovante que podera ser usado como key para esse metodo de validação.  
Logo após, basta pegar a divida e subtraindo do comprovante apresentado pelo cliente caso o resultado seja = 0 quite o valor caso contrario informe o novo valor da divida.


## 2) Na classe responsavel por realizar o envio de email é a SendGridEmail em seus métodos há uma validação utilizando o check_blacklist que verifica o banco de dados history_emails_blacklist em busca do email caso seja encontrado ele retorna true e não autoriza o envio.  

## 3) Para a resolução dessa questão caso não haja uma funcionalidade implementada que execute essa tarefa, será nescessario executar a solução manual:
### Deletar registros incosistentes do banco 'crmerp_legacy_company_1'
- DELETE  FROM crmerp_legacy_company_1.clientes  WHERE id = 3;
### Inserir os dados corretos do cliente no banco 'crmerp_legacy_company_2' referenciando o id de projeto correto onde o id =32
- INSERT INTO crmerp_legacy_company_2.clientes VALUES ((select max(id)+1 from crmerp_legacy_company_2.clientes), '3', 32, 'Carla Méres', NULL, NULL, NULL, '1988-09-19', NULL, 'PE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'carla.meres@legacy.com.br', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, 68, 1, '2019-12-13 19:51:20', '1', NULL, NULL, NULL, NULL, '2019-12-13 19:47:34', '2022-01-18 14:19:06');


## 4 ) Criação de diferentes Filtros que podem ser combinados:
- Data(datacreate)
- Usuario(user_id)
- Rota(action)
- Campo de busca(verifica se contém em todas as colulas)
´´
select * from logs where
action like '%'||:action||'%'
and user_id like '%'||:user_id||'%'
and datacreate between :datainit and :datafim
´´
## 5) A gravação de sessão via session é funcional em aplicações com o frontend integrado ao backend, entretanto nas aplicações utilizando implementações onde o frontend não é integrado ao backend para atender ao padrão restfull com alguma tecnologia como JWT ou similares 

## 6) A solicitação de ter uma mensagem de texto (SMS) enviada para o vendedor responsável toda vez que for realizado  um novo cadastrado no CRM pode ser útil, desde que seja planejada corretamente. Após entender a necessidade e desenvolver um plano de ação para que possa ser possivel entender os custos envolvidos no projeto que seguirá para aprovação. Deveremos ter um sistema de SMS integrado ao CRM para enviar as mensagens automaticamente, porém devemos proteger as informações dos clientes e vendedores. Também deve haver possibilidade de personalização da mensagem de texto para cada vendedor responsável. Além disso, precisamos avaliar se a mensagem de texto não será excessiva e confusa para os vendedores. Portanto, antes de decidir se devemos implementar essa funcionalidade, precisamos avaliar cuidadosamente tudo para ter certeza de que será útil e eficiente para todos.
## Bonus) 
- Conforme citado no desafio, o cliente pode ser uma pessoa que faz parte de um projeto ou o proprio projeto, O campo que faz essa refenrencia é o id_projeto, se esse campo for null o cliente não referencia nenhum outro projeto sendo assim 1:1,
a partir do momento que esse projeto for referenciado em outra linha passa a ser 1:n.

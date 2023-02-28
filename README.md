### Teste de desenvolvimento Workfacilit 2023.1

Fala dev, beleza? Para realizar o teste, recomendamos um **clone** desse repositório para sua conta e no final, disponibilizar o link para visualização. 

É necessário que você como candidato e desenvolvedor, escreva um **README** com toda a informação necessária para a resolução dos problemas e dos questionamentos propostos.

Obs: Não se esqueça  de fazer um PR das suas implementações para a sua versão do repositório.

**Mensagem do CEO da USS Legacy Enterprise**:

```
Alô devs! 

Acabamos de aprovar o orçamento final para o desenvolvimento da nova versão do nosso Enterprise CRM/ERP!
Mas para esse desenvolvimento acontecer, devemos manter em ordem o que já está funcionando e sendo usado em seu completo potencial por toda a empresa. 
E para isso, precisamos de alguém capacitado e dedicado para manter em bom funcionamento, a versão atual do nosso CRM/ERP, nosso Legacy Enterprise CRM/ERP.

```

**Mensagem do Tech Lead do seu squad**:
```
Hey bro! 

Dentro do diretório "assets/databases" consta os arquivos de criação das bases do Legacy Enterprise CRM/ERP.

Essa estrutura de bases e tabelas foi criada há muito tempo, de forma que existe uma base mãe centralizada, 
onde existem diversas informações em comum entre todas as empresas que utilizam o Legacy Enterprise. Sim, o Legacy Enterprise é multiempresas. 
Um exemplo de centralização são os usuários. O mesmo usuário ABC na empresa Company 1 é o mesmo usuário na Company 2.
Já as insituições de ensino, os clientes, os contratos dos clientes, cada empresa tem suas informações de forma descentralizada.

Não se esqueça de ler atentamente os problemas descritos, regras e definições que foram solicitadas!

Go to the moon! 🚀
```


### Fluxo de manutenção e suporte do Legacy Enterprise CRM/ERP
- __Situação 1__: o Legacy Enterprise possui integrações com intermediadoras de pagamento. O cliente **Edinaldo Carvalho** da Company I de evento do dia 14/01/2023, um casamento, alega que pagou a cobrança que estava em aberto em sua grade financeira (extrato) e enviou o comprovante para conferência. Tendo em vista que a resposta e análise do banco e da intermediadora podem demorar e que o evento do cliente se aproxima, qual seria a sua proposta de resolução para esse caso?

- __Situação 2__: a formanda **raphaella9@gmail.com** não está mais recebendo os e-mails disparados pelo nosso Legacy Enterprise. Qual seria o motivo e por que isso aconteceu?

- __Situação 3__: a formanda **Carla Méres** foi cadastrada erroneamente na **Turma do Legacy** da **Company 1**. Ela pertente ao projeto da **Turma da Enterprise** da empresa **Company 2**. De forma lógica, qual a forma de alocarmos a formanda no projeto correto? Consegue nos dizer como podemos ajustar o acesso dela ao Portal do Cliente de forma que não fique referenciando ao projeto antigo?

- __Situação 4__: com base na tabela de logs do Legacy Enterprise, qual seria a sua proposta de relatório para que nossas analistas performem uma primeira análise diretamente pelo sistema antes de chegar em nossos técnicos? Quais filtros seriam interessantes para disponibilizar nesse relatório? Consegue desenvolver esboçar uma query base pra gente? (pode ser um esboço)

- __Situação 5__: olhando nossa biblioteca de autenticação, o que poderia ser melhorado na autenticação dos usuários?

- __Situação 6__: um dos nossos usuários (colaborador), solicitou uma feature onde toda vez que um lead é cadastrado no CRM, seja disparado um SMS para o vendedor responsável. Como analisa a solicitação?

- __Bônus__: olhando para a tabela **clientes**, consegue nos dizer como diferenciar um projeto "1-1" de um projeto "1-n"?


### Regras, validações e informações
- todos os clientes ao se tornarem um projeto, tem acesso ao Portal do Cliente; seus respectivos usuários são salvos na tabela **users_portaldocliente**;
- existem o que chamamos projeto 1-1, onde o projeto é o próprio cliente; (casamento, 15 anos e afins);
- existem o que chamamos projeto 1-n, onde um projeto, pode ter "n" clientes;
- contamos com um sistema de blacklist interno;
- não há resposta 100% correta para todas as situações, fique tranquilo!


### O que será analisado
- Raciocínio lógico
    - Capacidade de entendimento e análise de um problema
    - Soluções propostas
    - Entendimento das situações
- Versionamento
    - Entendimento básico do Git


### Ficaremos felizes se você 🙂
- propor soluções e caminhos inteligentes
- solucionar os problemas descritos onde sua maioria é resolvido com raciocínio lógico


### Você poderá...
- Enviar todas as suas respostas, soluções e considerações em um .md
- Tirar eventuais duvidas conosco a qualquer momento

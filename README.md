SALON APPOINTMENT SCHEDULER (FREECODECAMP)
RELATIONAL DATABASE COURSE

STEP BY STEP (languages: English/Portuguese)

✔️ You should have at least three rows in your services table for the different services you offer, one with a service_id of 1

VOCÊ DEVE TER AO MENOS 3 LINHAS EM SUA TABELA "SERVICES" PARA DIFERENTES SERVIÇOS QUE VOCÊ OFEREÇA, UM COM UM SERVICE_ID IGUAL A 1.

✔️ You should create a script file named salon.sh in the project folder

VOCÊ DEVE CRIAR UM ARQUIVO SCRIPT CHAMADO SALON.SH => touch salon.sh

✔️ Your script file should have a “shebang” that uses bash when the file is executed (use #! /bin/bash)

VOCÊ DEVE COLOCAR SHEBANG NO ARQUIVO SCRIPT, NO TOPO DO ARQUIVO

✔️ Your script file should have executable permissions

 Para executar permissões de edição, escrever no terminal (Bash): chmod +x salon.sh

✔️ You should not use the clear command in your script

##### You should display a numbered list of the services you offer before the first prompt for input, each with the format #) . For example, 1) cut, where 1 is the service_id

VOCÊ DEVE MOSTRAR UMA LISTA NUMERADA DE SERVIÇOS OFERECIDOS ANTES DO PRIMEIRO PROMPT INPUT, CADA ITEM ESCRITO ASSIM:

1) cut

SENDO 1 O ID DO SERVIÇO "CUT"

##### If you pick a service that doesn't exist, you should be shown the same list of services again

SE VOCÊ ESCOLHER UM SERVIÇO QUE NÃO EXISTE, DEVE SER MOSTRADA NOVAMENTE A LISTA DE SERVIÇOS OFERECIDOS

✔️ Your script should prompt users to enter a service_id, phone number, a name if they aren’t already a customer, and a time. You should use read to read these inputs into variables named SERVICE_ID_SELECTED, CUSTOMER_PHONE, CUSTOMER_NAME, and SERVICE_TIME

O SCRIPT DEVE FAZER COM QUE O PROMPT ENTRE (ATRAVÉS DAS ESCRITAS DO CONSUMIDOR) O ID DO SERVIÇO ALMEJADO, O NÚMERO DE TELEFONE DO CONSUMIDOR, NOME DO CONSUMIDOR — CASO NÃO SEJA CLIENTE — E HORÁRIO DE ESCOLHA PARA O SERVIÇO:
read SERVICE_ID_SELECTED
read CUSTOMER_PHONE
read CUSTOMER_NAME
read SERVICE_TIME

✔️ If a phone number entered doesn’t exist, you should get the customers name and enter it, and the phone number, into the customers table

SE O NÚMERO DE TELEFONE ESCRITO PELA PESSOA NÃO ESTÁ CADASTRADO NO SISTEMA, VOCÊ DEVE PEGAR O NOME DO CONSUMIDOR E O NÚMERO DE TELEFONE PARA A TABELA CHAMADA "CUSTOMERS"

✔️ You can create a row in the appointments table by running your script and entering 1, 555-555-5555, Fabio, 10:30 at each request for input if that phone number isn’t in the customers table. The row should have the customer_id for that customer, and the service_id for the service entered

VOCÊ PODE CRIAR UMA LINHA NA TABELA "APPOINTMENTS" VIA SCRIPT:
ID 1
TELEFONE 555-555-5555
NOME FABIO
HORA 10:30

A CADA PEDIDO SE AQUELE NÚMERO DE TELEFONE NÃO ESTÁ CADASTRADO NA TABELA "CUSTOMERS". A LINHA DEVE TER CUSTOMER_ID PARA AQUELE CONSUMIDOR, E O SERVICE_ID PARA O SERVIÇO ALMEJADO.

✔️ You can create another row in the appointments table by running your script and entering 2, 555-555-5555, 11am at each request for input if that phone number is already in the customers table. The row should have the customer_id for that customer, and the service_id for the service entered

✔️ After an appointment is successfully added, you should output the message I have put you down for a at , . For example, if the user chooses cut as the service, 10:30 is entered for the time, and their name is Fabio in the database the output would be I have put you down for a cut at 10:30, Fabio. Make sure your script finishes running after completing any of the tasks above, or else the tests won't pass



..........................................................................................

// Here are two examples of the output of a passing script:

~~~~~ MY SALON ~~~~~

Welcome to My Salon, how can I help you?

1) cut
2) color
3) perm
4) style
5) trim
10

I could not find that service. What would you like today?
1) cut
2) color
3) perm
4) style
5) trim
1

What's your phone number?
555-555-5555

I don't have a record for that phone number, what's your name?
Fabio

What time would you like your cut, Fabio?
10:30

I have put you down for a cut at 10:30, Fabio.


// Next example:

~~~~~ MY SALON ~~~~~

Welcome to My Salon, how can I help you?

1) cut
2) color
3) perm
4) style
5) trim
2

What's your phone number?
555-555-5555

What time would you like your color, Fabio?
11am

I have put you down for a color at 11am, Fabio.

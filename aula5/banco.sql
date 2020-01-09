    -- entrar no mysql
mysql  -u root

    -- criar banco de dados
creat database aula5;

    -- visualizar o banco de dados criado
show databases;

    -- conectar um banco em específico
use aula5;

    -- criar tabela para receber o dados da tela 
create table cliente(
    idcliente int PRIMARY KEY AUTO_INCREMENT,
	nome varchar (30),
	email varchar (30),
	idade int,
	estadocivil varchar(20)
);


	
	
http://localhost/aula5/gravar.php
localhost

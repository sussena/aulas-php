mysql -u root 

-- comando para pagar base de dados
drop database aula2;

-- comando para criar base de dados
create database aula2;

-- conectar a base de dados aula2
use aula2;

-- criar tabela
create table aluno(
    idaluno int primary key auto_increment,
    nome varchar(30) not null,
	idade int not null,
	sexo enum('M','F') not null,
	email varchar(30)

);

-- Visualizar as tabelas existentes
   show tables;
   
create table endereco(
    idendereco int primary key auto_increment,
	bairro varchar(30) not null,
    cidade enum('RJ','SP','MG') not null,
    id_aluno int unique,	
	foreign key(id_aluno) references aluno(idaluno)
	
);

create table telefone(
    idtelefone int primary key auto_increment,
	tipo enum('cel','res','com') not null,
	numero varchar(10) not null,
    id_aluno int,	
	foreign key(id_aluno) references aluno(idaluno)
	
);


/*INSERIR DADOS*/

insert into aluno values
(null,'joao',43,'M', 'joao@ig.com');
insert into aluno values
(null,'celia',34,'F', 'celia@ig.com');
insert into aluno values
(null,'carlos',35,'M', 'carlos@ig.com');
insert into aluno values
(null,'andre',27,'M', 'andre@ig.com');
insert into aluno values
(null,'julia',19,'F', 'julia@ig.com');
insert into aluno values
(null,'jorge',21,'M', 'jorge@ig.com');

-- Selecionar o nome e o email dos alunos
select * from aluno;
select nome, email from aluno;

-- trazer a quantidade de alunos pro sexo masculino 
-- e feminino
select count(*) as "quatidade", sexo from aluno group by sexo;

-- decrição da tabela 
desc aluno;

/*TRAZER OS ALUNO COM EMAIL DA IG*/
select nome, email from aluno where email like '%ig%'; 

/*TRAZER TODOS OS ALUNOS DO SEXO MASCULINO COM O EMAIL IG*/
select nome, email from aluno where email like '%ig%' and sexo ='M';

/* INSERIR DADOS NA TABELA TELEFONE*/
insert into telefone values 
(null, 'cel', '9999-1111',1);
insert into telefone values 
(null, 'com', '2222-1111',1);
insert into telefone values 
(null, 'res', '3333-1111',1);
insert into telefone values 
(null, 'cel', '9999-2222',2);
insert into telefone values 
(null, 'res', '3333-3333',3);
insert into telefone values 
(null, 'cel', '9999-4444',4);
insert into telefone values 
(null, 'res', '3333-4444',4);
insert into telefone values 
(null, 'cel', '9999-5555',5);

/*nome, email e telefone dos alunos*/
select nome, email, numero
from aluno
inner join telefone
on idaluno = id_aluno;

/*nome e telefone dos alunos do sexo feminino*/
select nome, tipo, numero
from aluno
inner join telefone
on idaluno = id_aluno
where sexo = 'F';


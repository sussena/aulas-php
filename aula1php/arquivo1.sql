-- criar tabela em banco de dados
create table aluno(
   matricula int,
   nome varchar(40),
   idade int,
   sexo enum('M','F'),
   email varchar(30)
   
   
   );
   
   -- Visualizar as tabelmas existentes
   show tables;
   
   -- entrar com dados na tabela aluno
   insert into aluno values (100,'adrielle',15,'F','adrielle@yahoo.com.br');
   insert into aluno values (200,'alexsandro',20,'M','alexsandro@yahoo.com.br');
   
   select * from aluno;
   
   select * from aluno where matricula = 100;
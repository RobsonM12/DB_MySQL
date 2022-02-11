-- Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
-- informações dos estudantes deste registro dessa escola.
-- Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
-- relevantes dos estudantes para se trabalhar com o serviço dessa escola.

create database db_escola;

use db_escola;

create table db_escola(
id bigint auto_increment,
Nome varchar(255) not null,
Curso varchar(255) not null,
Turma varchar(255) not null,
Nota decimal(3,2),
Semestre varchar(255) not null,
primary key(id)
);

-- declarei Nota como decimal 3,2 para testar se aceitaria 10.0 porem estava dando erro ai tive que alterar.
alter table db_escola modify Nota decimal (8,2);

insert into db_escola (Nome,Curso,Turma,Nota,Semestre) 
values("João","Administração","Turma-B",9.5,"Primeiro");
insert into db_escola (Nome,Curso,Turma,Nota,Semestre) 
values("Jorge","Administração","Turma-B",2.5,"Primeiro");
insert into db_escola (Nome,Curso,Turma,Nota,Semestre) 
values("Juliana","Administração","Turma-A",10.0,"Primeiro");
insert into db_escola (Nome,Curso,Turma,Nota,Semestre) 
values("Bruna","Logística","Turma-B",7.0,"Primeiro");
insert into db_escola (Nome,Curso,Turma,Nota,Semestre) 
values("Carla","Logística","Turma-A",7.0,"Primeiro");
insert into db_escola (Nome,Curso,Turma,Nota,Semestre) 
values("Maria","Administração","Turma-B",6.5,"Primeiro");
insert into db_escola (Nome,Curso,Turma,Nota,Semestre) 
values("Kleber","Logística","Turma-A",5.5,"Primeiro");
insert into db_escola (Nome,Curso,Turma,Nota,Semestre) 
values("Antonio","Administração","Turma-B",8.2,"Primeiro");

select * from db_escola;

-- Faça um select que retorne o/as estudantes com a nota maior do que 7.
select * from db_escola where Nota >7.0;

-- Faça um select que retorne o/as estudantes com a nota menor do que 7.
select * from db_escola where Nota <7.0;

-- Ao término atualize um dado desta tabela através de uma query de atualização.
update db_escola set Nota = 7.0 where id = 6;
select * from db_escola;
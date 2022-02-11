-- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
-- trabalhará com as informações dos funcionaries desta empresa.
-- Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
-- atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.

create database db_rh;

use db_rh;

create table db_rh(
id bigint auto_increment,
nome varchar(255) not null,
RG int,
CPF bigint,
Cargo varchar(250) not null,
Salario decimal,
primary key(id)
);
-- iniciei a tabela com o valor de CPF em int ai tive que alterar utilizando o codigo abaixo.
-- alter table db_rh modify CPF bigint;
insert into db_rh (nome,RG,CPF,Cargo,Salario) 
values("João",999999999,99999999999,"Gerente",3500.00);
insert into db_rh (nome,RG,CPF,Cargo,Salario) 
values("Vitor",999999999,99999999999,"Caixa",1500);
insert into db_rh (nome,RG,CPF,Cargo,Salario) 
values("Juliana",999999999,99999999999,"vendedor",2500.00);
insert into db_rh (nome,RG,CPF,Cargo,Salario) 
values("Gecica",999999999,99999999999,"vendedor",2250.00);
insert into db_rh (nome,RG,CPF,Cargo,Salario) 
values("Bruno",999999999,99999999999,"vendedor",1900.00);

select * from db_rh;

-- Faça um select que retorne os funcionaries com o salário maior do que 2000.
select * from db_rh where Salario >2000;

-- Faça um select que retorne os funcionaries com o salário menor do que 2000.
select * from db_rh where Salario <2000;

-- Ao término atualize um dado desta tabela através de uma query de atualização.
update db_rh set CPF = "11111111111" where id = 1;
select * from db_rh;

-- Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
-- informações dos produtos deste ecommerce.
-- Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
-- relevantes dos produtos para se trabalhar com o serviço deste ecommerce.

create database db_loja_de_tenis;

use db_loja_de_tenis;

create table db_loja_de_tenis(
id bigint auto_increment,
nome varchar(255) not null,
cor varchar(200),
preco decimal,
primary key(id)
);

insert into  db_loja_de_tenis(nome,cor,preco) 
values("Sapato Masculino Derby Heiton","Damasco",580);
insert into  db_loja_de_tenis(nome,cor,preco) 
values("Sapato Vegas Alth","Topazio",300);
insert into  db_loja_de_tenis(nome,cor,preco) 
values("Sapato Social Masculino Cadarço Liso","Preto",100);
insert into  db_loja_de_tenis(nome,cor,preco) 
values("Sapato Social Oxford Bulle","Preto",630);
insert into  db_loja_de_tenis(nome,cor,preco) 
values("Sapato Masculino Derby - Wincherster","Café",530);
insert into  db_loja_de_tenis(nome,cor,preco) 
values("Sapato Casual Manutt","Preto",319);
insert into  db_loja_de_tenis(nome,cor,preco) 
values("Sapato Social camurça e verniz","vermelho",60);
insert into  db_loja_de_tenis(nome,cor,preco) 
values("Sapato Masculino Cano Medio","Preto",120);

-- para exibir a tabela
select * from db_loja_de_tenis;

-- Faça um select que retorne os produtos com o valor maior do que 500.
select * from db_loja_de_tenis where preco >500;

-- Faça um select que retorne os produtos com o valor menor do que 500.
select * from db_loja_de_tenis where preco <500;

-- Ao término atualize um dado desta tabela através de uma query de atualização.
update db_loja_de_tenis set cor = "Azul" where id = 6;
select * from db_loja_de_tenis;
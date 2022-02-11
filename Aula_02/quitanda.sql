-- Criando banco de dados db 
create database db_quitanda;

use db_quitanda;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
preco decimal,
primary key(id)
);

insert into tb_produtos (nome,quantidade,preco) 
values("Maçã",10,1.99);
insert into tb_produtos (nome,quantidade,preco) 
values("Banana",13,4.99);
insert into tb_produtos (nome,quantidade,preco) 
values("Manga",20,5.49);
insert into tb_produtos (nome,quantidade,preco) 
values("Melancia",3,10.00);
insert into tb_produtos (nome,quantidade,preco) 
values("Cebola",100,1.50);

-- para exibir a tabela 
select * from tb_produtos; -- posso buscar colunas especificas colocando o where e nome da coluna , para caso seja mais de uma
-- usando select * from pode ser feit tambem a seleçã para se exebir todos os preços >1.99 por exemplo para buscar
--  produtos com valores mais de 1.99.

-- serve para alterar algum parametro do db  tabela
-- para fazer atualizações de valores da tabela.
update tb_produtos set preco = 1.99 where id = 1;
-- para deletar um valor da tabela
delete from tb_produtos where id=7;
-- delete sem where deleta toda a tabela

update tb_produtos set nome = Maçã where id=1;

-- caso você delete um valor e insira um novo a tabela ira gerar um valor novo
insert into tb_produtos (nome,quantidade,preco) 
values("Maçã",10,1.99);

-- se nao usar o where vai estragar a tabela pois não esta dando o
-- local exato para a sua atualização e ira mudar toda a tabela.
update  tb_produtos set descricao = "Banana Ouro";

alter table tb_produtos modify preco decimal(8,2); -- 000000.00

alter table tb_produtos add descricao varchar (255);

-- drop e para remover uma coluna inteira da tabela
alter table tb_produtos drop descricao;

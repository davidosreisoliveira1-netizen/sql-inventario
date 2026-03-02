create database inventario
charset utf8;

use inventario;

create table produtos(
id int primary key not null auto_increment,
nome varchar(30) not null,
descricao varchar(60) not null
);

create table locais(
id_locais int primary key not null,
nome_locais varchar(30) not null
);

alter table produtos 
change column id id_produtos int  not null auto_increment;

desc produtos;

alter table produtos 
add column locais int;

alter table produtos 
add foreign key(locais)
references locais(id_locais);

insert into locais values(5,'bancada frente');

select * from locais;


alter table produtos 
add column quantidade int
after descricao;

insert into produtos values(default,'computadores','bancada lateral',6,4);

select nome,descricao,quantidade,locais.id_locais,locais.nome_locais from produtos join locais
where locais.id_locais = 2;select * from locais;select * from locais;
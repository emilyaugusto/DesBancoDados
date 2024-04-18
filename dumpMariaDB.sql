create table produto(
 id_prod int not null primary key auto_increment,
 nome varchar (100) not null,
 preco decimal (10,2) not null,
 categoria varchar(40) not null,
 estoque int not null,
 dt_criacao date);
 
insert into produto (nome, preco, categoria,estoque) values ('HD Ssd 480gb',309.50,'ssd',10);
insert into produto (nome, preco, categoria,estoque) values ('HD Ssd 240gb',188.00,'ssd',15);
insert into produto (nome, preco, categoria,estoque, dt_criacao) values ('HD Ssd 100gb',135.00,'ssd',20,'2023-10-26');
insert into produto (nome, preco, categoria,estoque, dt_criacao) values ('Pen Drive 32GB',24.90,'pendrive',50,'2023-10-27');
insert into produto (no|\\me, preco, categoria,estoque, dt_criacao) values ('Pen Drive 128GB',109.53,'pendrive',50,'2023-10-27');
insert into produto (nome, preco, categoria,estoque, dt_criacao) values ('Mouse Gamer 12.000 DPI ',159.99,'mouse',7,'2023-10-28');
insert into produto (nome, preco, categoria,estoque, dt_criacao) values ('Mouse Gamer Pro M7 Rgb ',51.24 ,'mouse',9,'2023-10-28');
insert into produto (nome, preco, categoria,estoque, dt_criacao) values ('Teclado Semi Mecânico Gamer Profissional USB Abnt2 Iluminado Led Rgb',41.90 ,'teclado',12,'2023-10-29');
insert into produto (nome, preco, categoria,estoque, dt_criacao) values ('Teclado Gamer Cyclosa + Mouse Gamer Abyssus 1.800 DPI',123.67 ,'teclado',4,'2023-10-29');
insert into produto (nome, preco, categoria,estoque, dt_criacao) values ('Fone De Ouvido Headset Gamer P2 Para Ps4 Xbox One Notebook Macbook Com Microfone',79.29 ,'fone',25,'2023-10-29'); 

/* selecionar o nome e categoria da tabela produto, ordenado pelo nome de forma decrescente*/
select nome, categoria 
from produto 
order by nome desc;

/*Alias (apelido) para tabela */
SELECT coluna1, coluna2
FROM nome_da_tabela AS alias_da_tabela
WHERE condição;

/*Alias (apelido) para coluna */
SELECT coluna1 AS apelido, coluna2 AS "apelido complexo"
FROM nome_da_tabela
WHERE condição;


/* Selecione o nome, preco, categoria e dt_criacao dos produtos cadastrados no dia 29/10/2023.*/
select 
nome, preco, categoria, dt_criacao 
from produto 
where dt_criacao='2023-10-29';


/*perador utilizado para verificar faixa de valores, entre dois valores, incluindo os valores da faixa. */
where campo between valor1 and valor2


/* Selecione todos os produtos que tenham id_prod fora da faixa entre 3 e 7.*/
select * from produto
where id_prod between 3 and 7;


/* Seleciona os id_prod 3, 5 e 7*/
SELECT * 
FROM produto
WHERE id_prod in ('3','5','7');


/* Selecionatodosos produtos que começa com a letra M*/
select * from produto
where nome like 'M%'

/* Selecionatodosos produtos que termina  com a letra E*/
select * from produto
where categoria like 'E%'


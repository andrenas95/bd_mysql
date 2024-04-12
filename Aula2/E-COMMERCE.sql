create database e_commerce;

use e_commerce;

create table tb_produtos(
id bigint auto_increment,
nome_do_produto varchar(255) not null,
entrada_do_produto date,
tipo varchar(255) not null,
descricao varchar(255) not null,
valor decimal(8,2), 
primary key(id)
);

select * from tb_produtos;

INSERT INTO tb_produtos (nome_do_produto, entrada_do_produto, tipo, descricao, valor)
VALUES ("IPHONE X", "2024-03-07", "SMARTPHONE", "FULL HD, TELA RETINA", 500);

INSERT INTO tb_produtos (nome_do_produto, entrada_do_produto, tipo, descricao, valor)
VALUES ("SAMSUNG", "2024-03-07", "SMARTPHONE", "FULL HD, TELA RETINA", 400);

INSERT INTO tb_produtos (nome_do_produto, entrada_do_produto, tipo, descricao, valor)
VALUES ("SONY", "2024-03-07", "SMARTPHONE", "FULL HD, TELA RETINA", 490);

INSERT INTO tb_produtos (nome_do_produto, entrada_do_produto, tipo, descricao, valor)
VALUES ("LG", "2024-03-07", "SMARTPHONE", "FULL HD, TELA RETINA", 400);

INSERT INTO tb_produtos (nome_do_produto, entrada_do_produto, tipo, descricao, valor)
VALUES ("IPHONE 11", "2024-03-07", "SMARTPHONE", "FULL HD, TELA RETINA", 2000.00);

INSERT INTO tb_produtos (nome_do_produto, entrada_do_produto, tipo, descricao, valor)
VALUES ("IPHONE 12", "2024-03-07", "SMARTPHONE", "FULL HD, TELA RETINA", 3000.00);

INSERT INTO tb_produtos (nome_do_produto, entrada_do_produto, tipo, descricao, valor)
VALUES ("IPHONE 13", "2024-03-07", "SMARTPHONE", "FULL HD, TELA RETINA", 4000.00);

INSERT INTO tb_produtos (nome_do_produto, entrada_do_produto, tipo, descricao, valor)
VALUES ("IPHONE 14", "2024-03-07", "SMARTPHONE", "FULL HD, TELA RETINA", 5000);
     
       
       
select * from tb_produtos;
select * from tb_produtos where valor > 500;
select * from tb_produtos where valor < 500;

UPDATE tb_produtos SET valor = 1000.00 WHERE id = 4;




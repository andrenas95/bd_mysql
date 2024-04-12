create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
id bigint auto_increment,
categoria varchar (255) not null,
alcance_de_ataque varchar(255) not null,
primary key(id)
);

create table tb_personagens(
id bigint auto_increment,
Personagem varchar(255) not null,
Ataques varchar(255) not null,
Poder_de_Ataque decimal (8,2),
Defesa varchar(255) not null,
Poder_de_Defesa decimal (8,2),
Descricao varchar(255) not null,
categoria_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY (categoria_id) REFERENCES tb_classes(id)
);

ALTER TABLE tb_personagens ADD id_classes BIGINT;

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

-- CLASSES
INSERT INTO tb_classes (categoria, Alcance_de_ataque)
VALUES ("CORAJOSOS",  "ALTO");
INSERT INTO tb_classes (categoria, Alcance_de_ataque)
VALUES ("GUERREIROS",  "MÉDIO");
INSERT INTO tb_classes (categoria, Alcance_de_ataque)
VALUES ("INIMIGOS",  "BAIXO");
INSERT INTO tb_classes (categoria, Alcance_de_ataque)
VALUES ("BRUXOS",  "MÉDIO-BAIXO");
INSERT INTO tb_classes (categoria, Alcance_de_ataque)
VALUES ("JUSTICEIRO",  "MÉDIO");

INSERT INTO tb_personagens  (Personagem, Ataques, Poder_de_Ataque, Defesa, Poder_de_Defesa, Descricao, categoria_id)
VALUES ("Guerreiro", "Espada", 2000, "Escudo Azul", 2000, "são conhecidos pela força e resistência.", 2);

INSERT INTO tb_personagens  (Personagem, Ataques, Poder_de_Ataque, Defesa, Poder_de_Defesa, Descricao, categoria_id)
VALUES ("Mago", "Poderes de Magia", 8000, "Invisibilidade", 1500, "Pouca Resistencia, lançamento de magia, poder de cura", 4);

INSERT INTO tb_personagens  (Personagem, Ataques, Poder_de_Ataque, Defesa, Poder_de_Defesa, Descricao, categoria_id)
VALUES ("Clérigo", "Curas e restauração", 10000, "Domínio de magias", 6000, "Curar Ferimentos, Criar Proteções Pacientes e estratégicos.", 1);

INSERT INTO tb_personagens  (Personagem, Ataques, Poder_de_Ataque, Defesa, Poder_de_Defesa, Descricao, categoria_id)
VALUES ("Ladrão", "Adagas ou Arcos", 1000, "Escudo Amarelo", 1800, "habilidades furtivas, roubos sem detecção, criar armadilhas, mover de forma silenciosa.", 3);

INSERT INTO tb_personagens  (Personagem, Ataques, Poder_de_Ataque, Defesa, Poder_de_Defesa, Descricao, categoria_id)
VALUES ("Arqueiro", "Besta", 5000, "Armaduras", 2000, "Combate a distancia, armaduras leves ataques complexos.", 1);

INSERT INTO tb_personagens  (Personagem, Ataques, Poder_de_Ataque, Defesa, Poder_de_Defesa, Descricao, categoria_id)
VALUES ("Bardo", "Persuasão", 5000, "Faca", 2000, "Posseuem Lábia, Contadores de História.", 3);

INSERT INTO tb_personagens  (Personagem, Ataques, Poder_de_Ataque, Defesa, Poder_de_Defesa, Descricao, categoria_id)
VALUES ("Paladino", "Espada Vermelha de Raio", 8000, "Armadura Pesada", 6000, "Justiceiros, Armaduras Pesadas, Combate a distancia, manipula os Feitiços", 5);

INSERT INTO tb_personagens  (Personagem, Ataques, Poder_de_Ataque, Defesa, Poder_de_Defesa, Descricao, categoria_id)
VALUES ("Necromante", "Magia Branca", 15000, "Armaduras", 2000, "Dominam magia negra, invocam zumbis.", 4);

-- Retorne todos os personagens cuja o poder de ataque sejam maior que 2000
select * from tb_personagens;
select * from tb_personagens where Poder_de_Ataque > 2000;

-- Retorne todos os personagens cuja o poder de defesa esteja no intervalo entre 1000 e 2000
select * from tb_personagens where Poder_de_Defesa between 1000 AND 2000;  

-- utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.

SELECT * FROM tb_personagens WHERE personagem  LIKE  "c%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
-- INNER JOIN
SELECT Personagem, Ataques, Poder_de_Ataque, Defesa, Poder_de_Defesa, Descricao, tb_classes.categoria
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.categoria_id = tb_classes.id; 

-- utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes,
-- onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).

SELECT Personagem, tb_classes.categoria
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.categoria_id = tb_classes.id
WHERE tb_classes.categoria = 'corajosos'
OR tb_classes.categoria = 'bruxos'




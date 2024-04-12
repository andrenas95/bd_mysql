create database db_curso_da_minha_vida;

use db_generation_game_online;

create table tb_categoria(
id bigint auto_increment,
categoria varchar (255) not null,
primary key(id)
);

create table tb_cursos(
id bigint auto_increment,
Nome_do_Curso varchar(255) not null,
Descricao varchar(255) not null,
Duracao varchar(255) not null,
Valor decimal (8,2),
categoria_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

ALTER TABLE tb_personagens ADD id_classes BIGINT;

SELECT * FROM tb_categoria;
SELECT * FROM tb_cursos;

-- CLASSES
INSERT INTO tb_categoria (categoria)
VALUES ("IDIOMAS");
INSERT INTO tb_categoria (categoria)
VALUES ("TECNOLOGIA");
INSERT INTO tb_categoria (categoria)
VALUES ("ARTES");
INSERT INTO tb_categoria (categoria)
VALUES ("SAÚDE");
INSERT INTO tb_categoria (categoria)
VALUES ("EXATAS");

INSERT INTO tb_cursos (Nome_do_Curso, Descricao, Duracao, Valor, categoria_id)
VALUES ("Ingês", "Seja fluente em inglês — Nós te ajudamos a entender o Inglês", "2 anos" , 1000.00, 1);

INSERT INTO tb_cursos (Nome_do_Curso, Descricao, Duracao, Valor, categoria_id)
VALUES ("Espanhol", "Aprenda espanhol Descubra as vantagens de aprender um novo idioma", "2 anos", 1000.00, 1);

INSERT INTO tb_cursos (Nome_do_Curso, Descricao, Duracao, Valor, categoria_id)
VALUES ("Java e Python", "Desenvolvedor Back-end, Dispomos de cursos online, programas presenciais e híbridos de graduação e especialização", "2 anos", 3000.00, 2);

INSERT INTO tb_cursos (Nome_do_Curso, Descricao, Duracao, Valor, categoria_id)
VALUES ("Fotografia", "aprender técnicas básicas de fotografia usando câmeras fotográficas profissionais, acessórios e equipamentos", "8 meses", 500.00, 3);

INSERT INTO tb_cursos (Nome_do_Curso, Descricao, Duracao, Valor, categoria_id)
VALUES ("Artes & Teatro", "O curso de Artes Cênicas forma profissionais habilitados para trabalhar na produção de espetáculos teatrais, filmes e programas de televisão, atuando na direção", "3 anos", 4000.00, 3);

INSERT INTO tb_cursos (Nome_do_Curso, Descricao, Duracao, Valor, categoria_id)
VALUES ("Enfermagem", "área da saúde que aborda práticas de assistência ao paciente", "2 anos", 3000.00, 4);

INSERT INTO tb_cursos (Nome_do_Curso, Descricao, Duracao, Valor, categoria_id)
VALUES ("Robótica", "Curso de robótica possui um caráter multidisciplinar, trabalhando com conteúdos de matemática, de física e de programação.", "1 ano", 2000.00, 2);

INSERT INTO tb_cursos (Nome_do_Curso, Descricao, Duracao, Valor, categoria_id)
VALUES ("Ciências Contabeis", "borda conceitos técnicos e estimula o desenvolvimento de habilidades práticas em contabilidade e finanças.", "4 anos", 3000.00, 5);

-- 6.	Faça um SELECT que retorne todes os cursos cujo valor seja maior do que R$ 500,00.
select * from tb_categoria;
select * from tb_cursos where Valor > 500;

-- Faça um SELECT que retorne todes os cursos cujo valor esteja no intervalo R$ 600,00 e R$ 1000,00.
select * from tb_cursos where Valor between 600 AND 1000;  

-- Faça um SELECT utilizando o operador LIKE, buscando todes os cursos que possuam a letra J no atributo nome.

SELECT * FROM tb_cursos WHERE Nome_do_Curso  LIKE  "J%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
-- INNER JOIN
SELECT Nome_do_Curso, Descricao, Duracao, Valor, categoria_id, tb_categoria.categoria
FROM tb_cursos INNER JOIN tb_categoria
ON tb_cursos.categoria_id = tb_categoria.id; 

-- utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes,
-- onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).

SELECT Nome_do_Curso, tb_categoria.categoria
FROM tb_cursos INNER JOIN tb_categoria
ON tb_cursos.categoria_id = tb_categoria.id
WHERE tb_categoria.categoria = 'ARTES'
OR tb_categoria.categoria = 'TECNOLOGIA';

SELECT Nome_do_Curso, tb_categoria.categoria
FROM tb_cursos INNER JOIN tb_categoria
ON tb_cursos.categoria_id = tb_categoria.id
WHERE tb_categoria.categoria = 'IDIOMAS'
OR tb_categoria.categoria = 'SAÚDE';

SELECT Nome_do_Curso, tb_categoria.categoria
FROM tb_cursos INNER JOIN tb_categoria
ON tb_cursos.categoria_id = tb_categoria.id
WHERE tb_categoria.categoria = 'EXATAS';


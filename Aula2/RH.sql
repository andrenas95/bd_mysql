create database RH;

use RH;
create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
data_admissao date,
função varchar(255) not null,
salario decimal(8,2), 
primary key(id)
);


select * from tb_funcionarios;

INSERT INTO tb_funcionarios( nome, data_admissao, função, salario)
VALUES ("André", "2024-03-07", "Programador", 3000.00), 
       ("Igor", "2023-05-10", "Desenvolvedor", 4000.00); 
    
    INSERT INTO tb_funcionarios( nome, data_admissao, função, salario)
VALUES ("Mariah", "2024-03-07", "Programador", 1800.00), 
       ("Michel", "2023-05-10", "Desenvolvedor", 1500.00);
       
select * from tb_funcionarios;
select * from tb_funcionarios where salario > 2000.00;
select * from tb_funcionarios where salario < 2000.00;

UPDATE tb_funcionarios SET salario = 10000.00 WHERE id = 4;



















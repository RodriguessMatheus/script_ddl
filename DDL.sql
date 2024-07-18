create database senai;

use senai;

create table tb_alunos (
id BINARY(16) NOT NULL, 
nome VARCHAR(255) NOT NULL, 
email VARCHAR(255) NOT NULL UNIQUE,
senha VARCHAR(255) NOT NULL,
endereco VARCHAR(255),
cep VARCHAR(10), 
PRIMARY KEY (id)
); 

drop table tb_alunos

create table tb_funcionarios (
id BINARY(16) NOT NULL,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(255) NOT NULL, 
salario DECIMAL(10,2) NOT NULL,
departamento VARCHAR(100) NOT NULL,
idade INT(3),
cpf VARCHAR(15) NOT NULL UNIQUE, 
PRIMARY KEY (id)
);
drop table tb_funcionarios



create table tb_curso (
id BINARY(16) NOT NULL, 
nome VARCHAR(255) NOT NULL,
disciplinas VARCHAR(255) NOT NULL, 
tempo_duracao INT(4) NOT NULL,
professor_responsavel VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);
drop table tb_curso


INSERT INTO tb_alunos VALUES(
UUID_TO_BIN(UUID()),
"matheus",
"matheuszz.mr1@gmail.com",
"@senha123",
"Rua venceslau pereira de souza",
"09851705"
);

INSERT INTO tb_alunos VALUES(
UUID_TO_BIN(UUID()),
"Travis scott",
"travis scott@gmail.com",
"@utopia123",
"houston the country",
"09851890"
);

INSERT INTO tb_funcionarios VALUES(
UUID_TO_BIN(UUID()),
"Joao vitor",
"Repositor de mortadela",
"120",
"Frios",
"15",
"31104825897"
);

INSERT INTO tb_funcionarios VALUES(
UUID_TO_BIN(UUID()),
"Geraldo",
"Pintor de Carro",
"987.50",
"Pintura Automotiva",
"42",
"36109825897"
);

INSERT INTO tb_curso VALUES(
UUID_TO_BIN(UUID()),
"Soluções em nuvem",
"Banco de dados",
"800",
"Jessica"
);

INSERT INTO tb_curso VALUES(
UUID_TO_BIN(UUID()),
"Desenvolvimento de sistema",
"Engenharia de software",
"870",
"Caique"
);

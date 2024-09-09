CREATE DATABASE IF NOT EXISTS db_lavacao;
USE db_lavacao;

CREATE TABLE IF NOT EXISTS marca(
   id int NOT NULL auto_increment,
   nome  varchar(50) NOT NULL,
   CONSTRAINT pk_marca
      PRIMARY KEY(id)
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS cor(
   id int NOT NULL auto_increment,
   nome varchar(50) NOT NULL,
   CONSTRAINT pk_cor
      PRIMARY KEY(id)
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS servico(
   id int NOT NULL auto_increment,
   descricao varchar(200),
   valor decimal(10,2) NOT NULL,
   pontos int,
   CONSTRAINT pk_servico
      PRIMARY KEY(id)
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS modelo(
 id int not null auto_increment,
 descricao varchar(50),
 id_marca int not null,
 CONSTRAINT pk_modelo
 FOREIGN KEY(id_marca) REFERENCES marca(id),
 CONSTRAINT pk_modelo_marca
 PRIMARY KEY(id)
);

INSERT INTO marca(nome) VALUES('Ford');
INSERT INTO marca(nome) VALUES('Ferrari');
INSERT INTO marca(nome) VALUES('Audi');
INSERT INTO marca(nome) VALUES('Fiat');

INSERT INTO cor(nome) VALUES('Azul');
INSERT INTO cor(nome) VALUES('Preto');
INSERT INTO cor(nome) VALUES('Branco');

INSERT INTO servico(descricao, valor, pontos) VALUES ('Lavação Completa', 70.0, 10);
INSERT INTO servico(descricao, valor, pontos) VALUES ('Polimento', 50.0, 10);
INSERT INTO servico(descricao, valor, pontos) VALUES ('Lavação Motor', 100.0, 10);
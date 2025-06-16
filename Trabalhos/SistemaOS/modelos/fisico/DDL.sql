-- DROP DATABASE ordens_servico;

SHOW DATABASES;

CREATE DATABASE ordens_servico;

USE ordens_servico;

SHOW TABLES;

/** CREATE TABLE **/

CREATE TABLE cliente(
	cli_codigo INT PRIMARY KEY AUTO_INCREMENT,
	cli_nome VARCHAR(255) NOT NULL,
	cli_logradouro VARCHAR(255) NOT NULL,
	cli_numero INT NOT NULL,
	cli_bairro VARCHAR(255) NOT NULL,
	cli_cep INT NOT NULL,
	cli_cidade VARCHAR(255) NOT NULL,
	cli_estado VARCHAR(255) NOT NULL,
	fk_cli_telefones INT NOT NULL,
	cli_email VARCHAR(100) NOT NULL
);

CREATE TABLE marca(
	mar_codigo INT PRIMARY KEY AUTO_INCREMENT,
	mar_nome VARCHAR(255) NOT NULL,
	mar_descricao VARCHAR(255) NOT NULL
);

CREATE TABLE equipamento(
	equ_codigo INT PRIMARY KEY AUTO_INCREMENT,
	equ_descricao VARCHAR(255) NOT NULL,
	fk_equ_marca VARCHAR(255) NOT NULL,
	equ_ano_fabricacao YEAR NOT NULL,
	equ_detalhes_configuracoes VARCHAR(255) NOT NULL,
	equ_observacoes VARCHAR(255) NOT NULL,
	FOREIGN KEY (fk_cli_codigo) REFERENCES cliente (cli_codigo)
);

CREATE TABLE equ_mar(
	fk_equ_codigo INT NOT NULL,
	fk_mar_codigo INT NOT NULL,
	FOREIGN KEY (fk_equ_codigo) REFERENCES equipamento (equ_codigo),
	FOREIGN KEY (fk_mar_codigo) REFERENCES marca (mar_codigo)
);

CREATE TABLE cli_equ(
	fk_cli_codigo INT NOT NULL,
	fk_equ_codigo INT NOT NULL,
	FOREIGN KEY (fk_cli_codigo) REFERENCES cliente (cli_codigo),
	FOREIGN KEY (fk_equ_codigo) REFERENCES equipamento (equ_codigo)
);

CREATE TABLE cli_telefones (
        cli_telefone_codigo INT PRIMARY KEY AUTO_INCREMENT,
        cli_telefone INT,
        cli_codigo INT,
        FOREIGN KEY (cli_codigo) REFERENCES cliente(cli_codigo)
);

CREATE TABLE item(
	ite_codigo INT PRIMARY KEY AUTO_INCREMENT,
	ite_descricao VARCHAR(255) NOT NULL,
	ite_valor INT NOT NULL
);

CREATE TABLE tecnico(
	tec_codigo INT PRIMARY KEY AUTO_INCREMENT,
	tec_nome VARCHAR(255) NOT NULL,
	tec_telefone INT NOT NULL
);

CREATE TABLE servico(
	ser_codigo INT PRIMARY KEY AUTO_INCREMENT,
	ser_descricao VARCHAR(255) NOT NULL,
	ser_horas_aplicacao DATETIME NOT NULL,
	ser_valor INT NOT NULL	
);

CREATE TABLE ordem_de_servico(
	ord_codigo INT PRIMARY KEY AUTO_INCREMENT,
	ord_data_abertura DATETIME,
	fk_ord_cliente VARCHAR(255) NOT NULL,
	fk_ord_equipamento VARCHAR(100) NOT NULL,
	fk_ord_servico VARCHAR(255) NOT NULL,
	ord_produtos VARCHAR(255) NOT NULL,
	fk_ord_tecnico VARCHAR(255) NOT NULL,
	ord_data_fechamento DATETIME NOT NULL
);

/**

ALTER TABLE cliente 
ADD CONSTRAINT fk_telefones
FOREIGN KEY (fk_cli_telefones) 
REFERENCES cli_telefones(cli_telefones_codigo);


CREATE DATABASE ordens_servico;

USE ordens_servico;

CREATE TABLE cliente(
	cli_codigo INT PRIMARY KEY AUTO_INCREMENT,
	cli_nome VARCHAR(255) NOT NULL,
	cli_logradouro VARCHAR(255) NOT NULL,
	cli_numero INT NOT NULL,
	cli_bairro VARCHAR(255) NOT NULL,
	cli_cep VARCHAR(8) NOT NULL,
	cli_cidade VARCHAR(50) NOT NULL,
	cli_estado VARCHAR(50) NOT NULL,
	cli_telefones VARCHAR(11) NOT NULL /** Mudar para multivalorado */
	cli_email VARCHAR(100) NOT NULL
);

CREATE TABLE equipamento(
	equ_codigo INT PRIMARY KEY AUTO_INCREMENT,
	equ_descricao VARCHAR(100) NOT NULL,
	equ_marca VARCHAR(100) NOT NULL,
	equ_ano_fabricacao VARCHAR(4) NOT NULL,
	equ_detalhes_configuracoes VARCHAR(255) NOT NULL,
	equ_observacoes VARCHAR(255) NOT NULL
);

CREATE TABLE tecnico(
	tec_codigo INT PRIMARY KEY AUTO_INCREMENT,
	tec_nome VARCHAR(255) NOT NULL,
	tec_telefone VARCHAR(11)
);

CREATE TABLE servico(
	ser_codigo INT PRIMARY KEY AUTO_INCREMENT,
	ser_descricao VARCHAR(255) NOT NULL,
	ser_horas_aplicacao DATE NOT NULL,
	ser_valor INT NOT NULL	
);

CREATE TABLE item(
	ite_codigo INT PRIMARY KEY AUTO_INCREMENT,
	ite_descricao VARCHAR(255) NOT NULL,
	ite_valor INT NOT NULL
);

CREATE TABLE ordem_de_servico(
	ord_codigo INT PRIMARY KEY AUTO_INCREMENT,
	ord_data_abertura DATE TIMESTAMP,
	ord_cliente VARCHAR(255) NOT NULL,
	ord_equipamento VARCHAR(100) NOT NULL,
	ord_servicos VARCHAR(255) NOT NULL,
	ord_produtos VARCHAR(255) NOT NULL,
	ord_tecnico VARCHAR(255) NOT NULLS
);
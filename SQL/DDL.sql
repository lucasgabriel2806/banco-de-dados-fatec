# DELETANDO O BANCO DE DADOS PARA CRIAR DO ZERO
DROP DATABASE BANCO;

# CRIANDO BANCO DE DADOS
CREATE DATABASE BANCO;

# USANDO BANCO DE DADOS
USE BANCO;

#--------------------------------------------------------------------------

# CRIANDO TABELAS

# CRIANDO A TABELA CLIENTE
CREATE TABLE cliente(
	cli_cpf INT PRIMARY KEY, # NOT NULL É PADRÃO DA PK
	cli_nome VARCHAR(255) NOT NULL,
	cli_rua VARCHAR(255) NOT NULL,
	cli_numero INT NOT NULL,
	cli_bairro VARCHAR(255) NOT NULL,
	cli_telefone VARCHAR(11) NOT NULL
);

#CRIANDO A TABELA CATEGORIA
CREATE TABLE categoria(
	prod_catcodigo INT PRIMARY KEY AUTO_INCREMENT,
	prod_catnome VARCHAR(255) NOT NULL UNIQUE
);

# CRIANDO A TABELA PRODUTO
CREATE TABLE produto(
        # O Código do produto poderia conter letras(0a12869bw)
        # Ou poderia não ser AUTO_INCREMENT(012908829)
	prod_codigo INT PRIMARY KEY AUTO_INCREMENT,
	prod_nome VARCHAR(255) NOT NULL UNIQUE,
	fk_prod_categoria INT NOT NULL,
	prod_preco DECIMAL(5,2) NOT NULL
);

# CRIANDO A TABELA PEDIDO
CREATE TABLE pedido(
	ped_numero INT PRIMARY KEY AUTO_INCREMENT,
	ped_data DATE NOT NULL,
	fk_ped_cliente VARCHAR(11) NOT NULL
);

CREATE TABLE pedido_produto(
	fk_pedido INT NOT NULL,
	fk_produto INT NOT NULL
);

# ALTER TABLE
ALTER TABLE produto 
ADD CONSTRAINT fk_categoria 
FOREIGN KEY (fk_prod_categoria) 
REFERENCES categoria(prod_catcodigo);

ALTER TABLE pedido
ADD CONSTRAINT fk_cliente
FOREIGN KEY (fk_ped_cliente) 
REFERENCES cliente(cli_cpf);

ALTER TABLE pedido_produto
ADD CONSTRAINT fk_ped
FOREIGN KEY (fk_pedido)
REFERENCES pedido(ped_numero);

ALTER TABLE pedido_produto
ADD CONSTRAINT fk_prod
FOREIGN KEY (fk_produto)
REFERENCES produto(prod_codigo);

SHOW TABLES;
#ATUALIZADO EM: 12/05/2025

#SINTAXE INICIAL PARA INTERAGIR COM O BANCO DE DADOS

#MOSTRA A VERSÃO DO BANCO DE DADOS
SELECT VERSION(); 

#MOSTRA AS INSTANCIAS DE BANCOS DISPONIVEIS
SHOW DATABASES;

#CRIAR UMA INSTANCIA DE BANCO DE DADOS
CREATE DATABASE BANCO;

#APAGAR O BANCO DE DADOS
DROP DATABASE BANCO;

#CONECTAR A INSTANCIA DO BANCO DE DADOS
USE BANCO;

#MOSTRA TODAS AS TABELAS DO BANCO
SHOW TABLES;

#----------------------------------------------------------------------------------------------------

#CRIANDO TABELAS

#CRIANDO A TABELA CLIENTE
CREATE TABLE cliente(
	cli_cpf VARCHAR(11) PRIMARY KEY,
	cli_nome VARCHAR(255) NOT NULL,
	cli_rua VARCHAR(255) NOT NULL,
	cli_numero INT NOT NULL,
	cli_bairro VARCHAR(255) NOT NULL,
	cli_telefone VARCHAR(11) NOT NULL
);

INSERT 
INTO cliente (cli_cpf,cli_nome,cli_rua,cli_numero,cli_bairro,cli_telefone) 
VALUES (2222226664,"Carlos da Silva","Rua tal",100,"Nova Europa","14999999997");

#SELECIONA TODOS OS CLIENTES E TODOS OS ATRIBUTOS
SELECT * 
FROM cliente;

#SELECIONA TODOS OS CLIENTES, MAS SOMENTE OS ATRIBUTOS CPF E NOME
SELECT cli_cpf, cli_nome
FROM cliente;

#SELECIONA TODOS OS CLIENTES, SOMENTE CPF E NOME, ORDENANDO PELO ATRIBUTO CLI_NOME
SELECT cli_cpf, cli_nome
FROM cliente 
ORDER BY cli_nome;

#SELECIONA TODOS OS CLIENTES, SOMENTE CPF E NOME, ORDENANDO PELO ATRIBUTO CLI_CPF
SELECT cli_cpf, cli_nome
FROM cliente 
ORDER BY cli_cpf;


#SELECIONA TODOS OS CLIENTES, SOMENTE CPF E NOME, ORDENANDO PELO ATRIBUTO CLI_CPF DE FORMA DECRESCENTE
SELECT cli_cpf, cli_nome
FROM cliente 
ORDER BY cli_cpf DESC;

#SELECIONA TODOS OS CLIENTES, SOMENTE CPF E NOME, ORDENANDO PELO ATRIBUTO CLI_CPF DE FORMA CRESCENTE
SELECT cli_cpf, cli_nome
FROM cliente 
ORDER BY cli_cpf ASC;


#CRIANDO A TABELA CATEGORIA
#CHAVE PRIMÁRIA AUTO INCREMENTE OS VALORES
#NOME DA CATEGORIA É UNICO, NÃO DEIXA DUPLICAR NOME DE CATEGORIA
CREATE TABLE categoria(
	prod_catcodigo INT PRIMARY KEY AUTO_INCREMENT,
	prod_catnome VARCHAR(255) NOT NULL UNIQUE
);

#INSERINDO DADOS REPASSANDO O CODIGO DE CADA CATEGORIA
INSERT 
INTO categoria (prod_catcodigo,prod_catnome) 
VALUES (2,"Tenis");

#INSERINDO DADOS SEM O CODIGO, QUANDO CHAVE PRIMÁRIA É AUTO INCREMENT
INSERT 
INTO categoria (prod_catnome) 
VALUES ("bermuda");

SELECT * FROM categoria;


#-----------------------------------------------------------------------------------------------------

#Extra para interagir com as tabelas do banco

#MOSTRA AS CARACTERÍSTICAS DOS ATRIBUTOS DA TABELA
DESCRIBE cliente;

#APAGA UMA TABELA
DROP TABLE cliente;

------------------------------------------------
#DML - Data Manipulation Language

/*
	Inserindo dados nas tabelas

	INSERT

*/

INSERT INTO nome_tabela (atributo1,atributo2) VALUES (valor1,valor2,valor3);

INSERT 
INTO nome_tabela (atributo1,atributo2) 
VALUES (valor1,valor2,valor3);


/*

    Selecionando dados das tabelas

    SELECT

*/

#SELECT
#SINTAXE (Seleciona todos os dados da tabela)
SELECT * FROM nome_tabela;

#SINTAXE (Seleciona alguns atributos da tabela)
SELECT atributo1,atributo2 FROM nome_tabela;








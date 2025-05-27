/*
    _________  __________________                                        ____  _____ __  ___                          ________________________________________________
   / ____/   |/_  __/ ____/ ____/       / /   |  / / / / / / /  ____    / __ \/ ___//  |/  /                         /                                                 \
  / /_  / /| | / / / __/ / /      __   / / /| | / /_/ / / / /  |____|  / / / /\__ \/ /|_/ /                          |    _________________________________________    |
 / __/ / ___ |/ / / /___/ /___    / /_/ / ___ |/ __  / /_/ /          / /_/ /___/ / /  / /                           |   |                                         |   |
/_/   /_/  |_/_/ /_____/\____/    \____/_/  |_/_/ /_/\____/          /_____//____/_/  /_/                            |   | DROP TABLE USUARIOS;                    |   |
                                                                                                                     |   |                                         |   |
                                                                                                                     |   |                                         |   |
                __  _______  ____  ________    ___   ______  ________  ___   	                                     |   | EITCHA!                                 |   |
               /  |/  / __ \/ __ \/ ____/ /   /   | / ____/ / ____/  |/  /  	                                     |   |                                         |   | 
              / /|_/ / / / / / / / __/ / /   / /| |/ / __  / __/ / /|_/ /                                            |   |                                         |   |
             / /  / / /_/ / /_/ / /___/ /___/ ___ / /_/ / / /___/ /  / /                                             |   |                                         |   |
            /_/  /_/\____/_____/_____/_____/_/  |_\____/ /_____/_/  /_/                                              |   |                                         |   |
                                                                                                                     |   |                                         |   |
                                                                                                                     |   |                                         |   |
                                      ____  ______                                                                   |   |_________________________________________|   |
                                     / __ \/ ____/                                                                   |                                                 |
                                    / / / / __/                                                                      \_________________________________________________/
                                   / /_/ / /___                                                                             \___________________________________/
                                  /_____/_____/                                                                         ___________________________________________
                                                                                                                     _-'    .-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.  --- `-_
    ____  ___    _   ____________     ____  ______   ____  ___    ____  ____  _____                                _-'.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.--.  .-.-.`-_
   / __ )/   |  / | / / ____/ __ \   / __ \/ ____/  / __ \/   |  / __ \/ __ \/ ___/                              _-'.-.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-`__`. .-.-.-.`-_
  / __  / /| | /  |/ / /   / / / /  / / / / __/    / / / / /| | / / / / / / /\__ \                            _-'.-.-.-.-. .-----.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-----. .-.-.-.-.`-_
 / /_/ / ___ |/ /|  / /___/ /_/ /  / /_/ / /___   / /_/ / ___ |/ /_/ / /_/ /___/ /                         _-'.-.-.-.-.-. .---.-. .-------------------------. .-.---. .---.-.-.-.`-_
/_____/_/  |_/_/ |_/\____/\____/  /_____/_____/  /_____/_/  |_/_____/\____//____/                         :-------------------------------------------------------------------------:
                                                                                                          `---._.-------------------------------------------------------------._.---'

*/


#ATUALIZADO EM: 26/05/2025

/****************************************** 
	DDL - DATA DEFINITION LANGUAGE

	CRIANDO E MANIPULANDO TABELAS
*******************************************/

/*#################################################### 

  SINTAXE INICIAL PARA INTERAGIR COM O BANCO DE DADOS

#####################################################*/

#MOSTRA A VERSÃO DO BANCO DE DADOS
SELECT VERSION(); 

#MOSTRA AS INSTANCIAS DE BANCOS DISPONIVEIS
SHOW DATABASES;

#CRIAR UMA INSTANCIA DE BANCO DE DADOS
CREATE DATABASE pedidos;

#CONECTAR A INSTANCIA DO BANCO DE DADOS
USE pedidos;

#MOSTRA TODAS AS TABELAS DO BANCO
SHOW TABLES;

#APAGAR O BANCO DE DADOS
DROP DATABASE pedidos;


/*################################################################### 

                      Criando as tabelas

  Inicialmente criando as tabelas quais não possuem Chave Extrangeira

####################################################################*/

#CRIANDO DA TABELA CLIENTE
CREATE TABLE cliente(
	cli_cpf VARCHAR(11) PRIMARY KEY,
	cli_nome VARCHAR(255) NOT NULL,
	cli_rua VARCHAR(255) NOT NULL,
	cli_numero INT NOT NULL,
	cli_bairro VARCHAR(255) NOT NULL,
	cli_telefone VARCHAR(11) NOT NULL
);

#CRIACAO TABELA CATEGORIA
CREATE TABLE categoria(
	cat_codigo INT PRIMARY KEY AUTO_INCREMENT,
	cat_nome VARCHAR(255) NOT NULL UNIQUE
);

#CRIAÇÃO DA TABELA MARCA
CREATE TABLE marca(
	mar_codigo INT PRIMARY KEY AUTO_INCREMENT,
	mar_nome VARCHAR(255) NOT NULL UNIQUE
);

#CRIAÇÃO DA TABELA TAMANHO
CREATE TABLE tamanho(
	tam_codigo INT PRIMARY KEY AUTO_INCREMENT,
	tam_nome VARCHAR(255) NOT NULL UNIQUE
);

#CRIACAO DA TABELA PRODUTO
CREATE TABLE produto(
	prod_codigo INT PRIMARY KEY AUTO_INCREMENT,
	prod_nome VARCHAR(255) NOT NULL UNIQUE,
	prod_preco DECIMAL(5,2) NOT NULL,
	prod_obs VARCHAR(255) NULL,
	fk_prod_categoria INT NOT NULL,
	fk_prod_marca INT NOT NULL,
	fk_prod_tamanho INT NOT NULL	
);

#CRIACAO DA TABELA PEDIDO
CREATE TABLE pedido(
	ped_numero INT PRIMARY KEY AUTO_INCREMENT,
	ped_data DATE NOT NULL,
	ped_obs VARCHAR(255) NULL,
	ped_status TINYINT (1) NOT NULL DEFAULT 0,
	fk_ped_cliente VARCHAR(11) NOT NULL
);

#CRIACAO DA TABELA PEDIDO_PRODUTO
CREATE TABLE pedido_produto(
	fk_pedido INT NOT NULL,
	fk_produto INT NOT NULL,
	cli_nome VARCHAR(255) NOT NULL
); 

/*####################################################################################### 

                                  Chave Extrangeira
  Para os atributos Chave extrangeira, adiciona-los como Restrição de chave extrangeira

########################################################################################*/

ALTER TABLE produto
ADD CONSTRAINT fk_prod_categoria 
FOREIGN KEY (fk_prod_categoria) 
REFERENCES categoria(cat_codigo);

ALTER TABLE produto
ADD CONSTRAINT fk_prod_marca 
FOREIGN KEY (fk_prod_marca) 
REFERENCES marca(mar_codigo);

ALTER TABLE produto
ADD CONSTRAINT fk_prod_tamanho
FOREIGN KEY (fk_prod_tamanho) 
REFERENCES tamanho(tam_codigo);

ALTER TABLE pedido 
ADD CONSTRAINT fk_ped_cliente
FOREIGN KEY (fk_ped_cliente) 
REFERENCES cliente(cli_cpf);

ALTER TABLE pedido_produto  
ADD CONSTRAINT fk_pedido 
FOREIGN KEY (fk_pedido) 
REFERENCES pedido(ped_numero);

ALTER TABLE pedido_produto  
ADD CONSTRAINT fk_produto 
FOREIGN KEY (fk_produto) 
REFERENCES produto(prod_codigo);

/*####################################################################################### 
                               Modificando Atributos já criados
     Utilização do Modify com Alter Table para modificar características de Atributos
########################################################################################*/


ALTER TABLE produto MODIFY fk_prod_categoria INT NOT NULL;
ALTER TABLE produto MODIFY prod_preco DECIMAL(6,2) NOT NULL;

/*####################################################################################### 
                               Adicionando novo Atributo
                     Adicionando um novo atributo a uma tabela
########################################################################################*/

ALTER TABLE produto ADD prod_obs VARCHAR(255) NULL;

/*####################################################################################### 
                               Removendo um Atributo
                      Removendo um Atributo de uma tabela
########################################################################################*/

ALTER TABLE tabela DROP COLUMN atributo;




#-----------------------------------------------------------------------------------------------------

#Extra para interagir com as tabelas do banco

#MOSTRA AS CARACTERÍSTICAS DOS ATRIBUTOS DA TABELA
DESCRIBE cliente;

#APAGA UMA TABELA
#CUIDADO! APAGA AS TABELAS E SEUS DADOS CASO JÁ EXISTAM
DROP TABLE cliente;






/*
    _________  __________________                                        ____  _____ __  ___                          ________________________________________________
   / ____/   |/_  __/ ____/ ____/       / /   |  / / / / / / /  ____    / __ \/ ___//  |/  /                         /                                                 \
  / /_  / /| | / / / __/ / /      __   / / /| | / /_/ / / / /  |____|  / / / /\__ \/ /|_/ /                          |    _________________________________________    |
 / __/ / ___ |/ / / /___/ /___    / /_/ / ___ |/ __  / /_/ /          / /_/ /___/ / /  / /                           |   |                                         |   |
/_/   /_/  |_/_/ /_____/\____/    \____/_/  |_/_/ /_/\____/          /_____//____/_/  /_/                            |   | SELECT * FROM USERS;                    |   |
                                                                                                                     |   | UPDATE USERS SET NOME='Eitcha!'         |   |
                                                                                                                     |   |                                         |   |
                __  _______  ____  ________    ___   ______  ________  ___   	                                     |   |                                         |   |
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

/*

	DML - Data Manipulation Language
	Linguagem de Manipulação de dados
	
	Consiste em:
		- INSERT
		- SELECT
		- UPDATE
		- DELETE
		
	Remete ao CRUD (Create / Read / Update / Delete)
		- Criar Dados
		- Ler Dados
		- Atualizar Dados
		- Deletar Dados
		
	Operações básicas para manipulação de tabelas, ou Registros em Tabelas
	
*/

/*####################################################################################### 
					SELECT
			SELECIONAR REGISTROS DE UMA TABELA
########################################################################################*/

###############
# SELECT GERAL#
###############

#Selecionar todos os registros da tabela (todos os registros com todos os atributos da tabela)
#O * significa TUDO

SELECT * FROM produto;
SELECT * FROM cliente;
SELECT * FROM categoria;
SELECT * FROM pedido;
SELECT * FROM produto_pedido;
SELECT * FROM marca;
SELECT * FROM tamanho;

#######################
# SELECT com condição #
#######################

#Selecionar registros de uma tabela onde deve conter uma condição para filtro.
#O Filtro delimita quais registros devem ser listados
SELECT * FROM TABELA WHERE ATRIBUTO=ALGO

###############################
# SELECT ORDENANDO - ORDER BY #
###############################
SELECT * FROM TABELA ORDER BY ATRIBUTO

###########################################
# SELECT ORDENANDO - ORDER BY DECRESCENTE #
###########################################
SELECT * FROM TABELA ORDER BY ATRIBUTO DESC

#########################################
# SELECT ORDENANDO - ORDER BY CRESCENTE #
#########################################
SELECT * FROM TABELA ORDER BY ATRIBUTO ASC

/*####################################################################################### 
					INSERT
			   INSERINDO DADOS EM UMA TABELA
########################################################################################*/

#Inserindo dado de um cliente
INSERT 
INTO cliente (cli_cpf,cli_nome, cli_rua, cli_numero,cli_bairro, cli_telefone) 
VALUES (20558965498,"João da Silva", "Rua Amaral Gurgel",100,"Centro", "14999995454");

#Inserindo dados de categorias
INSERT
INTO categoria (prod_catnome) VALUES ("Bermuda");

#Inserindo produto
INSERT
INTO produto (prod_nome,fk_prod_categoria, prod_preco)
VALUES ("Bermuda X", 1,100.00);

#Inserindo vários dados consecutivos
INSERT
INTO tabela (atributo1,atributo2,atributo3)
VALUES (valor1,valor2,valor3),
(valor4,valor5,valor6),
(valor7, valor8,valor9);

/*####################################################################################### 
					UPDATE
			ATUALIZAR REGISTROS DE UMA TABELA.
########################################################################################*/

#Atualizar o produto código 5 para categoria 1
UPDATE produto SET fk_prod_categoria=1 WHERE prod_codigo=5;

#Atualizar o produto código 1 para o preço 90
UPDATE produto SET prod_preco=90 WHERE prod_codigo=1;

#Alterar o preco do produto Jaqueta X para 90
UPDATE produto SET prod_preco=90 WHERE prod_nome="Jaqueta X";
# CATEGORIA
INSERT INTO categoria (prod_catnome) 
VALUES ("Bermuda");

INSERT INTO categoria (prod_catnome) 
VALUES ("Camiseta");

# INSERT INTO

# PRODUTOS
INSERT INTO produto (prod_nome, fk_prod_categoria, prod_preco)
VALUES ("Bermuda X", 1, 100.00);

INSERT INTO produto (prod_nome, fk_prod_categoria, prod_preco)
VALUES ("Camiseta X", 2, 100.00);

INSERT INTO produto (prod_nome, fk_prod_categoria, prod_preco)
VALUES ("Meia X", 4, 10.00);

INSERT INTO produto (prod_nome, fk_prod_categoria, prod_preco)
VALUES ("Jaqueta X", NULL, 10.00);

# CLIENTE
INSERT INTO cliente (cli_cpf,cli_nome,cli_rua,cli_numero,cli_bairro,cli_telefone) 
VALUES (2222226664,"Carlos da Silva","Rua tal",100,"Nova Europa","14999999997");

# PEDIDO
INSERT INTO pedido (ped_data, fk_ped_cliente)
VALUES (2025-05-19, 1);


# SELECT
SELECT * FROM categoria;
SELECT * FROM produto;
SELECT * FROM pedido;
SHOW TABLES;	

# DELETE
DROP TABLE pedido;

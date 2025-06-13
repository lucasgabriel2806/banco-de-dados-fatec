/*[13-Jun 08:36:47][29 ms]*/ SHOW DATABASES; 
/*[13-Jun 08:48:50][2 ms]*/ CREATE DATABASE ordens_servico; 
/*[13-Jun 08:48:53][0 ms]*/ USE ordens_servico; 
/*[13-Jun 08:48:53][0 ms]*/ SELECT DATABASE(); 
/*[13-Jun 08:48:57][15 ms]*/ CREATE TABLE cliente( cli_codigo INT PRIMARY KEY AUTO_INCREMENT, cli_nome VARCHAR(255) NOT NULL, cli_logradouro VARCHAR(255) NOT NULL, cli_numero INT NOT NULL, cli_bairro VARCHAR(255) NOT NULL, cli_cep VARCHAR(8) NOT NULL, cli_cidade VARCHAR(50) NOT NULL, cli_estado VARCHAR(50) NOT NULL, cli_telefones VARCHAR(11) NOT NULL cli_email VARCHAR(100) NOT NULL ); /*[Error Code 1064: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'VARCHAR(100) NOT NULL )' at line 11]*/ 
/*[13-Jun 08:49:26][22 ms]*/ CREATE TABLE cliente( cli_codigo INT PRIMARY KEY AUTO_INCREMENT, cli_nome VARCHAR(255) NOT NULL, cli_logradouro VARCHAR(255) NOT NULL, cli_numero INT NOT NULL, cli_bairro VARCHAR(255) NOT NULL, cli_cep VARCHAR(8) NOT NULL, cli_cidade VARCHAR(50) NOT NULL, cli_estado VARCHAR(50) NOT NULL, cli_telefones VARCHAR(11) NOT NULL, cli_email VARCHAR(100) NOT NULL ); 
/*[13-Jun 08:49:37][24 ms]*/ CREATE TABLE equipamento( equ_codigo INT PRIMARY KEY AUTO_INCREMENT, equ_descricao VARCHAR(100) NOT NULL, equ_marca VARCHAR(100) NOT NULL, equ_ano_fabricacao VARCHAR(4) NOT NULL, equ_detalhes_configuracoes VARCHAR(255) NOT NULL, equ_observacoes VARCHAR(255) NOT NULL ); 
/*[13-Jun 08:49:52][74 ms]*/ SELECT * FROM cliente LIMIT 0, 1000; 
/*[13-Jun 08:55:02][0 ms]*/ INSERT INTO cliente VALUES ("Lucas", "Rua Primo Arrielo", 211, "Jardim Odete", "12345678", "Jaú", "São Paulo", "14999999999", "lucas@gmail.com"); /*[Error Code 1136: Column count doesn't match value count at row 1]*/ 
/*[13-Jun 08:55:33][0 ms]*/ INSERT INTO cliente VALUES ("Lucas", "Rua Primo Arrielo", 211, "Jardim Odete", "12345678", "Jaú", "São Paulo", "14999999999", "lucas@gmail.com"); /*[Error Code 1136: Column count doesn't match value count at row 1]*/ 
/*[13-Jun 08:55:40][15 ms]*/ INSERT INTO cliente VALUES (1, "Lucas", "Rua Primo Arrielo", 211, "Jardim Odete", "12345678", "Jaú", "São Paulo", "14999999999", "lucas@gmail.com"); 
/*[13-Jun 08:55:52][0 ms]*/ SELECT * FROM cliente LIMIT 0, 1000; 
/*[13-Jun 08:57:26][15 ms]*/ INSERT INTO cliente (cli_nome, cli_logradouro, cli_numero, cli_bairro, cli_cep, cli_cidade, cli_estado, cli_telefones, cli_email) VALUES ("Rafael", "Rua Primo Arrielo", 211, "Jardim Odete", "12345678", "Jaú", "São Paulo", "14999999999", "lucas@gmail.com"); 
/*[13-Jun 08:57:30][0 ms]*/ SELECT * FROM cliente LIMIT 0, 1000; 
/*[13-Jun 09:00:06][27 ms]*/ CREATE TABLE copia_cliente AS SELECT * FROM cliente; 
/*[13-Jun 09:00:21][0 ms]*/ SELECT * FROM cliente LIMIT 0, 1000; 
/*[13-Jun 09:00:24][0 ms]*/ SELECT * FROM copia_cliente LIMIT 0, 1000; 
/*[13-Jun 09:00:54][26 ms]*/ CREATE TABLE copia2_cliente AS SELECT * FROM cliente WHERE cli_nome = "Lucas"; 
/*[13-Jun 09:01:01][0 ms]*/ SELECT * FROM copia2_cliente LIMIT 0, 1000; 
/*[13-Jun 09:01:39][0 ms]*/ CREATE TABLE copia3_cliente AS SELECT cli_codigo, cli_nome, cli_telefone FROM cliente WHERE cli_nome = "Lucas"; /*[Error Code 1054: Unknown column 'cli_telefone' in 'field list']*/ 
/*[13-Jun 09:01:50][26 ms]*/ CREATE TABLE copia3_cliente AS SELECT cli_codigo, cli_nome, cli_telefones FROM cliente WHERE cli_nome = "Lucas"; 
/*[13-Jun 09:01:58][0 ms]*/ SELECT * FROM copia3_cliente LIMIT 0, 1000; 

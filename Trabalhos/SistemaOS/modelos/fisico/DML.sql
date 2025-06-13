/* --- REGISTROS DE CLIENTE --- */

INSERT INTO cliente (cli_nome, cli_logradouro, cli_numero, cli_bairro, cli_cep, cli_cidade, cli_estado, cli_telefones, cli_email)
VALUES ("Lucas", "Rua Primo Arrielo", 211, "Jardim Odete", "12345678", "Jaú", "São Paulo", "14999999999", "lucas@gmail.com");

INSERT INTO cliente (cli_nome, cli_logradouro, cli_numero, cli_bairro, cli_cep, cli_cidade, cli_estado, cli_telefones, cli_email)
VALUES ("Rafael", "Rua Primo Arrielo", 211, "Jardim Odete", "12345678", "Jaú", "São Paulo", "14999999999", "lucas@gmail.com");

SELECT * FROM cliente;
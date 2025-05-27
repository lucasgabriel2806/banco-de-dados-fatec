-- Inserções na tabela associativa pedido_produto (considerando produtos e pedidos já criados)

-- Cada pedido com 1 ou mais produtos associados

INSERT INTO pedido_produto (fk_pedido, fk_produto, quantidade) VALUES
(1, 1, 2),
(1, 5, 1),
(2, 2, 1),
(2, 6, 1),
(3, 3, 1),
(4, 4, 2),
(5, 7, 1),
(6, 8, 1),
(7, 9, 1),
(8, 10, 1),
(9, 11, 1),
(10, 12, 2),
(11, 13, 1),
(12, 14, 1),
(13, 15, 1),
(14, 16, 1),
(15, 17, 2),
(16, 18, 1),
(17, 19, 1),
(18, 20, 1);

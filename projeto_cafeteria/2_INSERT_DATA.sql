INSERT INTO Cardapio (nome, descricao, preco_unitario) VALUES
('Espresso', 'Café puro e intenso', 5.00),
('Cappuccino', 'Espresso, leite vaporizado e espuma', 8.50),
('Mocha', 'Espresso, chocolate e leite vaporizado', 10.00),
('Latte', 'Espresso com mais leite vaporizado', 7.00);

INSERT INTO Comanda (data, mesa, cliente) VALUES
('2025-10-27', 5, 'Ana Silva'),
('2025-10-27', 3, 'Bruno Costa'),
('2025-10-28', 5, 'Carla Dias');

INSERT INTO ItensComanda (codigo_comanda, codigo_cardapio, quantidade) VALUES
(1, 2, 1);

INSERT INTO ItensComanda (codigo_comanda, codigo_cardapio, quantidade) VALUES
(2, 1, 2),
(2, 4, 1);

INSERT INTO ItensComanda (codigo_comanda, codigo_cardapio, quantidade) VALUES
(3, 2, 1),
(3, 3, 1);

SELECT
    nome,
    descricao,
    preco_unitario
FROM
    Cardapio
ORDER BY
    nome ASC;

SELECT
    c.codigo AS codigo_comanda,
    c.data,
    c.mesa,
    c.cliente,
    ca.nome AS nome_cafe,
    ca.descricao,
    ic.quantidade,
    ca.preco_unitario,
    (ic.quantidade * ca.preco_unitario) AS preco_total_item
FROM
    Comanda c
JOIN
    ItensComanda ic ON c.codigo = ic.codigo_comanda
JOIN
    Cardapio ca ON ic.codigo_cardapio = ca.codigo
ORDER BY
    c.data,
    c.codigo,
    ca.nome;

SELECT
    c.codigo,
    c.data,
    c.mesa,
    c.cliente,
    SUM(ic.quantidade * ca.preco_unitario) AS valor_total_comanda
FROM
    Comanda c
JOIN
    ItensComanda ic ON c.codigo = ic.codigo_comanda
JOIN
    Cardapio ca ON ic.codigo_cardapio = ca.codigo
GROUP BY
    c.codigo, c.data, c.mesa, c.cliente
ORDER BY
    c.data;

SELECT
    c.codigo,
    c.data,
    c.mesa,
    c.cliente,
    SUM(ic.quantidade * ca.preco_unitario) AS valor_total_comanda
FROM
    Comanda c
JOIN
    ItensComanda ic ON c.codigo = ic.codigo_comanda
JOIN
    Cardapio ca ON ic.codigo_cardapio = ca.codigo
GROUP BY
    c.codigo, c.data, c.mesa, c.cliente
HAVING
    COUNT(ic.codigo_cardapio) > 1
ORDER BY
    c.data;

SELECT
    c.data,
    SUM(ic.quantidade * ca.preco_unitario) AS faturamento_total_dia
FROM
    Comanda c
JOIN
    ItensComanda ic ON c.codigo = ic.codigo_comanda
JOIN
    Cardapio ca ON ic.codigo_cardapio = ca.codigo
GROUP BY
    c.data
ORDER BY
    c.data;

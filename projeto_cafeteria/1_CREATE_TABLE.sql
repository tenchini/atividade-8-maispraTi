CREATE TABLE Cardapio (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE,
    descricao TEXT,
    preco_unitario DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Comanda (
    codigo SERIAL PRIMARY KEY,
    data DATE NOT NULL,
    mesa INT NOT NULL,
    cliente VARCHAR(255)
);

CREATE TABLE ItensComanda (
    codigo_comanda INT NOT NULL,
    codigo_cardapio INT NOT NULL,
    quantidade INT NOT NULL,

    FOREIGN KEY (codigo_comanda) REFERENCES Comanda(codigo),
    FOREIGN KEY (codigo_cardapio) REFERENCES Cardapio(codigo),
    PRIMARY KEY (codigo_comanda, codigo_cardapio)
);

CREATE DATABASE supermercado;
USE supermercado;

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(20),
    endereco TEXT
);

CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT DEFAULT 0
);

CREATE TABLE vendas (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    data_venda DATETIME DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

INSERT INTO clientes (nome, email, telefone, endereco) VALUES
('Ana Pereira', 'ana@gmail.com', '11987654321', 'Rua das Flores, 123 - São Paulo'),
('Roberto Silva', 'roberto@gmail.com', '21976543210', 'Av. Brasil, 456 - Rio de Janeiro'),
('Luciana Costa', 'luciana@hotmail.com', '31965432100', 'Rua dos Três, 789 - Belo Horizonte');

INSERT INTO produtos (nome, descricao, preco, estoque) VALUES
('Leite', 'Leite integral - 1 litro', 4.50, 150),
('Pão', 'Pão francês - unidade', 0.90, 300),
('Sabão em pó', 'Sabão em pó Omo - pacote 1kg', 7.99, 80);

INSERT INTO vendas (id_cliente, total) VALUES
(1, 15.80);

INSERT INTO vendas (id_cliente, total) VALUES
(2, 22.40);

SELECT * FROM clientes;
SELECT * FROM produtos;
SELECT * FROM vendas;
CREATE DATABASE gestao_financeira_estoque_glp;

USE gestao_financeira_estoque_glp;

-- Tabela de usuarios
CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    senha VARCHAR(100) NOT NULL,
    role VARCHAR(100) NOT NULL
);

-- Tabela de fornecedores
CREATE TABLE fornecedores (
    id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(100),
    telefone VARCHAR(20) NOT NULL
);

-- Tabela de produtos
CREATE TABLE produto (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    id_fornecedor INT,
    nome_produto VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedores(id_fornecedor)
);

-- Tabela para controle de estoque
CREATE TABLE controle_estoque (
    id_transacao INT AUTO_INCREMENT PRIMARY KEY,
    id_produto INT,
    id_usuario INT,
    qtd_entrada INT,
    qtd_vendas INT,
    data_transacao TIMESTAMP NOT NULL,
    valor_compra DECIMAL(10, 2),
    valor_venda DECIMAL(10, 2),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

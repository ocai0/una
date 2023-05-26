CREATE DATABASE IF NOT EXISTS DB_LOJA;
CREATE TABLE CLIENTE(CODCLIENTE INT, NOME VARCHAR(100), ENDERECO VARCHAR(100), CIDADE VARCHAR(40), BAIRRO VARCHAR(100), ESTADO CHAR(2));
INSERT INTO CLIENTE(CODCLIENTE, NOME, ENDERECO, CIDADE, BAIRRO, ESTADO) VALUES 
    (1, "Caio Alves", "Rua Francisco Leandro Cunha", "Vila Magdalena", "Contagem", "MG"),
    (2, "José", "Rua Caquis", "Sarzedo", "Sarzedo", "MG"), 
    (3, "Breno", "Rua Curvelo", "Penegri", "São Paulo", "SP");

SELECT * FROM CLIENTE;
ALTER TABLE CLIENTE ADD RENDA DECIMAL(8.2);
ALTER TABLE CLIENTE ADD DATA_CADASTRO DATETIME;

UPDATE CLIENTE SET RENDA = 123456 WHERE CODCLIENTE = 1;
UPDATE CLIENTE SET DATA_CADASTRO = "2021/12/23" WHERE CODCLIENTE = 1;

ALTER TABLE CLIENTE MODIFY COLUMN NOME VARCHAR(200);
ALTER TABLE CLIENTE MODIFY COLUMN ENDERECO VARCHAR(20);

ALTER TABLE CLIENTE DROP COLUMN RENDA;

SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CLIENTE';

CREATE TABLE PRODUTO(
    CODPRODUTO INT AUTO_INCREMENT,
    NOME VARCHAR(100),
    PRECO_COMPRA DECIMAL,
    PRECO_VENDA DECIMAL,
    DATA_CADASTRO DATETIME
);
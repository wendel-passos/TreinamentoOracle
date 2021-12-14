--Script de cria��o das primeiras tabelas

--Table de clientes
CREATE TABLE TB_CLIENTES
(CPF VARCHAR (14),
NOME VARCHAR (100),
RUA VARCHAR (150),
ENDERECO1 VARCHAR (150),
ENDERECO2 VARCHAR (150),
BAIRRO VARCHAR  (50),
CIDADE VARCHAR (50),
ESTADO VARCHAR (2),
CEP VARCHAR (8),
IDADE INT,
SEXO VARCHAR (1),
LIMITE_CREDITO FLOAT,
VOLUME_COMPRA FLOAT,
PRIMEIRA_COMPRA NUMBER (1));

--Table de vendedores
CREATE TABLE TB_VENDEDORES
(MATRICULA VARCHAR (5),
NOME VARCHAR (100),
PERCENTUAL_COMISSAO FLOAT )
--ACRESCENTANDO PRIMARY KEY NO CAMPO MATRICULA
ALTER TABLE TB_VENDEDORES ADD CONSTRAINT PK_TABELA_DE_VENDEDORES PRIMARY KEY (MATRICULA);




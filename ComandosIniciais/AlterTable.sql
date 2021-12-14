--Comando Alter Table

--Acresentando chave primaria
ALTER TABLE tb_produtos ADD CONSTRAINT PK_TB_PRODUTOS PRIMARY KEY (PRODUTO); 
ALTER TABLE tb_clientes ADD CONSTRAINT PK_TB_CLIENTES PRIMARY KEY (CPF); 

--Acrescenteando novos campos
ALTER TABLE tb_clientes ADD DATA_NASCIMENTO DATE; 


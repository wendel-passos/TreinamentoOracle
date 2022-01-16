/*
Em uma base de dados, há duas tabelas, TABELA_DE_CLIENTES e CLIENTES. Em ambas, há os mesmos campos, que são os seguintes:

CPF
NOME
CEP
ENDERECO
BAIRRO
CIDADE
ESTADO
DATA_DE_NASCIMENTO
Como seria o comando SQL que insere todos os registros da TABELA_DE_CLIENTES dentro da tabela `CLIENTES?
*/

Insert into ALURA.clientes select 
CPF
,NOME
,ENDERECO_1 ENDERECO
,BAIRRO
,CIDADE
,ESTADO
,CEP
,DATA_DE_NASCIMENTO
,IDADE
,SEXO
,LIMITE_DE_CREDITO
,VOLUME_DE_COMPRA
,PRIMEIRA_COMPRA from ALURA.tb_clientes




 
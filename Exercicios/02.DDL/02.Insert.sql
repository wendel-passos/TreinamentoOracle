/*
Analise o seguinte cliente:

CPF: 1478662710
NOME: Érica Carvalho
ENDEREÇO: R. Iriquitia
BAIRRO: Jardins
CIDADE: São Paulo
ESTADO: SP
CEP: 80012212
DATA DE NASCIMENTO: 01/09/1990
IDADE: 27
SEXO: F
LIMITE DE CRÉDITO: 170000
VOLUME DE COMPRA: 24500
PRIMEIRA COMPRA: Não
Como seria o comando SQL para inserir o cliente acima na tabela CLIENTES?
*/

insert into Alura.clientes (

CPF
,NOME
,ENDERECO_1
,ENDERECO_2
,BAIRRO
,CIDADE
,ESTADO
,CEP
,DATA_DE_NASCIMENTO
,IDADE
,SEXO
,LIMITE_DE_CREDITO
,VOLUME_DE_COMPRA
,PRIMEIRA_COMPRA )

values ('1478662710','Érica Carvalho','R. Iriquitia','','Jardins','Sao Paulo','SP',80012212, to_Date ('01/09/1990','DD/MM/YYYY'), 27,'F',170000,24500,0 )
--Quantos bairros diferentes da cidade do Rio de Janeiro possuem clientes?

--Evidenciando os bairros 
select distinct bairro from tabela_de_clientes where cidade = 'Rio de Janeiro';

--Contando os bairros
select count (distinct bairro) AS Quantidade_Bairros from tabela_de_clientes where cidade = 'Rio de Janeiro';


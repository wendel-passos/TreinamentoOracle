--Utilizando duas querys SQL, qual foi a maior venda do produto "Linha Refrescante - 1 Litro - Morango/Limao", em quantidade?

--1° Query para obter o codigo interno do produto.
select * from tabela_de_produtos where nome_do_produto =  'Linha Refrescante - 1 Litro - Morango/Limao';

--2° Query para buscar a maior quntidade vendida para o produto.
select * from itens_notas_fiscais where codigo_do_produto = '1101035' order by quantidade desc;



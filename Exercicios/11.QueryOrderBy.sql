--Utilizando duas querys SQL, qual foi a maior venda do produto "Linha Refrescante - 1 Litro - Morango/Limao", em quantidade?

--1° Query para obter o codigo interno do produto.
select * from tabela_de_produtos where nome_do_produto =  'Linha Refrescante - 1 Litro - Morango/Limao';

--2° Query para buscar a maior quntidade vendida para o produto.
select * from itens_notas_fiscais where codigo_do_produto = '1101035' order by quantidade desc;

--Aproveitando o exercício do vídeo anterior, quantos itens existem com a maior quantidade de venda para o produto '1101035' ?

select * from itens_notas_fiscais where codigo_do_produto = '1101035' order by quantidade desc

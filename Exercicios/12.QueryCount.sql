--Aproveitando o exercício do vídeo anterior, quantos itens existem com a maior quantidade de venda para o produto '1101035' ?

select count (*) from itens_notas_fiscais where codigo_do_produto = '1101035' and quantidade = 99 order by quantidade desc

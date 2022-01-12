/*Levando em consideração que o valor financeiro das vendas consiste em multiplicar a quantidade pelo preço,
obtenha o faturamento anual da empresa. */

select to_char (nf.data_venda,'YYYY') AS ANO, sum (INF.quantidade * INF.preco) AS FATURAMENTO from itens_notas_fiscais INF inner join notas_fiscais NF 
on INF.numero = nf.numero
group by to_char (nf.data_venda,'YYYY');



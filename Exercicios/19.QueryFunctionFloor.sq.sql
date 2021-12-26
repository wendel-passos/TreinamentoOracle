--Na tabela de notas fiscais, temos o valor do imposto. Já na tabela de itens, temos a quantidade e o faturamento.
--Calcule o valor do imposto pago no ano de 2016, arredondando para o menor inteiro.

--Tabelas utilizadas para montar a query
select * from ALURA.notas_fiscais where rownum <= 10
select * from ALURA.itens_notas_fiscais where rownum <=10

--Query solicitada
select floor (sum (imposto * (quantidade*preco))) Imposto_2016 from ALURA.notas_fiscais NF inner join ALURA.itens_notas_fiscais INF
on NF.numero = INF.numero
where to_char (data_venda, 'YYYY') = 2016



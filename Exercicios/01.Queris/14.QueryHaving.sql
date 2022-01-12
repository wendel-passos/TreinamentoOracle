--Quais os clientes que fizeram mais de 2000 compras em 2016?


select count (cpf) AS COMPRAS,cpf from notas_fiscais 
where to_char (data_venda,'YYYY') = 2016
group by cpf
having count (cpf) > 2000;
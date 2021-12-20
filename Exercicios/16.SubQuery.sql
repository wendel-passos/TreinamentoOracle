/*
Tendo em vista a seguinte consulta:

SELECT CPF, COUNT(*) FROM NOTAS_FISCAIS
WHERE TO_CHAR(DATA_VENDA, 'YYYY') = '2016'
GROUP BY CPF
HAVING COUNT(*) > 2000

Qual seria a consulta, usando subconsulta, que seria equivalente à consulta acima?

*/

-- Resolução

select sub.cpf, sub.compras from ( select  CPF, COUNT(*) AS COMPRAS FROM NOTAS_FISCAIS
WHERE TO_CHAR(DATA_VENDA, 'YYYY') = '2016'
GROUP BY CPF )SUB
WHERE sub.compras > 2000;

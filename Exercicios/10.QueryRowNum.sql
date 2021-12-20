--Queremos obter as 10 primeiras vendas do dia 01/01/2017. Qual seria o comando SQL para obter este resultado?

select * from NOTAS_FISCAIS WHERE DATA_VENDA = to_date('2017-01-01','YYYY-MM-DD') and rownum <= 10;


--Monte uma consulta SQL para ver quais s�o os vendedores que foram admitidos da empresa depois de 2016 (inclusive).

select * from tb_vendedores where to_char(data_admissao,'YYYY') >= '2016';
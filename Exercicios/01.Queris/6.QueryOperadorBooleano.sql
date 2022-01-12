--Monte uma consulta SQL para ver quais são os vendedores que estão de férias e que foram admitidos antes de 2016.

select * from tb_vendedores where de_ferias = 1 and to_char (data_admissao,'YYYY') < '2016';
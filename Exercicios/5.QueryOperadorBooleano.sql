--Monte uma consulta SQL para ver quais s�o os vendedores que est�o de f�rias e que foram admitidos antes de 2016.

select * from tb_vendedores where de_ferias = 1 and to_char (data_admissao,'YYYY') < '2016';
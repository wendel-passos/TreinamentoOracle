--Crie uma consulta que mostre o nome e a idade dos clientes.

select nome, SUBSTR (months_between (sysdate, data_de_nascimento)/ 12,1,2) AS IDADE from ALURA.tabela_de_clientes
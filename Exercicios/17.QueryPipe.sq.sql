--Fa�a uma consulta listando o nome do cliente e o endere�o completo (com rua, bairro, cidade e estado).

select 'Nome: ' || nome || ' Rua: ' || endereco_1 || ' Bairro: ' || bairro ||' Cidade: ' || cidade || ' Estado: ' || estado as RELATORIO from ALURA.tabela_de_clientes 
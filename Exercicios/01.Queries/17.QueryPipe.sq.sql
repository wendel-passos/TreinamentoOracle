--Faça uma consulta listando o nome do cliente e o endereço completo (com rua, bairro, cidade e estado).

select 'Nome: ' || nome || ' Rua: ' || endereco_1 || ' Bairro: ' || bairro ||' Cidade: ' || cidade || ' Estado: ' || estado as RELATORIO from ALURA.tabela_de_clientes 
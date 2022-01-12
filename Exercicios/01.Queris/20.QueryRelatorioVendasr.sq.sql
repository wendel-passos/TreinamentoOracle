/*
Queremos construir um SQL cujo resultado seja, para cada cliente:

"O cliente João da Silva faturou 120000 no ano de 2016".
Faça isso somente para o ano de 2016.
*/

select 'O Cliente: ' || C.nome  || ' CPF: ' || C.cpf || ' Faturou: ' || round (sum (I.quantidade*I.preco),2) || ' No ano de: ' || to_char (N.data_venda,'YYYY') AS RELATÓRIO_DE_VENDAS  from ALURA.tabela_de_clientes C 
inner join alura.notas_fiscais N on C.cpf = N.cpf
inner join alura.itens_notas_fiscais I on N.numero = I.Numero 
where to_char (N.data_venda,'YYYY') = '2016'
group by C.nome,C.cpf ,to_char (N.data_venda,'YYYY')

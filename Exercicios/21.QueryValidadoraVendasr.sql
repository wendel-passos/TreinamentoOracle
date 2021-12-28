/*

Nesta aula, constru�mos um relat�rio que apresentou os clientes que tiveram vendas inv�lidas. Complemente este relat�rio, listando somente os que tiveram vendas inv�lidas e calculando a diferen�a entre o limite de venda m�ximo e o realizado, em percentuais. Dica:

Capture a SQL final da aula
Filtre somente as linhas onde:

(X.QUANTIDADE_LIMITE - X.QUANTIDADE_VENDAS) < 0

Liste a coluna de X.QUANTIDADE_LIMITE
Crie uma nova coluna, fazendo a f�rmula:

(1 - (X.QUANTIDADE_LIMITE/X.QUANTIDADE_VENDAS)) * 100

select to_char (N.data_venda, 'YYYY/MM')DATA ,C.cpf,C.nome,sum(i.quantidade) as VOLUME_VENDA,c.volume_de_compra 
,case
    when sum(i.quantidade) > C.VOLUME_DE_COMPRA  then 'Venda Inv�lida'
    else 'Venda V�lida' end VALIDADOR_VENDA
from alura.tabela_de_clientes C 
inner join alura.notas_Fiscais N on C.cpf = N.cpf
inner join alura.itens_notas_fiscais I on N.numero = I.numero 
where to_char (N.data_venda, 'YYYY') = 2016
group by to_char (N.data_venda, 'YYYY/MM'),C.cpf,C.nome,c.volume_de_compra
order by to_char (N.data_venda, 'YYYY/MM')
*/

--Resolu��o

select to_char (N.data_venda, 'YYYY/MM')DATA ,C.cpf,C.nome,sum(i.quantidade) as VOLUME_VENDA,c.volume_de_compra 
,case
    when sum(i.quantidade) > C.VOLUME_DE_COMPRA  then 'Venda Inv�lida'
    else 'Venda V�lida' 
end VALIDADOR_VENDA
,round (((1 - (c.volume_de_compra/sum(i.quantidade)))) * 100,2) PERCENTUAL_EXCEDENTE 
from alura.tabela_de_clientes C 
inner join alura.notas_Fiscais N on C.cpf = N.cpf
inner join alura.itens_notas_fiscais I on N.numero = I.numero 
group by to_char (N.data_venda, 'YYYY/MM'),C.cpf,C.nome,c.volume_de_compra
having sum(i.quantidade) > C.VOLUME_DE_COMPRA
order by to_char (N.data_venda, 'YYYY/MM');	
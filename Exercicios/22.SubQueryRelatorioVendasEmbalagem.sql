/*
Modifique o relatório, mas agora para ver o ranking das vendas por tamanho. Dica: pode parecer difícil, mas este é o exercício mais fácil de resolver.
*/SELECT
    tamanhos.ano,
    tamanhos.tamanho,
    tamanhos.qtd,
    round((tamanhos.qtd / tot_embalagem.tot_qtd) * 100, 2) percentual_vendas
FROM
         (
        SELECT
            to_char(n.data_venda, 'YYYY') ano,
            p.tamanho,
            SUM(i.quantidade)             qtd
        FROM
                 alura.tabela_de_produtos p
            INNER JOIN alura.itens_notas_fiscais i ON p.codigo_do_produto = i.codigo_do_produto
            INNER JOIN alura.notas_fiscais       n ON i.numero = n.numero
        WHERE
            to_char(n.data_venda, 'YYYY') = 2016
        GROUP BY
            to_char(n.data_venda, 'YYYY'),
            p.tamanho
    ) tamanhos
    INNER JOIN (
        SELECT
            to_char(n.data_venda, 'YYYY') ano,
            SUM(i.quantidade)             tot_qtd
        FROM
                 alura.itens_notas_fiscais i
            INNER JOIN alura.notas_fiscais n ON i.numero = n.numero
        WHERE
            to_char(n.data_venda, 'YYYY') = 2016
        GROUP BY
            to_char(n.data_venda, 'YYYY')
    ) tot_embalagem ON tamanhos.ano = tot_embalagem.ano
ORDER BY
    round((tamanhos.qtd / tot_embalagem.tot_qtd) * 100, 2) DESC
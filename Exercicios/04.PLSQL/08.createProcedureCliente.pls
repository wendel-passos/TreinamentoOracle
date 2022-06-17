--Criação de procedure para incluir clientes na table 
CREATE OR REPLACE PROCEDURE incluir_cliente (
    p_id                   IN cliente.id%TYPE,
    p_razao_social         IN cliente.razao_social%TYPE,
    p_cnpj                 IN cliente.cnpj%TYPE,
    p_segmercado_id        IN cliente.segmercado_id%TYPE,
    p_faturamento_previsto IN cliente.faturamento_previsto%TYPE
) IS
BEGIN
    INSERT INTO cliente (
        id,
        razao_social,
        cnpj,
        segmercado_id,
        data_inclusao,
        faturamento_previsto,
        categoria
    ) VALUES (
        p_id,
        upper(p_razao_social),
        p_cnpj,
        p_segmercado_id,
        sysdate,
        p_faturamento_previsto,
        '000'
    );

END;

EXECUTE incluir_cliente(1, 'Dolinnho SA', '09933000145204', 1, 90000);

SELECT
    *
FROM
    cliente;
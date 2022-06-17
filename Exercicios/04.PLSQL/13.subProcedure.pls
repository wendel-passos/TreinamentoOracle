CREATE OR REPLACE PROCEDURE incluir_cliente (
    p_id                   IN cliente.id%TYPE,
    p_razao_social         IN cliente.razao_social%TYPE,
    p_cnpj                 IN cliente.cnpj%TYPE,
    p_segmercado_id        IN cliente.segmercado_id%TYPE,
    p_faturamento_previsto IN cliente.faturamento_previsto%TYPE
) IS
    v_categoria cliente.categoria%TYPE;
    v_cnpj      cliente.cnpj%TYPE := p_cnpj;
BEGIN
    v_categoria := categoria_cliente(p_faturamento_previsto);
    formata_cnpj(v_cnpj);
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
        v_cnpj,
        p_segmercado_id,
        sysdate,
        p_faturamento_previsto,
        upper(v_categoria)
    );

    COMMIT;
END;



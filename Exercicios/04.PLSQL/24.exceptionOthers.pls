CREATE OR REPLACE NONEDITIONABLE PROCEDURE incluir_cliente (
    p_id                   IN cliente.id%TYPE,
    p_razao_social         IN cliente.razao_social%TYPE,
    p_cnpj                 IN cliente.cnpj%TYPE,
    p_segmercado_id        IN cliente.segmercado_id%TYPE,
    p_faturamento_previsto IN cliente.faturamento_previsto%TYPE
) IS
    v_categoria cliente.categoria%TYPE;
    v_cnpj      cliente.cnpj%TYPE := p_cnpj;
    --Variavel para personalizar exception 
    e_null exception;
    pragma exception_init (e_null, -1400);
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
        sysdate + dbms_random.value(0, 366),
        p_faturamento_previsto,
        upper(v_categoria)
    );

    COMMIT;
EXCEPTION
    WHEN dup_val_on_index THEN
       Raise_application_error (
             -20300,
             'CLIENTE JÁ ESTÁ CADASTRADO'
           );
    WHEN e_null THEN
         Raise_application_error (
             -20301,
             'ID DO CLIENTE NÃO PODE SER NULO !!'
           );
    --Condição para erro genéricos
    WHEN others THEN 
        Raise_application_error (
             -20302,
             'ERRO GENERICO: '|| SQLERRM ()
           );
    
END;
CREATE OR REPLACE FUNCTION categoria_cliente (
    p_faturamento_previsto IN cliente.faturamento_previsto%TYPE
) RETURN cliente.categoria%TYPE IS
    v_categoria cliente.categoria%TYPE;
BEGIN
    IF p_faturamento_previsto < 10000 THEN
        v_categoria := 'Pequeno';
    ELSIF p_faturamento_previsto < 50000 THEN
        v_categoria := 'Médio';
    ELSIF p_faturamento_previsto < 100000 THEN
        v_categoria := 'Médio grande';
    ELSE
        v_categoria := 'Grande';
    END IF;

    RETURN v_categoria;
END;

--Testando função 

VARIABLE g_categoria VARCHAR2(110);

EXECUTE :g_categoria := categoria_cliente(6000)

PRINT g_categoria
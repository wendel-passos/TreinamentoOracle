--Loop For
DECLARE
    v_segmercado_id cliente.segmercado_id%TYPE := 3;
BEGIN
    FOR v_id IN 160..278 LOOP
        alterar_segmento_cliente(v_id, v_segmercado_id);
    END LOOP;
END;


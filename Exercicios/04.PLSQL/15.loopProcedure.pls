DECLARE
    v_segmercado_id cliente.segmercado_id%TYPE := 3;
    v_cont          NUMBER(3) := 1;
BEGIN
    LOOP
        alterar_segmento_cliente(v_cont, v_segmercado_id);
        v_cont := v_cont + 1;
        EXIT WHEN v_cont > 6;
    END LOOP;

    COMMIT;
END;
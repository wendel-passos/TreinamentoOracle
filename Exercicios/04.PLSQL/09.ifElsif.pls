SET SERVEROUTPUT ON

DECLARE
    v_faturamento_previsto cliente.faturamento_previsto%TYPE := 6000;
    v_categoria            cliente.categoria%TYPE;
BEGIN
    IF v_faturamento_previsto < 10000 THEN
        v_categoria := 'Pequeno';
    ELSIF v_faturamento_previsto < 50000 THEN
        v_categoria := 'Médio';
    ELSIF v_faturamento_previsto < 100000 THEN
        v_categoria := 'Médio grande';
    ELSE
        v_categoria := 'Grande';
    END IF;

    dbms_output.put_line('Categoria = ' || v_categoria);
END;
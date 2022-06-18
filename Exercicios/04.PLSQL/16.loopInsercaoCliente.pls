--Loop de iserção de clientes aleatórios
DECLARE
    v_cont        NUMBER(3) := 7;
    v_faturamento NUMBER(38) := 6000;
BEGIN
    LOOP
        incluir_cliente(v_cont, dbms_random.string('x', 8)
                                || ' SA', chr(trunc(dbms_random.value(49, 56)))
                                          || chr(trunc(dbms_random.value(49, 56)))
                                          || chr(trunc(dbms_random.value(49, 56)))
                                          || chr(trunc(dbms_random.value(49, 56)))
                                          || chr(trunc(dbms_random.value(49, 56)))
                                          || '0001'
                                          || chr(trunc(dbms_random.value(49, 56)))
                                          || chr(trunc(dbms_random.value(49, 56)))
                                          || chr(trunc(dbms_random.value(49, 56)))
                                          || chr(trunc(dbms_random.value(49, 56)))
                                          || chr(trunc(dbms_random.value(49, 56))), 1, v_faturamento);

        v_cont := v_cont + 1;
        v_faturamento := v_faturamento + 555;
        EXIT WHEN v_cont > 360;
    END LOOP;

    COMMIT;
END;
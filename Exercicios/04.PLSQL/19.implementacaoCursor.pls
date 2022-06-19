--Solução para tratar casos no qual o ID não segue um sequencial numerico.

--SET SERVEROUTPUT ON;

DECLARE
    CURSOR cur_cliente IS
    SELECT
        id
    FROM
        cliente;
    v_id    cliente.id%TYPE;
    v_segmercado_id cliente.segmercado_id%TYPE := 3;
BEGIN
    OPEN cur_cliente;
    LOOP
        FETCH cur_cliente INTO
            v_id;
        EXIT WHEN cur_cliente%notfound;
            --dbms_output.put_line('ID = ' || v_id);
            alterar_segmento_cliente(v_id, v_segmercado_id);
    END LOOP;

    CLOSE cur_cliente;
END;


select * from cliente
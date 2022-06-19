--Criação de cursor

SET SERVEROUTPUT ON;

DECLARE
    CURSOR cur_cliente IS
    SELECT
        id,
        razao_social
    FROM
        cliente;
    v_id    cliente.id%TYPE;
    v_razao cliente.razao_social%TYPE;
BEGIN
    OPEN cur_cliente;
    LOOP
        FETCH cur_cliente INTO
            v_id,
            v_razao;
        EXIT WHEN cur_cliente%notfound;
        dbms_output.put_line('ID = ' || v_id);
        dbms_output.put_line('Razao = ' || v_razao);
    END LOOP;

    CLOSE cur_cliente;
END;
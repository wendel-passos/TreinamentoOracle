--Simplificando a solução para tratar casos no qual o ID não segue um sequencial numerico.

--SET SERVEROUTPUT ON;

DECLARE
    CURSOR cur_cliente IS
    SELECT
        id
    FROM
        cliente;
    v_segmercado_id cliente.segmercado_id%TYPE := 2;
BEGIN
    FOR cli_rec IN cur_cliente LOOP
        --dbms_output.put_line('ID = ' || v_id);
        alterar_segmento_cliente(cli_rec.id, v_segmercado_id);
    END LOOP;
END;
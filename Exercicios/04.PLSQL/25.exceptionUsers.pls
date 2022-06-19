CREATE OR REPLACE NONEDITIONABLE PROCEDURE alterar_segmento_cliente (
    p_clienteid  cliente.id%TYPE,
    p_segmentoid cliente.segmercado_id%TYPE
) IS
    e_cliente_inexistente EXCEPTION;
BEGIN
    UPDATE cliente
    SET
        cliente.segmercado_id = p_segmentoid
    WHERE
        cliente.id = p_clienteid;

    IF SQL%notfound THEN
        RAISE e_cliente_inexistente;
    END IF;
    COMMIT;
EXCEPTION
    WHEN e_cliente_inexistente THEN
        raise_application_error(-20010, 'Cliente não existe');
END;
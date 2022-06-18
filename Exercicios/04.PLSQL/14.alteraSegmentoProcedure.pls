--Procedure para alteração de segmento de mercado 

CREATE OR REPLACE PROCEDURE alterar_segmento_cliente (
    p_clienteid  cliente.id%TYPE,
    p_segmentoid cliente.segmercado_id%TYPE
) IS
BEGIN
    UPDATE cliente
    SET
        cliente.segmercado_id = p_segmentoid
    WHERE
        cliente.id = p_clienteid;

    COMMIT;
END;


--Teste de procedure

--execute alterar_segmento_cliente (6,2);
--select * from cliente;
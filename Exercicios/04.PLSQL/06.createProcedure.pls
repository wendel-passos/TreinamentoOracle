--Criação de procedure de inserção

CREATE OR REPLACE PROCEDURE incluir_segmercado (
    p_id        IN segmercado.id%TYPE,
    p_descricao IN segmercado.descricao%TYPE
) IS
BEGIN
    INSERT INTO segmercado (
        id,
        descricao
    ) VALUES (
        p_id,
        upper(p_descricao)
    );

    COMMIT;
END;

--Submeter por meio de execute
EXECUTE incluir_segmercado(4, 'Farmaceutico');

--Submeter por meio de Begin / End

BEGIN
    incluir_segmercado(5, 'COnservador');
END;

--------------------------------------------------------------------------------

--Criação de procedure delete

CREATE OR REPLACE PROCEDURE deletar_segmercado (
    p_id IN segmercado.id%TYPE
    --,p_descricao IN segmercado.DESCRICAO%TYPE 
) IS
BEGIN
    DELETE segmercado
    WHERE
        id = p_id;

    COMMIT;
END;

--------------------------------------------------------------------------------

--Criação de procedure update

CREATE OR REPLACE PROCEDURE alterar_segmercado (
    p_id        IN segmercado.id%TYPE,
    p_id_alter  IN segmercado.id%TYPE,
    p_descricao IN segmercado.descricao%TYPE
) IS
BEGIN
    UPDATE segmercado
    SET
        descricao = upper(p_descricao),
        id = p_id_alter
    WHERE
        id = p_id;

    COMMIT;
END;
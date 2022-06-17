DECLARE
    v_id        NUMBER(5) := 3;
    v_descricao VARCHAR(100) := 'Esportistas';
BEGIN
    DELETE segmercado
    WHERE
        id = v_id;

    COMMIT;
END;
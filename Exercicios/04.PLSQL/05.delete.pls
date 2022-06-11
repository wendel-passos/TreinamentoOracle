DECLARE 
    v_ID NUMBER (5) := 3;
    v_DESCRICAO VARCHAR (100) := 'Esportistas';
BEGIN
    DELETE segmercado where id = v_ID;
    COMMIT;
END;



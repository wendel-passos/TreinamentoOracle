
DECLARE 
    --v_ID segmercado.id%type := 2;
    v_DESCRICAO segmercado.Descricao%type  := 'Atacado';
BEGIN
    update  segmercado set descricao =   v_DESCRICAO where id = 2;
    COMMIT;
END;
--PErcent type para evitar problemas com alteração de tamanho de campo na origem.
DECLARE 
    v_ID segmercado.id%type := 2;
    v_DESCRICAO segmercado.Descricao%type  := 'Varejo';
BEGIN
    INSERT INTO segmercado (ID,Descricao) values (V_ID,V_DESCRICAO);
    COMMIT;
END;

---Update

DECLARE 
    --v_ID segmercado.id%type := 2;
    v_DESCRICAO segmercado.Descricao%type  := 'Atacado';
BEGIN
    update  segmercado set descricao =   v_DESCRICAO where id = 2;
    COMMIT;
END;
--Tratamento para padronizar descrição 
DECLARE 
    v_ID segmercado.id%type := 2;
    v_DESCRICAO segmercado.Descricao%type  := 'Atacadistas';
BEGIN
    update  segmercado set descricao =  upper (v_DESCRICAO) where id =  v_ID;
    v_DESCRICAO := 'Varejistas';
    v_ID := 1;
    update  segmercado set descricao =  upper (v_DESCRICAO) where id =  v_ID;
    COMMIT;
END;

==
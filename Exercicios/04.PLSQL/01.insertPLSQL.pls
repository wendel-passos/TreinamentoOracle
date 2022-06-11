--insert into segmercado (ID,descricao) values (1, 'Varejo');
--delete from segmercado;


DECLARE 
    v_ID NUMBER (5) := 1;
    v_DESCRICAO VARCHAR (100) := 'Varejo';
BEGIN
    INSERT INTO segmercado (ID,Descricao) values (V_ID,V_DESCRICAO);
    COMMIT;
END;
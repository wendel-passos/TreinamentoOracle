--Transformar PLSSQL abaixo em função
SET SERVEROUTPUT ON

DECLARE
    v_id        segmercado.id%TYPE := 2;
    v_descricao segmercado.descricao%TYPE;
BEGIN
    SELECT
        descricao
    INTO v_descricao
    FROM
        segmercado
    WHERE
        id = v_id;

    dbms_output.put_line(v_descricao);
END;

----Implementando o programa em funcao 

CREATE OR REPLACE FUNCTION obter_descricao_segmercado (
    p_id IN segmercado.id%TYPE
) RETURN segmercado.descricao%TYPE IS
    v_descricao segmercado.descricao%TYPE;
BEGIN
    SELECT
        descricao
    INTO v_descricao
    FROM
        segmercado
    WHERE
        id = p_id;

    RETURN v_descricao;
END;

---Aploicacao de funcao utiliazando comando sqlplus

VARIABLE g_descricao VARCHAR2(100)

EXECUTE :g_descricao := obter_descricao_segmercado(1)

PRINT g_descricao

--Aploicacao de funcao utiliazando comando PLSQL

SET SERVEROUTPUT ON

declare
    v_descricao segmercado.descricao%type;
begin
    v_descricao := obter_descricao_segmercado(1); 
end;




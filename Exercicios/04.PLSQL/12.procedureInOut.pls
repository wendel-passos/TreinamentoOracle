CREATE OR REPLACE PROCEDURE formata_cnpj (
    p_cnpj IN OUT cliente.cnpj%TYPE
) IS
BEGIN
    p_cnpj := substr(p_cnpj, 1, 5)
              || '/'
              || substr(p_cnpj, 6, 4)
              || '.'
              || substr(p_cnpj, 9, 5);
END;

/*
testando procedure 

variable g_cnpj varchar2 (20)

execute formata_cnpj (:g_cnpj)

print :g_cnpj

analise 
select SUBSTR(cnpj,1,5)||'/'||SUBSTR(cnpj,6,4)||'.'||SUBSTR(cnpj,9,5)   from cliente
*/
/*
Veja o ano de nascimento dos clientes e classifique-os como:

Nascidos antes de 1990 são velhos
Nascidos entre 1990 e 1995 são jovens
Nascidos depois de 1995 são crianças
Liste o nome dos clientes e suas classificações.
*/

select cpf, nome,data_de_nascimento,
    (case 
        when to_char (data_de_nascimento,'YYYY') < '1990' then 'Publico Senior'
        when to_char (data_de_nascimento,'YYYY') between '1990' and '1995' then 'Publico Jovem'
        when to_char (data_de_nascimento,'YYYY') >  '1995' then 'Publico Kids'
    end) AS CATEGORIA
from tabela_de_clientes;
    
    
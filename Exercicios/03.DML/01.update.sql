
--Um cliente da nossa base de dados, com CPF 19290992743, se mudou para a Rua Jorge Emilio, 23, no bairro de Santo Amaro, cidade São Paulo, estado SP e CEP 8833223.
--Como seria o comando SQL para alterar esse registro na tabela CLIENTES?



update alura.clientes set endereco = 'Rua Jorge Emilio 23', bairro = 'Santo Amaro', cidade = 'São Paulo', estado = 'SP', cep = '8833223' where cpf = '19290992743';

--select * from alura.clientes;
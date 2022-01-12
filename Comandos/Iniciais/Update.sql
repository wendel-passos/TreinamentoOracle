--Comando de alteracao de registros
UPDATE tb_produtos SET EMBALAGEM = 'Lata', preco_lista = 2.46 WHERE produto = '544931';
UPDATE tb_produtos SET EMBALAGEM = 'Garrafa' WHERE produto = '1078680';

--Alteração de vendedores com aumento de comissão
UPDATE tb_vendedores SET percentual_comissao = 0.11 WHERE matricula = '00236';
UPDATE tb_vendedores SET percentual_comissao = 0.10 WHERE matricula = '00233';

--Alteração de vendedor com o nome divergente
UPDATE tb_vendedores SET nome = 'Jose Geraldo da Fonseca Junior' WHERE matricula = '00233';

--Alteração de registros na tabela de clientes 
update tb_clientes set nome = 'Julia Rodrigues Mourão',sexo = 'F' where cpf = '45714672344'; 
update tb_clientes set sexo = 'F' where cpf = '45714672844'; 








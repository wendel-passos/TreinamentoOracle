--Comando de inserção de dados
insert into tb_produtos (produto,nome,embalagem,tamanho,sabor,preco_lista) values ('1040107','Light - 350 ml - Melancia', 'Lata','350 ml','Melancia',4.56);
insert into tb_produtos (produto,nome,embalagem,tamanho,sabor,preco_lista) values ('1000889','Sabor da Montanha - 700 ml - Uva', 'Garrafa','350 ml','Uva',6.31);
insert into tb_produtos (produto,nome,embalagem,tamanho,sabor,preco_lista) values ('1004327','Videira do Campo - 1,5 Litros - Melância', 'PET','1.5 litros','Melancia',19.51);


---Table de vendedores
insert into tb_vendedores(matricula,nome,percentual_comissao) values ('00233','Jose da Fonseca',0.10);
insert into tb_vendedores(matricula,nome,percentual_comissao) values ('00235','Marcio Almeida Silva',0.8);
insert into tb_vendedores(matricula,nome,percentual_comissao) values ('00236','Claudia Morais',0.8);


--Table de Clientes 
insert into tb_clientes 
(cpf,nome,rua,endereco1,endereco2,bairro,cidade,estado,cep,idade,sexo,limite_credito,volume_compra,primeira_compra,data_nascimento) values
('45714672845','Werner Lacerda Campos','AV Bom Retiro','Rua Nazare','AV Calim Eid','Limao','Sao Paulo','SP','03568030',25,'M',2000,10000,0,'20-AGO-96');
insert into tb_clientes 
(cpf,nome,rua,endereco1,endereco2,bairro,cidade,estado,cep,idade,sexo,limite_credito,volume_compra,primeira_compra,data_nascimento) values
('45714672844','Vanessa Iuda Ramos','AV Bom Retiro','Rua Nazare','AV Calim Eid','Limao','Sao Paulo','SP','03568030',25,'M',2000,10000,0,'01-AGO-97');

--Utilizando a função TO_DATE para inserção correta no campo data
insert into tb_clientes 
(cpf,nome,rua,endereco1,endereco2,bairro,cidade,estado,cep,idade,sexo,limite_credito,volume_compra,primeira_compra,data_nascimento) values
('45714672344','Vanessa Iuda Ramos','AV Bom Retiro','Rua Nazare','AV Calim Eid','Limao','Sao Paulo','SP','03568030',25,'M',2000,10000,0,to_date ('19/04/1997','DD/MM/YYYY'));




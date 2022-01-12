/*
Vamos incluir novos campos na tabela de vendedores.
Eles ser�o a data de admiss�o (nome do campo DATA_ADMISSAO)
e se o vendedor est� ou n�o de f�rias (nome do campo DE_FERIAS).

N�o esque�a de recriar a chave prim�ria e depois inclua as informa��es abaixo:

Matr�cula - 00235
Nome: M�rcio Almeida Silva
Comiss�o: 8%
Data de admiss�o: 15/08/2014
Est� de f�rias? N�o

Matr�cula - 00236
Nome: Cl�udia Morais
Comiss�o: 8%
Data de admiss�o: 17/09/2013
Est� de f�rias? Sim

Matr�cula - 00237
Nome: Roberta Martins
Comiss�o: 11%
Data de admiss�o: 18/03/2017
Est� de f�rias? Sim

Matr�cula - 00238
Nome: P�ricles Alves
Comiss�o: 11%
Data de admiss�o: 21/08/2016
Est� de f�rias? N�o 

*/
--Incluindo novos campos na tabela
Alter table tb_vendedores add DATA_ADMISSAO date add DE_FERIAS number (1,0);

--Inser��o dos registros atualizados
insert into tb_vendedores (matricula,nome,percentual_comissao,data_admissao,de_ferias)values 
('00235','Marcio Almeida Silva',0.08,to_date('01-10-1990','DD-MM-YYYY'),0);

insert into tb_vendedores (matricula,nome,percentual_comissao,data_admissao,de_ferias)values 
('00236','Claudia Morais',0.11,to_date('01-10-1990','DD-MM-YYYY'),1);

insert into tb_vendedores (matricula,nome,percentual_comissao,data_admissao,de_ferias)values 
('00237','Roberta Martins',0.11,to_date('18-03-2017','DD-MM-YYYY'),1);

insert into tb_vendedores (matricula,nome,percentual_comissao,data_admissao,de_ferias)values 
('00238','Pericles Alves',0.11,to_date('21-08-2016','DD-MM-YYYY'),1);

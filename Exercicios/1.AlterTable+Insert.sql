/*
Vamos incluir novos campos na tabela de vendedores.
Eles serão a data de admissão (nome do campo DATA_ADMISSAO)
e se o vendedor está ou não de férias (nome do campo DE_FERIAS).

Não esqueça de recriar a chave primária e depois inclua as informações abaixo:

Matrícula - 00235
Nome: Márcio Almeida Silva
Comissão: 8%
Data de admissão: 15/08/2014
Está de férias? Não

Matrícula - 00236
Nome: Cláudia Morais
Comissão: 8%
Data de admissão: 17/09/2013
Está de férias? Sim

Matrícula - 00237
Nome: Roberta Martins
Comissão: 11%
Data de admissão: 18/03/2017
Está de férias? Sim

Matrícula - 00238
Nome: Péricles Alves
Comissão: 11%
Data de admissão: 21/08/2016
Está de férias? Não 

*/
--Incluindo novos campos na tabela
Alter table tb_vendedores add DATA_ADMISSAO date add DE_FERIAS number (1,0);

--Inserção dos registros atualizados
insert into tb_vendedores (matricula,nome,percentual_comissao,data_admissao,de_ferias)values 
('00235','Marcio Almeida Silva',0.08,to_date('01-10-1990','DD-MM-YYYY'),0);

insert into tb_vendedores (matricula,nome,percentual_comissao,data_admissao,de_ferias)values 
('00236','Claudia Morais',0.11,to_date('01-10-1990','DD-MM-YYYY'),1);

insert into tb_vendedores (matricula,nome,percentual_comissao,data_admissao,de_ferias)values 
('00237','Roberta Martins',0.11,to_date('18-03-2017','DD-MM-YYYY'),1);

insert into tb_vendedores (matricula,nome,percentual_comissao,data_admissao,de_ferias)values 
('00238','Pericles Alves',0.11,to_date('21-08-2016','DD-MM-YYYY'),1);

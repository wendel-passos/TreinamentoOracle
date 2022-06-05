select * from ALURA.tb_vendedores;



--insert into ALURA.tb_vendedores values ('00239','Alisson Santos',0.11, TO_DATE('2020/01/05','YYYY/MM/DD'), 0 , 'Tijuca');



--select * from ALURA.tb_vendedores TV inner join alura.vendedores V
--on v.matricula = SUBSTR (TV.matricula,3,3);

--Solução de update com inner join 

update alura.vendedores V set v.ferias = (select tv.de_ferias from alura.tb_vendedores TV
where V.matricula = SUBSTR (TV.matricula,3,3)) where exists (select * from alura.tb_vendedores TV
where V.matricula = SUBSTR (TV.matricula,3,3));



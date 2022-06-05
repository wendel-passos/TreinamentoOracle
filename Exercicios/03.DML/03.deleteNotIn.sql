/*

INSERT INTO alura.produtos (CODIGO,DESCRITOR,SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
     VALUES ('1001001','Sabor dos Alpes 700 ml - Manga','Manga','700 ml','Garrafa',7.50);
	 
	   INSERT INTO alura.produtos (CODIGO,DESCRITOR,SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
     VALUES ('1001000','Sabor dos Alpes 700 ml - Mel�o','Mel�o','700 ml','Garrafa',7.50);
	 
	   INSERT INTO alura.produtos (CODIGO,DESCRITOR,SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
     VALUES ('1001002','Sabor dos Alpes 700 ml - Graviola','Graviola','700 ml','Garrafa',7.50);
	 
	  INSERT INTO alura.produtos (CODIGO,DESCRITOR,SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
     VALUES ('1001003','Sabor dos Alpes 700 ml - Tangerina','Tangerina','700 ml','Garrafa',7.50);
	 
	  INSERT INTO alura.produtos (CODIGO,DESCRITOR,SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
     VALUES ('1001004','Sabor dos Alpes 700 ml - Abacate','Abacate','700 ml','Garrafa',7.50);
	 
	  INSERT INTO alura.produtos (CODIGO,DESCRITOR,SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
     VALUES ('1001005','Sabor dos Alpes 700 ml - A�ai','A�ai','700 ml','Garrafa',7.50);
	 
	  INSERT INTO alura.produtos (CODIGO,DESCRITOR,SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
     VALUES ('1001006','Sabor dos Alpes 1 Litro - Manga','Manga','1 Litro','Garrafa',7.50);
	 
	  INSERT INTO alura.produtos (CODIGO,DESCRITOR,SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
     VALUES ('1001007','Sabor dos Alpes 1 Litro - Mel�o','Mel�o','1 Litro','Garrafa',7.50);
	 
	  INSERT INTO alura.produtos (CODIGO,DESCRITOR,SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
     VALUES ('1001008','Sabor dos Alpes 1 Litro - Graviola','Graviola','1 Litro','Garrafa',7.50);
	 
	  INSERT INTO alura.produtos (CODIGO,DESCRITOR,SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
     VALUES ('1001009','Sabor dos Alpes 1 Litro - Tangerina','Tangerina','1 Litro','Garrafa',7.50);
	 
	  INSERT INTO alura.produtos (CODIGO,DESCRITOR,SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
     VALUES ('1001010','Sabor dos Alpes 1 Litro - Abacate','Abacate','1 Litro','Garrafa',7.50);
	
 */
      
--Delete para remo��o das diferen�as entre as tabelas
DELETE alura.produtos
WHERE
    codigo NOT IN (
        SELECT
            tbp.codigo_do_produto
        FROM
            alura.tb_produtos tbp
    )
    
commit
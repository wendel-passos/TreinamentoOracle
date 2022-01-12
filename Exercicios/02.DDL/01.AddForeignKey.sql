/*
Através da linha de comando, como seriam os comandos para criar uma chave estrangeira ligando
a tabela de PRODUTOS com a tabela de ITENS_NOTA, através do campo CODIGO, e outra ligação
entre a tabela NOTAS e ITENS_NOTA, através do campo NUMERO?
*/

ALTER TABLE ALURA.ITENS
ADD CONSTRAINT FK_PRODUTOS
FOREIGN KEY (CODIGO) REFERENCES ALURA.PRODUTOS (CODIGO);


ALTER TABLE ALURA.ITENS
ADD CONSTRAINT FK_NOTAS
FOREIGN KEY (NUMERO) REFERENCES ALURA.notas (NUMERO);
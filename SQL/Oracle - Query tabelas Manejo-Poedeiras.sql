SELECT * FROM avfscra1

/*CADASTRO LOTE*/
SELECT * FROM AVFSLOT1 where COD_LOTE_NUM=5188 --CADASTRO DE LOTE
SELECT * FROM AVFSALO1 WHERE COD_LOTE_NUM=5188 --ALOJAMENTO

/*MOVIMENTA��O*/
SELECT * FROM AVFSMBO1 WHERE COD_LOTE_NUM=5188 --MOVIMENTA��O
SELECT * FROM avfssda1 WHERE COD_LOTE_NUM=5188 --SALDO
SELECT * FROM AVFSMCR1 WHERE COD_LOTE_NUM=5188 --MOVIMENTO DE CONSUMO DE RA��O

SELECT * FROM AVFSMPE1 WHERE COD_LOTE_NUM=5188 --PESAGEM


/*CADASTROS B�SICOS*/
SELECT * FROM AVFSCAU1 --WHERE COD_LOTE_NUM=5188 --CAUSA
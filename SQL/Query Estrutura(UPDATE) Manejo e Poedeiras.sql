SELECT DISTINCT 
	A.COD_LOTE_NUM, A.nro_lote, A.MAXDATA, A.MAX_QTD_FEMEAS, A.MAX_QTD_MACHOS,
	B.COD_LOTE_NUM, B.nro_lote, B.MAXDATA, B.MAX_QTD_FEMEAS, B.MAX_QTD_MACHOS
FROM 
(select DAT.COD_LOTE_NUM, LOT.nro_lote, max(DAT.data) 'MAXDATA', MAX(DAT.qtd_femeas) 'MAX_QTD_FEMEAS',MAX(DAT.qtd_machos) 'MAX_QTD_MACHOS'
from avfslot1 lot 
inner join avfssda1 DAT on lot.COD_LOTE_NUM = DAT.COD_LOTE_NUM
 
--where DAT.COD_LOTE_NUM in (77,78)
GROUP BY DAT.COD_LOTE_NUM, LOT.nro_lote) 

A INNER JOIN 

(select DAT.COD_LOTE_NUM, LOT.nro_lote, max(DAT.data) 'MAXDATA', MAX(DAT.qtd_femeas) 'MAX_QTD_FEMEAS',MAX(DAT.qtd_machos) 'MAX_QTD_MACHOS'
from avfslot1 lot 
inner join avfssda1 DAT on lot.COD_LOTE_NUM = DAT.COD_LOTE_NUM
 
--where DAT.COD_LOTE_NUM in (77,78)
GROUP BY DAT.COD_LOTE_NUM, LOT.nro_lote) B ON A.nro_lote = B.nro_lote

WHERE
A.MAX_QTD_FEMEAS <> B.MAX_QTD_FEMEAS OR A.MAX_QTD_MACHOS <> B.MAX_QTD_MACHOS
--A.nro_lote='200'

ORDER BY 1

/*********************************************************************************************************************************************/

/*ABERTURA DE LOTE*/

DELETE FROM Avfslot1 WHERE cod_lote_num = 87 --where COD_LOTE_NUM in (87, 85) --lote
--DELETE FROM avfsalo1 WHERE cod_lote_num = 87 --alojamento

/*DIÁRIO*/
UPDATE avfsalo1 SET COD_LOTE_NUM = 28 WHERE cod_lote_num = 87
UPDATE avfssda1 SET COD_LOTE_NUM = 28 WHERE cod_lote_num = 87
UPDATE avfsdat1 SET COD_LOTE_NUM = 28 WHERE cod_lote_num = 87
UPDATE avfsmbo1 SET COD_LOTE_NUM = 28 WHERE cod_lote_num = 87
UPDATE avfsmcr1 SET COD_LOTE_NUM = 28 WHERE cod_lote_num = 87
UPDATE avfsmpo1 SET COD_LOTE_NUM = 28 WHERE cod_lote_num = 87
UPDATE avfsape1 SET COD_LOTE_NUM = 28 WHERE cod_lote_num = 87
UPDATE avfsmpb1 SET COD_LOTE_NUM = 28 WHERE cod_lote_num = 87
UPDATE avfsmpe1 SET COD_LOTE_NUM = 28 WHERE cod_lote_num = 87

/*FECHAMENTO SEMANAL*/
UPDATE avfsdes1 SET COD_LOTE_NUM = 28 WHERE cod_lote_num = 87
UPDATE avfsras1 SET COD_LOTE_NUM = 28 WHERE cod_lote_num = 87
UPDATE avfsrra1 SET COD_LOTE_NUM = 28 WHERE cod_lote_num = 87
UPDATE avfsaai1 SET COD_LOTE_NUM = 28 WHERE cod_lote_num = 87
UPDATE avfsaap1 SET COD_LOTE_NUM = 28 WHERE cod_lote_num = 87

/*
SELECT * FROM avfsalo1 WHERE cod_lote_num IN (28)
delete FROM avfslot1 WHERE cod_lote_num IN (58,59,60,61,62,72,73)
*/

SELECT lot.nro_lote, lot.COD_LOTE_NUM, alo.COD_LOTE_NUM FROM Avfslot1 lot
LEFT JOIN avfsalo1 alo ON lot.COD_LOTE_NUM = alo.COD_LOTE_NUM
WHERE
alo.COD_LOTE_NUM IS NULL

SELECT * FROM Avfslot1 WHERE cod_lote_num = 26
SELECT * FROM avfsalo1 WHERE cod_lote_num = 26
/*ABERTURA DE LOTE*/
select * from avfslot1 where cod_lote_num in (11,12,13,15,17,18,19,20,28,30,31,32,47) --where COD_LOTE_NUM in (86, 85) --lote
select * from avfsalo1 where cod_lote_num in (11,12,13,15,17,18,19,20,28,30,31,32,47) --alojamento

/*DIÁRIO*/
select  max(DAT.data) 'MAXDATA', MAX(DAT.qtd_femeas) 'MAX_QTD_FEMEAS',MAX(DAT.qtd_machos) 'MAX_QTD_MACHOS' from avfssda1 DAT where DAT.COD_LOTE_NUM in (77,78)
select * from avfssda1 where cod_lote_num in (11,12,13,15,17,18,19,20,28,30,31,32,47)
select * from avfsdat1 where cod_lote_num in (11,12,13,15,17,18,19,20,28,30,31,32,47)
select * from avfsmbo1 where cod_lote_num in (11,12,13,15,17,18,19,20,28,30,31,32,47)
select * from avfsmcr1 where cod_lote_num in (11,12,13,15,17,18,19,20,28,30,31,32,47)
select * from avfsmpo1 where cod_lote_num in (11,12,13,15,17,18,19,20,28,30,31,32,47)
select * from avfsape1 where cod_lote_num in (11,12,13,15,17,18,19,20,28,30,31,32,47)
select * from avfsmpb1 where cod_lote_num in (11,12,13,15,17,18,19,20,28,30,31,32,47)
select * from avfsmpe1 where cod_lote_num in (11,12,13,15,17,18,19,20,28,30,31,32,47)

/*FECHAMENTO SEMANAL*/
select * from avfsdes1 where cod_lote_num in (11,12,13,15,17,18,19,20,28,30,31,32,47)
select * from avfsras1 where cod_lote_num in (11,12,13,15,17,18,19,20,28,30,31,32,47)
select * from avfsaai1 where cod_lote_num in (11,12,13,15,17,18,19,20,28,30,31,32,47)
select * from avfsaap1 where cod_lote_num in (11,12,13,15,17,18,19,20,28,30,31,32,47)

/*
select distinct cod_lote_num from avfsdat1
select distinct cod_lote_num, * from avfsmpe1 where COD_LOTE_NUM in (77,78) and dat_prevista='2019-10-27 00:00:00.000' order by 1
select distinct cod_lote_num from avfsmcr1
*/






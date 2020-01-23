/*frango*/
SELECT sum(quantidade) FROM dbfc.ufc.fcfsera0 WHERE cod_racao=232 AND nro_lote=10714 --50215

select * from dbfc.ufc.fcfscra0 -- qtd consumida e sobra

/*fabrica de ração*/

SELECT lote, cod_produto, COMPROVANTE_ENTREGA, quantidade, * FROM FRFSCEG1 c WHERE COMPROVANTE_ENTREGA = '10714' and lote in (29822,29824) --comprovante de entrega sum(qtd_dosada)

SELECT versao, LOTE_INTERNO, LOTE_PRODUCAO, * FROM FRFSCMR1 P WHERE lote_interno in (29822,29824,13940 ) --consumo  

SELECT LOTE_PRODUCAO,sum(qtd_dosada) FROM frfsdma1 where LOTE_PRODUCAO in (29821,29823) group by LOTE_PRODUCAO --detalhe






/*SELECT * from FRFSCEG1 WHERE COMPROVANTE_ENTREGA= 10714  order by data_expedicao

select * from FRFSCMR1 where LOTE_INTERNO=29822 

select  from FRFSDMA1 where versao=50218 and LOTE_PRODUCAO=29821 */



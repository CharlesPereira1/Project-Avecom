SELECT * from
FRFSCEG1 WHERE COMPROVANTE_ENTREGA= 10714  order by data_expedicao--comprovante de entrega

select * from FRFSCMR1 where LOTE_INTERNO=29822 --consumo 

select sum(qtd_dosada) from FRFSDMA1 where versao=50218 and LOTE_PRODUCAO=29821 --detalhe


select sum(quantidade) from dbfc.ufc.fcfsera0 where nro_lote=10714

SELECT sum(quantidade) FROM fcfsera0 WHERE cod_racao=232 AND nro_lote=10714 --50215


SELECT lote, cod_produto, COMPROVANTE_ENTREGA,* FROM FRFSCEG1 c WHERE COMPROVANTE_ENTREGA = '10714' and lote in (29822,29824)

SELECT versao, LOTE_INTERNO, LOTE_PRODUCAO, * FROM FRFSCMR1 P WHERE lote_interno in ('29822','29824') 

SELECT LOTE_PRODUCAO,sum(qtd_dosada) FROM frfsdma1 where LOTE_PRODUCAO in (29821,29823) group by LOTE_PRODUCAO


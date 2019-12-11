/*
* PROCESSOS PARA VERIFICAR DADOS INCORRETOS
* 1 - VERIFICAR O CAMPO NA QUERY QUE EST� DANDO A INCONSISTENCIA
* 2 - VERIFICAR APENAS A TABELA SE EST� TRAZENDO DADOS DE ACORDO COM A QUERY
* 3 - VERIFICAR RELA��ES GERAIS PARA VER SE � APENAS AQUELE DADO LAN�ADO NAQUELE DIA QUE EST� PROBLEMATIVO
* 4 - APLICAR SOLU��O
*/

/*QUERY TOTAL*/

select sum(A.tot_venda)
from
(
select cod_lote_num, sum( qtd_pinto_com_mis_pri ) tot_venda
from cifsecr1 
where dat_incub='02/11/2019'
group by COD_LOTE_NUM
) A

/*QUERY DO RELAT�RIO*/
select sum(B.tot_venda)
from
(
select ecr.cod_lote_num, sum( qtd_pinto_com_mis_pri ) tot_venda
from
  cifsecr1 ecr,
  avfvlot lot

where
  lot.cod_lote_num = ecr.cod_lote_num
  and ecr.dat_incub='02/11/2019'
group by ecr.cod_lote_num
) B

--1019347614 
--1019331304
--17996

/* VINCULOS COM DADOS COD_LOTE_NUM
 DELETE FROM cifsecr1 WHERE cod_lote_num=17996 
 DELETE FROM CIFSECM1 WHERE cod_lote_num=17996
  DELETE FROM CIFSECr1 WHERE cod_lote_num=17996  
  DELETE FROM CIFSPIR1 WHERE cod_lote_num=17996
  DELETE FROM CIFSSPR1 WHERE cod_lote_num=17996
  
  SELECT * FROM CIFSTRE1 WHERE cod_lote_num=17996
*/
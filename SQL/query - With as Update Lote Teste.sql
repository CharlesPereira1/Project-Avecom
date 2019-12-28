---------------------
WITH CTE as
    (
		SELECT COD_LOTE_NUM, COD_REGISTRO, dat_inicio, data_teste from avfstlo1
	)

UPDATE B 
   SET B.data_teste = a.dat_inicio
  FROM avfstlo1 B
         INNER JOIN CTE AS A ON A.COD_LOTE_NUM = B.COD_LOTE_NUM AND B.COD_REGISTRO = A.COD_REGISTRO

---------------------

Select lot.Cod_Lote_Num,
           lot.Dat_Inicio, lot.Cod_Registro, 
          lot.Obs_Teste, 
          lot.Obs_Conclusao, dat.idade, dat.dat_inicio, dat.dat_fim 
from avfstlo1 lot, avfsdat1 dat
where lot.cod_lote_num = 9200 and lot.cod_lote_num = dat.cod_lote_num 
and '2020-05-21 00:00:00.000' between dat.dat_inicio and dat.dat_fim
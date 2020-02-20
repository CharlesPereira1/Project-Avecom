USE [DBCI]
GO
select distinct tlo.cod_lote_num, case when tlo.dat_inicio is null then data_teste else tlo.dat_inicio end data_evento,
       CASE 
                  WHEN TLO.idade = 0 THEN (SELECT idade 
                                           FROM   DBAV.UAV.avfsdat1 d 
                                           WHERE 
                  d.cod_lote_num = tlo.cod_lote_num 
                  AND tlo.data_teste BETWEEN 
                      d.dat_inicio AND d.dat_fim) 
                  ELSE TLO.idade 
                END  'idade',
	   obs_teste evento,
	   obs_conclusao consequencia   
  from dbav.uav.avfstlo1 tlo,
       dbav.uav.avfsdat1 dat
 where tlo.cod_lote_num = dat.cod_lote_num
   --and tlo.dat_inicio between dat.dat_inicio and dat.dat_fim
   and tlo.origem = 'INC'

GO
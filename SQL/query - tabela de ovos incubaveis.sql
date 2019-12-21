/*qryInc*/
SELECT distinct
  dpo.dat_movto,  
  sum(dpo.qtd_ovos_aprov) SomaOvosIncub,
  convert(float,sum(dpo.qtd_ovos_aprov)) / sum(qtd_ovos_coleta) * 100 Perc_Aproveitamento,
  (SELECT sum(qtd_ovos_aprov)
   FROM avfsdpo1
   WHERE cod_lote_num = 116
     and dat_movto <=  dpo.dat_movto) SomaOvosIncubAcum

FROM avfsdpo1 dpo

WHERE 
      dpo.cod_lote_num = 116
  --and @dat_inicio <= dpo.dat_movto
  and dpo.dat_movto = '2019-01-13 00:00:00.000'  

GROUP BY dat_movto

select qtd_ovos_aprov, qtd_ovos_cama, * from avfsdpo1 where cod_lote_num = 116 and DAT_MOVTO = '2019-01-13 00:00:00.000'
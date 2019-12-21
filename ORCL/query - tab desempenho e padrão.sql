/*qryDes - CampoObt*/
select peso_obtido_fem, x.ovo_ave_incub_sem_inc, x.ovo_ave_incub_aloj,--ovo_inc_ave,
  ((1.00) * X.grama_obtida_fem / 1 ) racao_fem,
  ((100.00) * Y.INCUB_OVOS_SEM / Y.NATUR_OVOS_SEM) ovo_incub,
  ((1.00) * X.grama_obtida_mac / 1 ) racao_mac, x.* 
from avfsdes1 X, avfsras1 Y
where X.cod_lote_num = :Cod_Lote_Num
and x.cod_lote_num = Y.cod_lote_num
and x.idade = y.idade
select * from avfsras1
select * from avfsdes1

select 


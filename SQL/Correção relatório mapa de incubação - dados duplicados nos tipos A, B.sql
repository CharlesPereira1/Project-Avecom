--declare @dat_incub datetime
--declare @cod_inc_depto char(2)
--declare @Vquebra int
--select @dat_incub = :dat_incub
--select @cod_inc_depto = :cod_inc_depto
--select @Vquebra = :Vquebra

select dtDigitacao, incubatorio,COD_LINHA,tp,NRO_MAQ_INC,ide_ave,--ident
COD_LOTE_NUM,COD_LF,endereco,sum(qtd_ovo * sem) / sum(qtd_ovo) sem , sum(qtd_ovo) qtd_ovo,sum(qtd_ovo * estocagem) / sum(qtd_ovo)  estocagem , min(menor_post)menor_post, max(maior_post)maior_post, sum(qtd_ovo * idade) / sum(qtd_ovo) idade , COD_INC_DEPTO,qtd_ovo_band,sum(pintos_prev) pintos_prev, min(hor_incub) hor_incub,--, hor_incub, --quebra, 
round(sum(qtd_ovo)/ qtd_ovo_band,0) qtd_band
,isnull((select sum(qtd_ovo) from cifsinc1 in1 where in1.cod_inc_depto = tab.cod_inc_depto and in1.cod_lote_num = tab.cod_lote_num and in1.dat_incub between '2019-12-06' and '2019-12-06' and in1.nro_maq_inc = tab.nro_maq_inc  and in1.cod_ovo = 'A' and tab.hor_incub = in1.hor_incub), 0) qtd_tipo1
,isnull((select sum(qtd_ovo) from cifsinc1 in1 where in1.cod_inc_depto = tab.cod_inc_depto and in1.cod_lote_num = tab.cod_lote_num and in1.dat_incub between '2019-12-06' and '2019-12-06' and in1.nro_maq_inc = tab.nro_maq_inc  and in1.cod_ovo = 'B' and tab.hor_incub = in1.hor_incub), 0) qtd_tipo2
,isnull((select sum(qtd_ovo) from cifsinc1 in1 where in1.cod_inc_depto = tab.cod_inc_depto and in1.cod_lote_num = tab.cod_lote_num and in1.dat_incub between '2019-12-06' and '2019-12-06' and in1.nro_maq_inc = tab.nro_maq_inc  and in1.cod_ovo = 'C' and tab.hor_incub = in1.hor_incub), 0) qtd_tipo3
,isnull((select sum(qtd_ovo) from cifsinc1 in1 where in1.cod_inc_depto = tab.cod_inc_depto and in1.cod_lote_num = tab.cod_lote_num and in1.dat_incub between '2019-12-06' and '2019-12-06' and in1.nro_maq_inc = tab.nro_maq_inc  and in1.cod_ovo = 'G' and tab.hor_incub = in1.hor_incub), 0) qtd_tipo4
,isnull((select sum(qtd_ovo) from cifsinc1 in1 where in1.cod_inc_depto = tab.cod_inc_depto and in1.cod_lote_num = tab.cod_lote_num and in1.dat_incub between '2019-12-06' and '2019-12-06' and in1.nro_maq_inc = tab.nro_maq_inc  and in1.cod_ovo = 'PIN' and tab.hor_incub = in1.hor_incub), 0) qtd_pequeno
  from (
select loc.nome incubatorio, isnull(format(inc.dat_digit, 'dd/MM/yyyy HH:mm'), '') dtDigitacao--, case when :parametro =  0 then chave
        --else ide_ave + ' ' + nro_lote +' '  end ident
		, inc.tip_incub TP,inc.nro_maq_inc,
  inc.cod_lote_num,  cod_lf ,
  (select cod_local +' '+ cod_granja +' '+ cod_grupo +' '+ cod_galinheiro from avfvend edr where edr.cod_lote_num = inc.cod_lote_num and min(inc.dat_post) between edr.dat_inicio and edr.dat_fim) endereco,
   1.00 * sum(inc.idade*inc.qtd_ovo) / sum(inc.qtd_ovo) sem,  sum(inc.qtd_ovo) as qtd_ovo ,cod_ovo,
  1.00 * sum(  convert(int,inc.dat_incub - inc.dat_post) *inc.qtd_ovo) / sum(inc.qtd_ovo) estocagem,
  min(inc.dat_post) menor_post,
  max(inc.dat_post) maior_post  ,
  inc.dat_incub,
  inc.idade,inc.cod_inc_depto, isnull( (select max(x.qtd_ovo_bandeja) from cifstmi1 x, cifsmqi1 y where x.cod_maq_inc = y.cod_maq_inc and y.nro_maq_inc = inc.nro_maq_inc and y.cod_inc_depto = inc.cod_inc_depto  and y.cod_inc_depto = inc.cod_inc_depto) ,0)  qtd_ovo_band,
  round(sum(inc.qtd_ovo) * (select  max(x.pct_eclosao_prev) from cifspnp1 x where x.cod_ovo = inc.cod_ovo and x.dat_incub = inc.dat_incub and x.cod_lote_num = inc.cod_lote_num and x.cod_inc_depto = inc.cod_inc_depto and x.idade = inc.idade)/100.0,0) pintos_prev
   ,min(hor_incub) hor_incub
--,case @Vquebra when 1 then convert(char(3), inc.nro_maq_inc) else convert(char(3), lot.cod_linha) end as quebra
, ceiling(1.0*sum(inc.qtd_ovo) / isnull( (select max(x.qtd_ovo_bandeja) from cifstmi1 x, cifsmqi1 y where x.cod_maq_inc = y.cod_maq_inc and y.nro_maq_inc = inc.nro_maq_inc and y.cod_inc_depto = inc.cod_inc_depto), 96)) qtd_band
 , lot.ide_ave   --,lot.chave    
 ,LOT.COD_LINHA
from
     avfvlot lot, cifsloc1 loc,
     cifsinc1  inc
where inc.cod_inc_depto = loc.cod_inc_depto   and lot.cod_lote_num  = inc.cod_lote_num --and inc.cod_inc_depto = @cod_inc_depto
 --and inc.dat_incub    between @dat_incub and :dat_incub_f
 and inc.dat_incub    between '2019-12-06' and '2019-12-06'





group by  loc.nome,  inc.cod_inc_depto,   inc.tip_incub,  lot.ide_ave,   lot.nro_lote,  lot.cod_lm,  lot.cod_lf, inc.dat_digit,
 lot.nro_est, lot.ide_espec,   inc.cod_lote_num,   inc.nro_maq_inc,          inc.dat_incub,   inc.idade,cod_ovo   --,lot.chave 
 ,LOT.COD_LINHA
 ) as tab

group by incubatorio,tp,NRO_MAQ_INC,ide_ave--,ident
,COD_LOTE_NUM,COD_LF,endereco,  COD_INC_DEPTO,qtd_ovo_band, hor_incub,
--quebra ,chave  ,
COD_LINHA, dtDigitacao














 


 

 

 

 
 
 
 

 
 
 






 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

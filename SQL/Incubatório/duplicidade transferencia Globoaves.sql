select * from (
select *,isnull((
                    SELECT sum(dro.qtd_post_receb)
                      From   CIFSREC1 rec , cifsdro1 dro
                     where  dro.hor_rec       = rec.hor_rec
                            and dro.dat_rec       = rec.dat_rec
                            and dro.cod_inc_depto  = rec.cod_inc_depto 
                            and dro.cod_lote_num  = rec.cod_lote_num
                            and dro.dat_post      = rec.dat_post
                            and dro.cod_tip      = tnc.cod_tip 
                            and dro.cod_inc_depto_orig  = rec.cod_inc_depto_orig 
                            and dro.dat_rec_orig =  tnc.dat_rec
                            and dro.hor_rec_orig =  tnc.hor_rec
                            and rec.NRO_NT             = tnc.NRO_NT
                            and rec.cod_inc_depto    = tnc.cod_inc_depto_dest 
                            and rec.cod_lote_num       = tnc.cod_lote_num
                            and rec.dat_post           = tnc.dat_post
                            and rec.cod_inc_depto_orig  = tnc.COD_INC_DEPTO_ORIG 
                            and rec.dat_transf         = tnc.dat_transf
                            and rec.HOR_TRANSF         = tnc.HOR_TRANSF  ---aqui o problema




                    ),0) ja_recebido  from cifstnc1 tnc
where  --cod_inc_depto_dest=51 and

tnc.COD_INC_DEPTO_ORIG = 51
and tnc.DAT_TRANSF between '2020-01-02' and '2020-01-02'
and tnc.DAT_POST IN ('2019-12-28 00:00:00.000', '2019-12-29 00:00:00.000')

--and tnc.DAT_TRANSF between '2019-12-18' and '2020-01-02'
--and tnc.QTD_TRANSF=39

and tnc.COD_LOTE_NUM=30858  
--and COD_INC_DEPTO=51
--and nro_nf=1487


--select * from dbci2.uci.CIFSPAM1 where COD_LF='HN' AND COD_LM='HN' AND IDE_AVE='PB' and IDADE=25





) as tab
--where ja_recebido <= 0

ORDER BY DAT_POST

















 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

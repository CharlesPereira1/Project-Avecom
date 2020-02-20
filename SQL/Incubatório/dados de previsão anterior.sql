declare @cod_inc_depto char(2)
declare @cod_ovo char(3)
declare @dat_incub datetime
declare @cod_lote_num integer
 
select @cod_inc_depto = :cod_inc_depto
select @cod_ovo = :cod_ovo
select @dat_incub =    :dat_incub
select @cod_lote_num = :cod_lote_num
 
select sum(ecm.qtd_ovo_incub) qtd_ovo_incub,
       sum(ecm.qtd_ovo_saida) qtd_ovo_saida,
       sum(ecm.qtd_ovo_nao_eclo) qtd_ovo_nao_eclo ,
       ecm.dat_incub, ecm.idade,
       (select  sum(x.qtd_pinto_com_fem_pri +
                    x.qtd_pinto_com_mac_pri +
                    x.qtd_pinto_com_mis_pri)
           from cifsecr1 x
          where x.cod_lote_num = @cod_lote_num
            and x.cod_ovo      = @cod_ovo
            and x.dat_incub    = ecm.dat_incub) pintos_vendaveis,
 
      round(( select round(1.00 * sum( (convert(float,inc1.dat_incub) - convert(float,inc1.dat_post)) *  inc1.qtd_ovo) / sum(inc1.qtd_ovo),2)
          from   cifsinc1 inc1
          where  inc1.cod_inc_depto = @cod_inc_depto
            and  inc1.cod_lote_num  = @cod_lote_num
            and  inc1.dat_incub     = ecm.dat_incub
            and  inc1.cod_ovo       = @cod_ovo),2) estocagem,
 
       round((select sum(ecm1.qtd_ovo_incub * pam.pct_eclosao) / sum(ecm1.qtd_ovo_incub)
                from cifsecm1 ecm1, avfvlot lot, cifspam1 pam
               where lot.cod_lote_num  = ecm.cod_lote_num
                 and lot.cod_lm      = pam.cod_lm
                 and lot.cod_lf      = pam.cod_lf
                 and lot.ide_ave     = pam.ide_ave
                 and lot.nro_est     = pam.nro_est
                 and lot.cod_linha   = pam.cod_linha
                 and ecm1.idade      = pam.idade
                 and lot.dat_aloj_inicial between pam.dat_ini_valid and pam.dat_fim_valid
                 and ecm1.cod_inc_depto = ecm.cod_inc_depto
                 and ecm1.cod_lote_num  = ecm.cod_lote_num
                 and ecm1.dat_incub     = ecm.dat_incub
                 and ecm1.cod_ovo       = ecm.cod_ovo), 2) pct_eclosao_padrao_ult_nasc,

	(select tipo_maquina
          from (select top 1 tipo_maquina, sum(ovos) ovos
                  from (select inc.cod_lote_num, inc.dat_incub, inc.cod_ovo, inc.idade, inc.cod_sala_inc, inc.ind_lado_sala_inc, inc.nro_maq_inc, 
                               tmi.desc_abrev tipo_maquina, sum(qtd_ovo) ovos
                          from cifsinc1 inc, cifsmqi1 mqi, cifstmi1 tmi
                         where inc.cod_inc_depto = mqi.cod_inc_depto
                           and inc.ind_lado_sala_inc = mqi.ind_lado_sala_inc
                           and inc.nro_maq_inc = mqi.nro_maq_inc
                           and mqi.cod_maq_inc = tmi.cod_maq_inc 
                           and inc.cod_inc_depto = ecm.cod_inc_depto
                           and inc.dat_incub = ecm.dat_incub
                           and inc.cod_lote_num = ecm.cod_lote_num
                           and inc.cod_ovo = ecm.cod_ovo
                           and inc.idade = ecm.idade
                        group by inc.cod_lote_num, inc.dat_incub, inc.cod_ovo, inc.idade, inc.cod_sala_inc, inc.ind_lado_sala_inc, 
                                 inc.nro_maq_inc, tmi.desc_abrev
                       ) a
                group by tipo_maquina
                order by ovos  
               ) tab
       ) tipo_maquina_anterior
 
  from cifsecm1 ecm
where ecm.cod_lote_num  = @cod_lote_num
   and ecm.cod_ovo       = @cod_ovo  
   and ecm.cod_inc_depto = @cod_inc_depto
   and ecm.dat_incub    <= @dat_incub
 
group by ecm.cod_inc_depto, ecm.cod_lote_num, ecm.dat_incub, ecm.cod_ovo, ecm.idade
order by ecm.dat_incub

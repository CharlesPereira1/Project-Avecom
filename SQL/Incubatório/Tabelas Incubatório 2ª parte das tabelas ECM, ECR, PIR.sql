--select * from cifsecr1 where idade = 0 order by dat_incub desc
/*
select cod_inc_depto, dat_incub, cod_lote_num, nro_maq_inc, idade, cod_ovo, 
       sum(qtd_ovo) incubados
  from cifsinc1 
where cod_inc_depto = 'sf' and cod_lote_num = 9283 and dat_incub = '2019.12.03'
group by cod_inc_depto, dat_incub, cod_lote_num, nro_maq_inc, idade, cod_ovo
 
select cod_inc_depto, dat_incub, cod_lote_num, nro_maq_inc, nro_maq_eclo, idade, cod_ovo, 
       sum(qtd_ovo_total + qtd_ovo_saida) incubados, sum(qtd_ovo_total) transf, sum(qtd_ovo_saida) saida
  from cifstre1 
where cod_inc_depto = 'sf' and cod_lote_num = 9153 and dat_incub = '2019-11-21 00:00:00.000'
group by cod_inc_depto, dat_incub, cod_lote_num, nro_maq_inc, nro_maq_eclo, idade, cod_ovo
order by cod_inc_depto, dat_incub, cod_lote_num, nro_maq_inc, nro_maq_eclo, cod_ovo, idade 
 
select cod_inc_depto, dat_incub, cod_lote_num, nro_maq_inc, nro_maq_eclo, idade, cod_ovo, 
       sum(qtd_ovo_incub) incubados, sum(qtd_ovo_saida) saida, sum(qtd_ovo_nao_eclo) nao_eclo
  from cifsecm1
where cod_inc_depto = 'LJ' and cod_lote_num = 9283 and dat_incub = '2019.12.02'
group by cod_inc_depto, dat_incub, cod_lote_num, nro_maq_inc, nro_maq_eclo, idade, cod_ovo 
order by cod_inc_depto, dat_incub, cod_lote_num, nro_maq_inc, nro_maq_eclo, cod_ovo, idade
 
select cod_inc_depto, dat_incub, cod_lote_num, nro_maq_inc, nro_maq_eclo, idade, cod_ovo,
       sum(qtd_pinto_elimin) eliminados, sum(qtd_pinto_com_fem_pri) femeas, sum(qtd_pinto_com_mac_pri) machos  
  from cifsecr1
where cod_inc_depto = 'LJ' and cod_lote_num = 9283 and dat_incub = '2019.12.02'
group by cod_inc_depto, dat_incub, cod_lote_num, nro_maq_inc, nro_maq_eclo, idade, cod_ovo 
order by cod_inc_depto, dat_incub, cod_lote_num, nro_maq_inc, nro_maq_eclo, cod_ovo, idade
 
 
*/
 
/*
select * from cifspir1 where idade = 0 order by dat_incub desc

select cod_inc_depto, dat_incub, cod_lote_num, idade, cod_ovo, ind_sexagem_com, 
       sum(qtd_pinto_vendido) vendidos
  from cifspir1
where cod_inc_depto = 'LJ' and cod_lote_num = 9324 and dat_incub = '2019.12.03'
group by cod_inc_depto, dat_incub, cod_lote_num, idade, cod_ovo, ind_sexagem_com
order by cod_inc_depto, dat_incub, cod_lote_num, cod_ovo, ind_sexagem_com, idade

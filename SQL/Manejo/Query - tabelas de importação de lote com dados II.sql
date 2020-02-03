select idade,* from AVFVDAT where COD_LOTE_NUM=9153 AND '2019-11-28 00:00:00.000' BETWEEN dat_inicio and dat_fim

/*POR DAT_POST*/
===============================================================================================================
--WITH c 
--     AS (SELECT A.cod_lote_num 'NUMA', A.dat_post, A.idade, B.idade 'IDADECERTA', B.dat_inicio, B.dat_fim, B.cod_lote_num 
--         FROM   CIFSTRO1 A 
--                INNER JOIN avfvdat B 
--                        ON A.cod_lote_num = B.cod_lote_num 
--         WHERE  A.idade = 0 
--                AND A.dat_post BETWEEN B.dat_inicio AND B.dat_fim) 

--UPDATE D 
--SET    D.idade = c.IDADECERTA 
--FROM   CIFSTRO1 D 
--       INNER JOIN c 
--               ON c.numa = D.cod_lote_num 
                  AND c.dat_post = D.dat_post
================================================================================================================

/*POR DAT_INCUB - NÃO USAR ESTE*/
===============================================================================================================
--WITH c 
--     AS (SELECT A.cod_lote_num 'NUMA', 
--                         A.dat_incub, 
--                         A.idade, 
--                         B.idade        'IDADECERTA', 
--                         B.dat_incub, 
--                         B.cod_lote_num, 
--                         a.nro_maq_inc, 
--                         b.nro_maq_inc, 
--                         a.nro_incubacao, 
--                         b.nro_incubacao, 
--                         A.cod_ovo, 
--                         B.cod_ovo 
--         FROM   cifsecm1 A 
--                INNER JOIN cifsinc1 B 
--                        ON A.cod_inc_depto = B.cod_inc_depto 
--                           AND A.cod_lote_num = B.cod_lote_num 
--                           AND A.cod_sala_inc = B.cod_sala_inc 
--                           AND A.ind_lado_sala_inc = B.ind_lado_sala_inc 
--                           AND A.nro_maq_inc = B.nro_maq_inc 
--                           AND A.dat_incub = B.dat_incub 
--                           AND A.cod_ovo = B.cod_ovo 
--                           AND A.tip_incub = B.tip_incub 
--                           AND A.nro_incubacao = B.nro_incubacao 
--         WHERE  A.idade = 0) 
--UPDATE D 
--SET    D.idade = c.idadecerta 
--FROM   cifsecm1 D 
--       INNER JOIN c 
--               ON c.numa = D.cod_lote_num 
--                  AND c.dat_post = D.dat_post 
================================================================================================================

select DAT_POST,* from CIFSREC1 where COD_LOTE_NUM=9153 and idade=0 --Recebimento de ovos - Inicio (ok)
select DAT_POST,* from CIFSCLA1 where COD_LOTE_NUM=9153 and idade=0 --classificação (ok)
select DAT_POST,* from CIFSSAO1 where COD_LOTE_NUM=9153 and idade=0 --saldo (ok)
select DAT_POST, DAT_INCUB, IDADE,* from CIFSINC1 where COD_LOTE_NUM=9153 and idade=0 --incubação (ok)
select DAT_POST,* from CIFSTRE1 where COD_LOTE_NUM=9153 and idade=0 --transferencia de eclosão (ok)
select DAT_POST,* from CIFSSOI1 where COD_LOTE_NUM=9153 and idade=0 --saida de ovos incubado (ok)

select DAT_POST,* from CIFSAOC1 where COD_LOTE_NUM=9153 and idade=0 --nada -acidente com ovo classificado (ok)
select DAT_POST,* from CIFSTRO1 where COD_LOTE_NUM=9153 and idade=0 --nada -transferencia de ovos (ok)
select DAT_INCUB,IDADE,* from CIFSMRO1 where COD_LOTE_NUM=9153 and idade=0 --nada -tabela de ovoscopia
select DAT_INCUB,IDADE,* from CIFSMOR1 where COD_LOTE_NUM=9153 and idade=0 --nada -mortalidade embrionaria

select --COD_INC_DEPTO, COD_LOTE_NUM, DAT_INCUB, DAT_POST, NRO_MAQ_INC, COD_OVO, NRO_MAQ_ECLO, COD_SALA_ECLO, idade, qtd_ovo_saida, qtd_ovo_total
sum(qtd_ovo_saida) + sum(qtd_ovo_total) 'total ovo'
from CIFSTRE1 where (COD_LOTE_NUM = 9153) AND (DAT_INCUB = '2019-11-21') AND (NRO_MAQ_ECLO IN (106, 107, 108)) --and idade=67
group by COD_INC_DEPTO, COD_LOTE_NUM, DAT_INCUB, DAT_POST, NRO_MAQ_INC, COD_OVO, NRO_MAQ_ECLO, COD_SALA_ECLO, idade, qtd_ovo_saida, qtd_ovo_total

select DAT_INCUB,IDADE,* from CIFSECM1 where idade=0--COD_LOTE_NUM=9153 and idade=0 --eclosão/mestre
select DAT_INCUB,IDADE,* from CIFSECR1 where  idade=0 --and --COD_LOTE_NUM=9153 --eclosão/retirada
select DAT_INCUB,IDADE,* from CIFSPIR1 where idade=0 --and COD_LOTE_NUM=9153 --expedição pintos/retirada

select --COD_INC_DEPTO, NRO_MAQ_INC, DAT_INCUB, DAT_RETIRADA, HOR_RETIRADA,COD_OVO, NRO_MAQ_ECLO, idade, qtd_pinto_elimin, qtd_pinto_com_fem_pri, qtd_pinto_com_mac_pri
sum(qtd_pinto_elimin), sum(qtd_pinto_com_fem_pri), sum(qtd_pinto_com_mac_pri) 
from dbci.uci.CIFSECR1 
where (COD_LOTE_NUM = 9153) AND (DAT_INCUB = '2019-11-21') and NRO_MAQ_ECLO IN (106, 107, 108) --and idade=0

select --COD_INC_DEPTO, ind_sexagem_com, DAT_INCUB, DAT_RETIRADA, HOR_RETIRADA, COD_OVO, nro_nf, COD_LOTE_NUM, idade, qtd_pinto_vendido
sum(qtd_pinto_vendido) 
from CIFSPIR1
where (COD_LOTE_NUM = 9153) AND (DAT_INCUB = '2019-11-21') --and NRO_MAQ_ECLO IN (106, 107, 108) --idade=0



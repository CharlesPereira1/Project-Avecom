select idade,* from AVFVDAT where COD_LOTE_NUM=9283 AND '2019-11-28 00:00:00.000' BETWEEN dat_inicio and dat_fim

/*POR DAT_POST*/
===============================================================================================================
WITH c 
     AS (SELECT A.cod_lote_num 'NUMA', A.dat_post, A.idade, B.idade 'IDADECERTA', B.dat_inicio, B.dat_fim, B.cod_lote_num 
         FROM   CIFSTRO1 A 
                INNER JOIN avfvdat B 
                        ON A.cod_lote_num = B.cod_lote_num 
         WHERE  A.idade = 0 
                AND A.dat_post BETWEEN B.dat_inicio AND B.dat_fim) 

UPDATE D 
SET    D.idade = c.IDADECERTA 
FROM   CIFSTRO1 D 
       INNER JOIN c 
               ON c.numa = D.cod_lote_num 
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

select DAT_POST,* from CIFSREC1 where COD_LOTE_NUM=9283 and idade=0 --Recebimento de ovos - Inicio (ok)
select DAT_POST,* from CIFSCLA1 where COD_LOTE_NUM=9283 and idade=0 --classificação (ok)
select DAT_POST,* from CIFSSAO1 where COD_LOTE_NUM=9283 and idade=0 --saldo (ok)
select DAT_POST, DAT_INCUB, IDADE,* from CIFSINC1 where COD_LOTE_NUM=9283 and idade=0 --incubação (ok)
select DAT_POST,* from CIFSTRE1 where COD_LOTE_NUM=9283 and idade=0 --transferencia de eclosão (ok)
select DAT_POST,* from CIFSSOI1 where COD_LOTE_NUM=9283 and idade=0 --saida de ovos incubado (ok)

select DAT_POST,* from CIFSAOC1 where COD_LOTE_NUM=9283 and idade=0 --nada -acidente com ovo classificado (ok)
select DAT_POST,* from CIFSTRO1 where COD_LOTE_NUM=9283 and idade=0 --nada -transferencia de ovos (ok)
select DAT_INCUB,IDADE,* from CIFSMRO1 where COD_LOTE_NUM=9283 and idade=0 --nada -tabela de ovoscopia
select DAT_INCUB,IDADE,* from CIFSMOR1 where COD_LOTE_NUM=9283 and idade=0 --nada -mortalidade embrionaria

select DAT_INCUB,IDADE,* from CIFSECM1 where idade=0--COD_LOTE_NUM=9283 and idade=0 --eclosão/mestre
select DAT_INCUB,IDADE,* from CIFSECR1 where  idade=0 --and --COD_LOTE_NUM=9283 --eclosão/retirada
select DAT_INCUB,IDADE,* from CIFSPIR1 where idade=0 --and COD_LOTE_NUM=9283 --expedição pintos/retirada



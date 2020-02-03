SELECT X.*, 
       ( ( 1.00 ) * X.grama_obtida_fem / 1 ) racao_fem, 
       ( ( 1.00 ) * X.grama_obtida_mac / 1 ) racao_mac, 
       (SELECT ( 100.00 * ( Sum(cla.qtd_ovo_01 + cla.qtd_ovo_02 
                                + cla.qtd_ovo_03 + cla.qtd_ovo_04 
                                + cla.qtd_ovo_17 + cla.qtd_ovo_18) ) / 
                                (select sum(tot_ovos_dia) 
                                    from avfsmpo1 mpo, avfsdat1 dat 
                                    where mpo.cod_lote_num = dat.cod_lote_num
                                    and mpo.dat_movto between dat.dat_inicio and dat.dat_fim
                                    and (mpo.cod_lote_num= X.cod_lote_num or mpo.cod_lote_num in (
                                        select cod_lote_num 
                                        from avfscon1 
                                        where cod_lote_num_j = X.cod_lote_num))
                                    and idade = x.idade
    ) )  Ovos_incub 
        FROM   cifscla1 cla 
        WHERE  cla.cod_lote_num = x.cod_lote_num
               AND idade = X.idade 
        GROUP  BY cla.cod_lote_num)          ovo_incub 
FROM   avfsdes1 x, 
       avfsras1 Y 
WHERE  x.cod_lote_num = Y.cod_lote_num 
       AND x.idade = y.idade 
       AND X.cod_lote_num = 33797 --:Cod_lote_num
       --and x.idade = 25
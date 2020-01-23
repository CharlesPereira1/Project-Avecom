SELECT X.*, 
       ( ( 1.00 ) * X.grama_obtida_fem / 1 ) racao_fem, 
       ( ( 1.00 ) * X.grama_obtida_mac / 1 ) racao_mac, 
       (SELECT ( 100.00 * ( Sum(cla.qtd_ovo_01 + cla.qtd_ovo_02 
                                + cla.qtd_ovo_03 + cla.qtd_ovo_04 
                                + cla.qtd_ovo_05 + cla.qtd_ovo_18) ) / ( Sum( 
                           cla.qtd_ovo_01 + cla.qtd_ovo_02 
                           + cla.qtd_ovo_03 + cla.qtd_ovo_04 
                           + cla.qtd_ovo_05 + cla.qtd_ovo_06 
                           + cla.qtd_ovo_07 + cla.qtd_ovo_08 
                           + cla.qtd_ovo_09 + cla.qtd_ovo_10 
                           + cla.qtd_ovo_11 + cla.qtd_ovo_12 
                           + cla.qtd_ovo_13 + cla.qtd_ovo_14 
                           + cla.qtd_ovo_15 + cla.qtd_ovo_16 
                           + cla.qtd_ovo_17 + cla.qtd_ovo_18 
                           + cla.qtd_ovo_19 + cla.qtd_ovo_20) ) ) Ovos_incub 
        FROM   cifscla1 cla 
        WHERE  cla.cod_lote_num = x.cod_lote_num
               AND idade = X.idade 
        GROUP  BY cla.cod_lote_num)          ovo_incub 
FROM   avfsdes1 x, 
       avfsras1 Y 
WHERE  x.cod_lote_num = Y.cod_lote_num 
       AND x.idade = y.idade 
       AND X.cod_lote_num = 33797 
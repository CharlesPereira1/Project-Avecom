select tab.cod_pedido,
       tab.nro_sequencia,
       tab.dat_entrega_prev,
       tab.nome,
       sum(tab.qtd_emb) qtd_emb,
       max(tab.nro_caixas) nro_caixas,
       MIN(tab.qtd_estoque_emb) qtd_estoque_emb,
       MIN(tab.nro_parcela) nro_parcela,
       tab.ordem_entrega_linha,
       tab.cod_cliente


  from (
Select c.cod_cliente,
       c.cod_linha,
       c.nome,
       c.cidade,
       c.telefone,
       c.estado,
       c.contato,
       c.cod,loja,
       c.detalhe_rota,
       c.observacao_geral,
       c.flg_bloqueado,
       c.cod_forma_pagamento ,
       c.flg_marcar,
       c.flg_gta ,
       c.OBS_ENTREGA ,
       c.limite_credito ,
       c.nome_fantasia,
       c.contato_ped ,
       p.cod_pedido,
       p.nro_sequencia,
       p.flag_varejo,
       p.flg_cancelado,
       p.dat_pedido,
       p.nro_parcela,
       p.cod_pedido_mestre ,
       p.nro_sequencial_mestre ,
       c.ordem_entrega_linha   ,
       c.flg_atraso ,
       c.flg_tipo   ,
       ISNULL((			
                                           SELECT sum(qtd_emb)
                                             FROM COFSPED1 p1 , cofsppe1 i  
                                            WHERE dat_entrega_prev >= '08/01/2019'
                                              and p.flg_cancelado = 0
                                              and isnull(p.COD_PEDIDO_AUX,'') <> ''
                                              and i.cod_embalagem  = '01'
                                              and p1.cod_pedido = i.cod_pedido
                                              and p1.nro_parcela = i.nro_parcela
                                              and p1.nro_sequencia = i.nro_sequencia
                                              and i.flg_cancelado = 0
                                              and p1.nro_parcela > 0
											  
											  and p1.cod_pedido= p.cod_pedido
											  and i.nro_sequencia= p.nro_sequencia
                                              and p1.cod_cliente = p.cod_cliente
                                         group by cod_cliente

                                   ),0)

                            - isnull( (

                                            select  sum(a.nro_cx_trans)
                                               from cofsrtc1 a,
                                                   (SELECT distinct p2.cod_pedido,p2.nro_parcela,p2.nro_sequencia
                                                      FROM COFSPED1 p2 , cofsppe1 i
                                                     WHERE p2.dat_entrega_prev >= '08/01/2019'
                                                       and p2.flg_cancelado = 0
                                                       and isnull(p2.COD_PEDIDO_AUX,'') <> ''
                                                       and i.cod_embalagem  = '01'
                                                       and p2.cod_pedido = i.cod_pedido
                                                       and p2.nro_parcela = i.nro_parcela
                                                       and p2.nro_sequencia = i.nro_sequencia
                                                       and p2.flg_cancelado = 0
                                                       and p2.nro_parcela > 0
													   ) b
                                               where a.cod_pedido = b.cod_pedido
                                                 and a.nro_parcela = b.nro_parcela
                                                 and a.nro_sequencia = b.nro_sequencia
												 and b.cod_pedido=  p.cod_pedido  --5476
											  and b.nro_sequencia= p.nro_sequencia --394
                                              and a.cod_cliente = p.cod_cliente --1115701
                                        ) ,0) qtd_estoque_emb ,
       (select x.nro_cx_trans from cofsrtc1 x where x.cod_pedido = p.cod_pedido and x.nro_parcela = p.nro_parcela and x.nro_sequencia = p.nro_sequencia) nro_caixas,
       (select sum(x.QTD_EMB) from cofsppe1 x where x.cod_embalagem = '01' and x.cod_pedido = p.cod_pedido and x.nro_parcela = p.nro_parcela and x.nro_sequencia = p.nro_sequencia and x.flg_cancelado = 0) QTD_EMB,
       p.dat_entrega_prev

FROM cofvcli1 c,
     cofsped1 p

where p.cod_cliente       = c.cod_cliente   and p.dat_entrega_prev >= '08/01/2019'  and isnull(p.COD_PEDIDO_AUX,'') <> ''
  and c.flg_ativo         = 1
  and p.flg_cancelado     = 0
  and p.flag_varejo       = 1

  ----

   ) as tab
where  QTD_EMB <> 0

group by tab.cod_pedido,
       tab.nro_sequencia,
       tab.dat_entrega_prev,
       tab.nome,
       tab.ordem_entrega_linha,
       tab.cod_cliente





















 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

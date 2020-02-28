    select * from dbco.uco.cofscli1 C --cadastro de clientes where  P.cod_cliente = C.cod_cliente
	select * from dbco.uco.cofsped1 P where cod_cliente=478001 and cod_pedido=3256 order by nro_parcela, nro_sequencia --pedido principal - cabeçalho
	select * from dbco.uco.cofsppe1 ppe --itens do pedido (detalhe) -- where  ppe.cod_pedido = p.cod_pedido and ppe.nro_sequencia = p.nro_sequencia and ppe.nro_parcela = p.nro_parcela

	select * from dbco.uco.cofvinc1 I -- incubatório where  P.cod_inc_depto = I.cod_inc_depto

	select * from  dbco.uco.cofsfpg1 fpg -- formas de pagamentos where  P.cod_forma_pagamento = fpg.cod_forma_pagamento
    select * from dbco.uco.cofsres1 res --responsavel pela entrega where  P.cod_respwhere savel = res.cod_respwhere savel
    select * from  dbco.uco.cofspro1 pro --cadastro de produto where  pro.cod_produto = ppe.cod_produto

	 select nro_nf,  gta, * from CIFSVER1 where cod_pedido=8987 and nro_sequencia=18 and cod_inc_depto=04 and nro_parcela=0
	  select ind_sexagem_com, dat_retirada, cod_ovo, * from CIFSPIR1 where cod_inc_depto=04 and nro_nf=23083 and nro_empresa=52 and nro_sequencia=18


	  select NRO_NF,nro_filial, lot.cod_lf+convert(varchar,lot.nro_lote),--+' '+sum(pir.qtd_pinto_vendido), 
	  pir.idade_alt, max(pir.DAT_RETIRADA), pir.cod_lote_num_alt, sum(pir.qtd_pinto_vendido) 'Total_Vendido'
	  from CIFSPIR1 pir
	  inner join dbav2.uav.avfslot1 lot on lot.cod_lote_num = pir.cod_lote_num_alt
	  where cod_pedido=12230
	  and COD_INC_DEPTO=04 
	  and cod_ovo='t1' 
	  --and idade_alt=42 --and DAT_RETIRADA='2019.10.30' 
	  group by lot.nro_lote,cod_lote_num_alt, lot.cod_lf, pir.idade_alt, NRO_NF, nro_filial


	  select * from CIFSVER1 where cod_pedido=12230 and COD_INC_DEPTO=04 


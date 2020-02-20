declare @cod_lote_num int
declare @data_s datetime
declare @nro_box_s varchar(10)

select @cod_lote_num = 13
select @data_s = '2020.02.10'
select @nro_box_s = 1

declare atualizaQtdPintos SCROLL CURSOR FOR 
  
  select data,nro_box, COD_LOTE_NUM
  fROM avfssda1 X
  WHERE X.COD_LOTE_NUM  = @cod_lote_num 
  AND X.DATA         >= @data_s 
  order by nro_box,data

FOR UPDATE

open atualizaQtdPintos 
fetch atualizaQtdPintos 
   into  @data_s,@nro_box_s, @cod_lote_num 

WHILE ( @@FETCH_STATUS = 0 )
  BEGIN

	update DBAV.UAV.avfssda1
	   set qtd_machos = ISNULL((select x.qtd_machos from DBAV.UAV.avfssda1 x where x.cod_lote_num = DBAV.UAV.avfssda1.cod_lote_num and x.data = DBAV.UAV.avfssda1.data - 1  and x.nro_box = DBAV.UAV.avfssda1.nro_box ),0) -
						ISNULL((select sum(a.qtd_morte+a.qtd_elimin+a.qtd_refugo+(-1 * a.qtd_transf)+(-1 * a.qtd_difer)+a.qtd_descarte) from DBAV.UAV.avfsmbo1 a where a.cod_lote_num = DBAV.UAV.avfssda1.cod_lote_num and a.dat_movto = DBAV.UAV.avfssda1.data and a.nro_box =DBAV.UAV.avfssda1.nro_box and a.sexo_ave= 'M') ,0)
						,
		   qtd_femeas = ISNULL((select x.qtd_femeas from DBAV.UAV.avfssda1 x where x.cod_lote_num = DBAV.UAV.avfssda1.cod_lote_num and x.data = DBAV.UAV.avfssda1.data - 1  and x.nro_box = DBAV.UAV.avfssda1.nro_box ),0) -
						ISNULL((select sum(a.qtd_morte+a.qtd_elimin+a.qtd_refugo+(-1 * a.qtd_transf)+(-1 * a.qtd_difer)+a.qtd_descarte) from DBAV.UAV.avfsmbo1 a where a.cod_lote_num = DBAV.UAV.avfssda1.cod_lote_num and a.dat_movto = DBAV.UAV.avfssda1.data and a.nro_box =DBAV.UAV.avfssda1.nro_box and a.sexo_ave= 'F') ,0)


	where cod_lote_num = @cod_lote_num
	and data         =  @data_s
	and nro_box      = @nro_box_s


	FETCH atualizaQtdPintos 
	INTO  @data_s,@nro_box_s, @cod_lote_num 

  END

DEALLOCATE atualizaQtdPintos;
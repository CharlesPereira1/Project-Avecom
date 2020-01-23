/*select nro_lote, count(cod_lote_num) from avfslot1 group by nro_lote having count(cod_lote_num) > 1

select * from avfslot1 where COD_LOTE_NUM=33 
*/



select * from avfsalo1 where COD_LOTE_NUM=33
select * from avfsend1 where COD_LOTE_NUM=33
select * from avfsdat1 where COD_LOTE_NUM=33

select * from avfsacl1 where COD_LOTE_NUM=33
select * from avfsaai1 where COD_LOTE_NUM=33 --***
select * from avfsmbo1 where COD_LOTE_NUM=33 order by DAT_MOVTO

select * from avfsmca1 where COD_LOTE_NUM=33 order by DAT_MOVTO
select * from avfsmcr1 where COD_LOTE_NUM=33 order by DAT_MOVTO
select * from avfsmpe1 where COD_LOTE_NUM=33 order by DAT_MOVTO

select * from avfsmpb1 where COD_LOTE_NUM=33 order by DAT_MOVTO /*pesagem do box*/
select * from avfsape1 where COD_LOTE_NUM=33 order by DAT_MOVTO

select * from avfsmpo1 where COD_LOTE_NUM=33 order by DAT_MOVTO


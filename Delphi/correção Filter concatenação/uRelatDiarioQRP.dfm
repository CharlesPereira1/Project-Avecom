�
 TFRELATDIARIOQRP 0�F  TPF0TFRelatDiarioQRPFRelatDiarioQRPLeftsTop� Width�Height�CaptionFRelatDiarioQRPColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrderScaledPixelsPerInch`
TextHeight 	TQuickRepqrpDadosLeftTopWidthcHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightDataSetqryLotesFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style Functions.Strings
PAGENUMBERCOLUMNNUMBERREPORTTITLE Functions.DATA00'' OptionsFirstPageHeaderLastPageFooter Page.ColumnsPage.OrientationpoLandscapePage.PaperSizeA4Page.Values       �@      @�
@       �@      ��
@       �@       �@           PrinterSettings.CopiesPrinterSettings.DuplexPrinterSettings.FirstPage PrinterSettings.LastPage PrinterSettings.OutputBinAutoPrintIfEmpty	
SnapToGrid	UnitsMMZoomd TQRBandQRBand1Left&Top&WidthHeight5Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values������:�@      #�
@ BandTyperbPageHeader TQRLabelQRLabel1Left-TopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@UUUUUU�@      ��@������R�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionRELATORIO DIARIO DE LOTESColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  
TQRSysData
QRSysData1LeftRTopWidthDHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@      t�	@UUUUUUU�@�������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	ColorclWhiteDataqrsDateTimeTransparentFontSize
  TQRImageLogoRelatorioLeftTopWidth^Height.Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values頻��j�@[sUUUUU�@[sUUUUU�@��TUUU��@ Stretch	   TQRBandQRBand2Left&Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values��������@      #�
@ BandTyperbPageFooter TQRLabelQRLabel2LeftfTopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@      ޏ
@[sUUUUU�@�{������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption Avecom Sistemas - (34) 3235 4982ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  TQRLabelQRLabel3LeftTopWidthOHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@��������@UUUUUUU�@UUUUUU�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionManejo de AvesColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  
TQRSysData
QRSysData2Left�Top Width.HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@�������	@          ������j�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	ColorclWhiteDataqrsPageNumberTransparentFontSize
   TQRSubDetailDadosLeft&TopoWidthHeightZFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.ValuesUUUUUU�	@      #�
@ MasterqrpDadosDataSetqryLotesPrintBeforePrintIfEmpty	 TQRMemovRelLeftTopWidthHeightRFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      t�	@�@������@       �@�UUUUQ�
@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style 
ParentFontTransparentWordWrap	FontSize   TQRGroupCabecaLeft&Top[WidthHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomBeforePrintCabecaBeforePrintColorclWhiteForceNewColumnForceNewPage	Size.Values��������@      #�
@ 
Expression&qryLotes.cod_lote_num + qryLotes.idadeMasterDadosReprintOnNewPage TQRLabelQRLabel4LeftTopWidth0HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@UUUUUUU�@UUUUUUU�@       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionQRLabel4ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize    TADQueryqryLotes
ConnectionFMenu.dbsManejoSQL.Strings�SELECT lot.nro_lote,lot.cod_lote_num, dat.idade FROM avfslot1 lot, avfsend1 edr, avfsdat1 dat WHERE edr.cod_lote_num = lot.cod_lote_num and dat.cod_lote_num = lot.cod_lote_num and dat.dat_inicio >= edr.dat_inicio and dat.dat_inicio <= edr.dat_fim Left�Top TStringFieldqryLotesnro_lote	FieldNamenro_lote	FixedChar	Size  TADAutoIncFieldqryLotescod_lote_num	FieldNamecod_lote_num  TSmallintFieldqryLotesidade	FieldNameidade   TADQueryqryLot
ConnectionFMenu.dbsManejoSQL.Stringsdeclare @Lote intdeclare @Idade int select @Lote = :Loteselect @Idade = :Idade SELECT   lot.dat_aloj_inicial,  lot.cod_lm,  lot.cod_lf,  lot.ide_ave,  lot.nro_est,  lot.cod_linha,  lot.nro_lote,  lot.ide_espec,  lot.qtd_inic_fem,  lot.qtd_inic_mac,  dat.cod_lote_num,  dat.idade,  dat.dat_inicio,  dat.dat_fim   FROM   avfsdat1 dat,  avfslot1 lot WHERE       lot.cod_lote_num = @Lote)  and dat.cod_lote_num = lot.cod_lote_num  and dat.idade = @Idade LeftjTop	ParamDataNameLoteDataType	ftInteger	ParamTypeptInputValue� NameIdadeDataType	ftInteger	ParamTypeptInputValue   TDateTimeFieldqryLotdat_aloj_inicial	FieldNamedat_aloj_inicial  TStringFieldqryLotcod_lm	FieldNamecod_lmSize  TStringFieldqryLotcod_lf	FieldNamecod_lfSize  TStringFieldqryLotide_ave	FieldNameide_aveSize  TStringFieldqryLotnro_est	FieldNamenro_estSize  TStringFieldqryLotcod_linha	FieldName	cod_linhaSize  TStringFieldqryLotnro_lote	FieldNamenro_loteSize  TStringFieldqryLotide_espec	FieldName	ide_especSize  TIntegerFieldqryLotqtd_inic_fem	FieldNameqtd_inic_fem  TIntegerFieldqryLotqtd_inic_mac	FieldNameqtd_inic_mac  TIntegerFieldqryLotcod_lote_num	FieldNamecod_lote_num  TSmallintFieldqryLotidade	FieldNameidade  TDateTimeFieldqryLotdat_inicio	FieldName
dat_inicio  TDateTimeFieldqryLotdat_fim	FieldNamedat_fim   TADQueryqrySdaMasterSourcedtsLotMasterFieldscod_lote_num;dat_inicio;dat_fim
ConnectionFMenu.dbsManejoSQL.Stringsdeclare @Lote intdeclare @dat_inicio datetimedeclare @dat_fim datetime select @Lote = :Cod_Lote_Num select @dat_inicio = :Dat_Inicioselect @dat_fim = :Dat_Fim SELECT Distinct  data,'  sum(qtd_femeas) soma_saldo_fem_final,'  sum(qtd_machos) soma_saldo_mac_final,)  (select sum(qtd_femeas) from avfssda1 s#   where s.cod_lote_num = @lote and@       s.data = dateadd(day,-1,sda.data)) soma_saldo_fem_inicio,)  (select sum(qtd_machos) from avfssda1 s#   where s.cod_lote_num = @lote and?       s.data = dateadd(day,-1,sda.data)) soma_saldo_mac_inicio FROM avfssda1 sda WHERE     sda.cod_lote_num = @Lote and @dat_inicio <= sda.data and sda.data <= @dat_fim Group By data Left� Top	ParamDataNamecod_lote_numDataType	ftInteger	ParamTypeptInput Name
dat_inicioDataType
ftDateTime	ParamTypeptInput Namedat_fimDataType
ftDateTime	ParamTypeptInput    TADQueryqryEndMasterSourcedtsLotMasterFieldscod_lote_num;idade
ConnectionFMenu.dbsManejoSQL.Stringsdeclare @Lote intdeclare @Idade int select @Lote = :Cod_Lote_Numselect @Idade = :Idade SELECT   cod_local,   cod_granja,   cod_grupo,   cod_galinheiro FROM avfsdat1 dat,           avfsend1 edr WHERE      dat.cod_lote_num = @Lote and dat.idade = @Idade( and dat.cod_lote_num = edr.cod_lote_num" and edr.dat_inicio <= dat.dat_fim and dat.dat_fim <= edr.dat_fim Left� Top	ParamDataNamecod_lote_numDataType	ftInteger	ParamTypeptInput NameidadeDataType
ftSmallint	ParamTypeptInput    TADQueryqryBoxFMasterSourcedtsLotMasterFieldscod_lote_num;dat_inicio;dat_fim
ConnectionFMenu.dbsManejoSQL.Stringsdeclare @Lote intdeclare @Sexo chardeclare @dat_inicio datetimedeclare @dat_fim datetime select @Lote = :Cod_Lote_Numselect @Sexo = 'F' select @dat_inicio = :Dat_inicioselect @dat_fim = :Dat_fim SELECT  mbo.dat_movto,   sum(qtd_morte) soma_qtd_morte,"  sum(qtd_elimin) soma_qtd_elimin,"  sum(qtd_refugo) soma_qtd_refugo,$  sum(qtd_transf) soma_qtd_transf,     sum(qtd_difer) soma_qtd_difer,%  sum(qtd_descarte) soma_qtd_descarte FROM avfsmbo1 mbo WHERE       mbo.cod_lote_num = @Lote"  and upper(mbo.sexo_ave) =  @Sexo"  and @dat_inicio <= mbo.dat_movto   and mbo.dat_movto <=  @dat_fim GROUP BY mbo.dat_movto  Left� Top	ParamDataNamecod_lote_numDataType	ftInteger	ParamTypeptInput Name
dat_inicioDataType
ftDateTime	ParamTypeptInput Namedat_fimDataType
ftDateTime	ParamTypeptInput    TADQueryqryBoxMMasterSourcedtsLotMasterFieldscod_lote_num;dat_inicio;dat_fim
ConnectionFMenu.dbsManejoSQL.Stringsdeclare @Lote intdeclare @Sexo chardeclare @dat_inicio datetimedeclare @dat_fim datetime select @Lote = :Cod_Lote_Numselect @Sexo = 'M' select @dat_inicio = :Dat_inicioselect @dat_fim = :Dat_fim SELECT  mbo.dat_movto,   sum(qtd_morte) soma_qtd_morte,"  sum(qtd_elimin) soma_qtd_elimin,"  sum(qtd_refugo) soma_qtd_refugo,$  sum(qtd_transf) soma_qtd_transf,     sum(qtd_difer) soma_qtd_difer,%  sum(qtd_descarte) soma_qtd_descarte FROM avfsmbo1 mbo WHERE       mbo.cod_lote_num = @Lote"  and upper(mbo.sexo_ave) =  @Sexo"  and @dat_inicio <= mbo.dat_movto   and mbo.dat_movto <=  @dat_fim GROUP BY mbo.dat_movto  Left� Top	ParamDataNamecod_lote_numDataType	ftInteger	ParamTypeptInput Name
dat_inicioDataType
ftDateTime	ParamTypeptInput Namedat_fimDataType
ftDateTime	ParamTypeptInput    TADQueryqryMedMasterMasterSourcedtsLotMasterFieldscod_lote_num;dat_inicio;dat_fim
ConnectionFMenu.dbsManejoSQL.Stringsdeclare @Lote intdeclare @dat_inicio datetimedeclare @dat_fim datetime select @Lote = :Cod_Lote_Num select @dat_inicio = :Dat_inicioselect @dat_fim = :Dat_fim SELECT distinct   mme.cod_vac_medic,  @Lote Cod_Lote_Num,  @dat_inicio Dat_Inicio,  @dat_fim Dat_Fim   FROM    avfsmme1 mmeWHERE mme.cod_lote_num = @Lote"  and @dat_inicio <= mme.dat_movto   and mme.dat_movto <=  @dat_fim Left
Top	ParamDataNamecod_lote_numDataType	ftInteger	ParamTypeptInput Name
dat_inicioDataType
ftDateTime	ParamTypeptInput Namedat_fimDataType
ftDateTime	ParamTypeptInput    TADQueryqryRacMasterSourcedtsLotMasterFieldscod_lote_num;dat_inicio;dat_fim
ConnectionFMenu.dbsManejoSQL.Stringsdeclare @Lote intdeclare @dat_inicio datetimedeclare @dat_fim datetime select @Lote = :Cod_Lote_Num select @dat_inicio = :Dat_inicioselect @dat_fim = :Dat_fim SELECT    mcr.dat_movto,  *  sum(qtd_cons_femea) soma_qtd_cons_femea,)  sum(qtd_cons_macho) soma_qtd_cons_macho FROM avfsmcr1 mcr WHERE       mcr.cod_lote_num = @Lote"  and @dat_inicio <= mcr.dat_movto   and mcr.dat_movto <=  @dat_fim GROUP BY mcr.dat_movto Left'Top	ParamDataNamecod_lote_numDataType	ftInteger	ParamTypeptInput Name
dat_inicioDataType
ftDateTime	ParamTypeptInput Namedat_fimDataType
ftDateTime	ParamTypeptInput    TADQueryqryOvoMasterSourcedtsLotMasterFieldscod_lote_num;dat_inicio;dat_fim
ConnectionFMenu.dbsManejoSQL.Stringsdeclare @Lote intdeclare @dat_inicio datetimedeclare @dat_fim datetime select @Lote = :Cod_Lote_Num select @dat_inicio = :Dat_inicioselect @dat_fim = :Dat_fim SELECT    mpo.dat_movto,  %  sum(tot_ovos_dia) soma_tot_ovo_dia,  (SELECT sum(tot_ovos_dia)   FROM avfsmpo1   WHERE cod_lote_num =@Lote#     and dat_movto <= mpo.dat_movto   ) soma_Tot_ovo_acum FROM avfsmpo1 mpo WHERE       mpo.cod_lote_num = @Lote"  and @dat_inicio <= mpo.dat_movto   and mpo.dat_movto <=  @dat_fim GROUP BY mpo.dat_movto LeftETop	ParamDataNamecod_lote_numDataType	ftInteger	ParamTypeptInput Name
dat_inicioDataType
ftDateTime	ParamTypeptInput Namedat_fimDataType
ftDateTime	ParamTypeptInput    TADQueryqryIncMasterSourcedtsLotMasterFieldscod_lote_num;dat_inicio;dat_fim
ConnectionFMenu.dbsManejoSQL.Stringsdeclare @Lote intdeclare @dat_inicio datetimedeclare @dat_fim datetime select @Lote = :Cod_Lote_Num select @dat_inicio = :Dat_inicioselect @dat_fim = :Dat_fim SELECT distinct  dpo.dat_movto,  <  sum(dpo.qtd_ovos_aprov + dpo.qtd_ovos_cama) SomaOvosIncub,n  convert(float,sum(dpo.qtd_ovos_aprov + dpo.qtd_ovos_cama)) / sum(qtd_ovos_coleta) * 100 Perc_Aproveitamento,-  (SELECT sum(qtd_ovos_aprov + qtd_ovos_cama)   FROM avfsdpo1   WHERE cod_lote_num = @Lote7     and dat_movto <=  dpo.dat_movto) SomaOvosIncubAcum FROM avfsdpo1 dpo WHERE       dpo.cod_lote_num = @Lote"  and @dat_inicio <= dpo.dat_movto   and dpo.dat_movto <=  @dat_fim GROUP BY dat_movto LeftaTop	ParamDataNamecod_lote_numDataType	ftInteger	ParamTypeptInput Name
dat_inicioDataType
ftDateTime	ParamTypeptInput Namedat_fimDataType
ftDateTime	ParamTypeptInput    TADQueryqryDesMasterSourcedtsLotMasterFieldscod_lote_num;idade
ConnectionFMenu.dbsManejoSQL.Stringsdeclare @Lote intdeclare @Idade int select @Lote = :Cod_Lote_Numselect @Idade = :Idade SELECT des.* FROM avfsdes1 des WHERE des.cod_lote_num = @Lote  and des.idade = @idade Left~Top	ParamDataNamecod_lote_numDataType	ftInteger	ParamTypeptInput NameidadeDataType
ftSmallint	ParamTypeptInput    TADQueryqryPadMasterSourcedtsLotMasterFields>dat_aloj_inicial;idade;cod_lm;cod_lf;nro_est;ide_ave;cod_linha
ConnectionFMenu.dbsManejoSQL.Strings"declare @dat_aloj_inicial datetime,select @dat_aloj_inicial = :dat_aloj_inicialSELECT pad.* FROM avfspad1 pad WHERE pad.idade = :idade  and pad.cod_lm = :Cod_lm  and pad.cod_lf = :Cod_lf  and pad.nro_est = :Nro_est  and pad.ide_ave = :ide_ave   and pad.cod_linha = :cod_linha,  and pad.dat_ini_valid <= @dat_aloj_inicial,  and @dat_aloj_inicial <= pad.dat_fim_valid Left~Top	ParamDataNamedat_aloj_inicialDataType
ftDateTime	ParamTypeptInput NameidadeDataType
ftSmallint	ParamTypeptInput Namecod_lmDataTypeftString	ParamTypeptInput Namecod_lfDataTypeftString	ParamTypeptInput Namenro_estDataTypeftString	ParamTypeptInput Nameide_aveDataTypeftString	ParamTypeptInput Name	cod_linhaDataTypeftString	ParamTypeptInput    TADQueryqryAvesProdMasterSourcedtsLotMasterFieldscod_lote_num;idade
ConnectionFMenu.dbsManejoSQL.Stringsdeclare @Lote intdeclare @Idade int select @Lote = :Cod_Lote_Numselect @Idade = :Idade SELECT   aap.idade_inicio,  aap.idade_fim,  aap.qtd_machos,  aap.qtd_femeas FROM  avfsaap1 aap WHERE aap.cod_lote_num = @Lote   and aap.idade_inicio <= @Idade  and @Idade <= aap.idade_fim LeftETop	ParamDataNamecod_lote_numDataType	ftInteger	ParamTypeptInput NameidadeDataType
ftSmallint	ParamTypeptInput    TADQueryqryMedMasterSourcedtsMedMasterFields-Cod_Lote_Num;Dat_Inicio;Dat_Fim;cod_vac_medic
ConnectionFMenu.dbsManejoSQL.Stringsdeclare @Lote intdeclare @dat_inicio datetimedeclare @dat_fim datetimedeclare @cod_vac_medic int select @Lote = :Cod_Lote_Num select @dat_inicio = :Dat_inicioselect @dat_fim = :Dat_fim&select @cod_vac_medic = :cod_vac_medic SELECT    mme.dat_movto,    mme.cod_vac_medic,  sum(qtd_medic) soma_qtd_medic FROM avfsmme1 mme WHERE       mme.cod_lote_num = @Lote"  and @dat_inicio <= mme.dat_movto   and mme.dat_movto <=  @dat_fim(  and mme.cod_vac_medic = @cod_vac_medic )GROUP BY mme.dat_movto, mme.cod_vac_medic Left
Top:	ParamDataNameCod_Lote_NumDataType	ftInteger	ParamTypeptInput Name
Dat_InicioDataType
ftDateTime	ParamTypeptInput NameDat_FimDataType
ftDateTime	ParamTypeptInput Namecod_vac_medicDataType	ftInteger	ParamTypeptInput    TDataSourcedtsMedDataSetqryMedMasterLeft
Top  TADQueryqryGraMasterSourcedtsEndMasterFields
cod_granja
ConnectionFMenu.dbsGeralSQL.Stringsdeclare @Granja char(2)Select @Granja = :Cod_Granja Select cod_granja, des_abrev From ugfsgra1 Where Cod_Granja = @Granja Left� Top6	ParamDataName
cod_granjaDataTypeftString	ParamTypeptInput    TDataSourcedtsEndDataSetqryEndLeft� Top  TADQueryqryLocMasterSourcedtsEndMasterFields	cod_local
ConnectionFMenu.dbsGeralSQL.Stringsdeclare @Local char(2)Select @Local = :Cod_Local Select cod_local, des_abrev From ugfsloc1 Where Cod_Local = @Local Left� Top6	ParamDataName	cod_localDataTypeftString	ParamTypeptInput    TDataSourcedtsLotDataSetqryLotLeft� Top  TADQueryqryEmp
ConnectionFMenu.dbsGeralSQL.StringsSelect empresaFrom ugfsemp0 LeftsTop*   
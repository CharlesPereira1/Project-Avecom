�
 TFRELATFILTRO 0�V  TPF0�TFRelatFiltroFRelatFiltroTag8Left�Top� CaptionRelat�rio FiltrosClientHeight�ClientWidth�	FormStyle
fsMDIChildPositionpoDefaultPosOnlyVisible	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight �TPanelPanel2Width� �	TSpeedBar
spbSistemaLeftz  �	TSpeedBarspbFerramentasWidth  �
TSpeedItemspiAdicionarVisible  �
TSpeedItemspiModificarVisible  �
TSpeedItem
spiExcluirVisible  �
TSpeedItemspiLimpaCamposLeft8OnClickspiLimpaCamposClick  �
TSpeedItemspiConsultaVisible  �
TSpeedItemspiImprimirLeftVisible	OnClickspiImprimirClick  �
TSpeedItem	spiVoltarVisible    �TPanelPanel1Left Top%Width�Height�AlignalClient
BevelOuterbvNoneTabOrder TLabel	lblGranjaLeftTopcWidth#HeightCaptionGranja:  TLabellblIdentificacaoLeftcTopWidth@HeightCaptionIdentifica��o:  TLabelLabel4LeftTopAWidth"HeightCaptionReduz:  TLabelLabel5LeftTopWidth8HeightCaptionIncubat�rio:  TLabelLabel8LeftTop� Width5HeightCaption
L. F�meas:  TLabelLabel1LeftTop&WidthBHeightCaptionIncub Origem:  TLabelLabel17LeftTop� WidthHeightCaptionOvo:  TLabellblLocalLeftcTop|WidthHeightCaptionLocal:  TLabelLabel6Left�Top� WidthHeightCaptionNF:  TLabelLabel7Left(Top� Width#HeightCaptionPedido:  TLabelLabel9LeftTop{Width,HeightCaption	Nro Lote:  TDBLookupComboBox	dlcGranjaLeft� Top^Width� HeightFont.CharsetANSI_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style KeyField
Cod_Granja	ListField	Des_Abrev
ListSourcedtsQryGranja
ParentFontTabOrderTabStop	OnCloseUpdlcGranjaCloseUp
OnDropDowndlcGranjaDropDown  TEditedtGraLeftKTop^WidthAHeightCharCaseecUpperCase	MaxLengthTabOrderOnChangeedtLocChangeOnExit
edtGraExit  	TGroupBox	GroupBox1LeftTop� WidtheHeight2CaptionPer�odoTabOrder TLabelLabel2LeftTopWidthHeightCaptionIn�cio:  TLabelLabel3Left� TopWidthHeightCaptionFim:  	TDateEditdetDat_inicioLeft9TopWidthyHeightFont.CharsetANSI_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	NumGlyphs
ParentFontTabOrder   	TDateEditdetDat_finalLeft� TopWidthyHeightFont.CharsetANSI_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	NumGlyphs
ParentFontTabOrder   TCurrencyEditcedCod_LoteLeftKTop=WidthAHeightAutoSizeDecimalPlaces DisplayFormat0TabOrderOnChangecedCod_LoteChangeOnExitcedCod_LoteExit  TDBLookupComboBoxdlcLoteLeft� Top=Width� HeightFont.CharsetANSI_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style KeyFieldcod_lote_num	ListFieldChave
ListSource
dtsqryLote
ParentFontTabOrderTabStop	OnCloseUpdlcLoteCloseUp
OnDropDowndlcLoteDropDown  TEditedtcod_incubLeftKTopWidthAHeightCharCaseecUpperCase	MaxLengthTabOrder OnChangeedtcod_incubChangeOnExitedtcod_incubExit  TDBLookupComboBoxdlcIncubatorioLeft� TopWidth� HeightFont.CharsetANSI_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style KeyFieldcod_inc_depto	ListField	nom_abrev
ListSourcedtsqryIncubatorio
ParentFontTabOrderTabStop	OnCloseUpdlcIncubatorioCloseUp
OnDropDowndlcIncubatorioDropDown  TEditedtLFLeftKTop� WidthAHeightCharCaseecUpperCase	MaxLengthTabOrderOnChangeedtLFChangeOnExit	edtLFExit  TDBLookupComboBoxdlcLFLeft� Top� Width� HeightFont.CharsetANSI_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style KeyFieldcod_linhagem	ListField	des_abrev
ListSourcedtsLM
ParentFontTabOrder	TabStop	OnCloseUpdlcLFCloseUp
OnDropDowndlcLFDropDown  TCheckListBoxchlIdesLeft�Top WidthHeightQ
ItemHeightSorted	TabOrder
  TEditEdit1LeftKTop"WidthAHeightCharCaseecUpperCase	MaxLengthTabOrderTextEDIT1OnChangeEdit1ChangeOnExit	Edit1Exit  TDBLookupComboBoxDBLookupComboBox1Left� Top!Width� HeightFont.CharsetANSI_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style KeyFieldcod_inc_depto	ListField	nom_abrev
ListSourcedtsqryIncubatorio
ParentFontTabOrderTabStop	OnCloseUpDBLookupComboBox1CloseUp  TEdit	edtCodOvoLeftKTop� WidthAHeightCharCaseecUpperCase	MaxLengthTabOrderText	EDTCODOVOOnChangeedtCodOvoChangeOnExitedtCodOvoExit  TDBLookupComboBoxdlcOvoLeft� Top� Width� HeightFont.CharsetANSI_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style KeyFieldcod_tip	ListField	des_abrev
ListSource	dtsqryOvo
ParentFontTabOrderTabStop	OnCloseUpdlcOvoCloseUp  TCheckListBox	chlLocaisLeft�TopyWidthHeightQ
ItemHeightSorted	TabOrder  	TCheckBox	CheckBox1Left�Top� WidthaHeightCaptionListar GranjaTabOrder  TCurrencyEditCurrencyEdit1Left�Top� WidthAHeightAutoSizeDecimalPlaces DisplayFormat0TabOrder  	TCheckBox	CheckBox2Left�TopWidth� HeightCaptionFiltrar por GrupoTabOrder  TCurrencyEditCurrencyEdit2LeftLTop� WidthAHeightAutoSizeDecimalPlaces DisplayFormat0TabOrder  TRadioGroupRadioGroup1Left TopOWidth,Height"Columns	ItemIndexItems.StringsPosturaRecebimentoClassifica��o TabOrder  TRadioGrouprdgOvosLeftTopWidtheHeight)Caption Ovo Columns	ItemIndexItems.StringsBomCom�rcioTodos TabOrder  TRadioGroup
rdLinhagemLeftTopKWidthHeight)CaptionLinhagemColumns	ItemIndex Items.StringsSimN�o TabOrder  TRadioGroupRadioGroup2LeftTop� WidthaHeight-ColumnsItems.StringsProdu��oRecebimento TabOrder  TEdit
edtNroLoteLeftKTopvWidthAHeightCharCaseecUpperCase	MaxLengthTabOrderOnChangeedtNroLoteChangeOnExitedtNroLoteExit  TDBLookupComboBox
dlcNroLoteLeft� TopwWidth� HeightFont.CharsetANSI_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style KeyFieldnro_lote	ListFieldnro_lote
ListSourcedtsqryNroLote
ParentFontTabOrderTabStop	OnCloseUpdlcNroLoteCloseUp
OnDropDowndlcNroLoteDropDown   �
TPopupMenuppmPrincipalLefthToph �	TMenuItem
Adicionar1Visible  �	TMenuItem
Modificar1Visible  �	TMenuItemExcluir1Visible  �	TMenuItemLimparCampos1OnClickspiLimpaCamposClick  �	TMenuItem	Consulta1Visible  �	TMenuItem	Imprimir1Visible	OnClickspiImprimirClick  �	TMenuItemVoltar1Visible   �TQuery	QryCursorLeftHToph  �TQueryQryLockLeft(Toph  TQueryqryEmpDatabaseNameGeralSQL.StringsSelect empresaFrom ugfsemp0 Left�Top�   TQueryQryLocalDatabaseNameIncubatorioSQL.Strings4Select loc.Cod_Local, loc.Des_Abrev From ugfvloc loc6where loc.cod_local in (select cod_local from avfvend)order by loc.des_abrev Left�Top% TStringFieldQryLocalCod_Local	FieldName	Cod_LocalSize  TStringFieldQryLocalDes_Abrev	FieldName	Des_Abrev   TDataSourcedtsQryLocalDataSetQryLocalLeft�Top%  TDataSourcedtsQryGranjaDataSet	QryGranjaLeft�TopC  TQuery	QryGranjaDatabaseNameIncubatorioSQL.Strings5Select gra.Cod_Granja, gra.Des_Abrev From ugfvgra gra8where gra.cod_granja in (select cod_granja from avfvend)order by gra.des_abrev Left�TopC  TDataSource	dtsGalpaoDataSet	qryGalpaoLefthTop�  TQuery	qryGalpaoDatabaseNameGeralSQL.Strings#Select Cod_Galinheiro From ugfsgal1where        cod_local = :cod_localand cod_granja = :cod_granjaorder by cod_galinheiro LeftHTop�	ParamDataDataType	ftUnknownName	cod_local	ParamType	ptUnknown DataType	ftUnknownName
cod_granja	ParamType	ptUnknown    TQuery
qryIde_AveDatabaseNameManejoSQL.Strings'Select Ide_Ave, Des_Detal From avfsIde1order by des_detal LefthTopE  TDataSource
dtsIde_AveDataSet
qryIde_AveLeft�TopE  TQueryqryNomeIncubatorioDatabaseNameIncubatorioSQL.Stringsselect nome from cifsloc1"where cod_inc_depto=:cod_inc_depto Left� Top	ParamDataDataTypeftStringNamecod_inc_depto	ParamType	ptUnknown   TStringFieldqryNomeIncubatorionome	FieldNamenomeOriginCIFSLOC1.nomeSize   TQueryqryLoteDatabaseNameIncubatorioSQL.Stringsselect  DISTINCT Cod_Lote_Num,(       ( Convert(Char(2), lot.Ide_Ave) +!        Convert(Char(3), ' - ') +(        Convert(Char(4), lot.Nro_Lote) +!        Convert(Char(3), ' - ') +&        Convert(Char(2), lot.Cod_Lm) +!        Convert(Char(3), ' - ') +&        Convert(Char(2), lot.Cod_Lf) +!        Convert(Char(3), ' - ') +-        Convert(Char(1), lot.Nro_Est) ) Chavefrom avfvlot lotorder by cod_lote_num desc  Left�Top TIntegerFieldqryLoteCod_Lote_NumDisplayLabelLote	FieldNameCod_Lote_Num  TStringFieldqryLoteChaveDisplayLabelDesc. Detalhada	FieldNameChaveSize   TDataSource
dtsqryLoteDataSetqryLoteLeft�Top  TQuery	qryPadraoDatabaseNameIncubatorioSQL.Stringsselect * from cifspam1where cod_lf =:cod_lfand cod_lm=:cod_lmand ide_ave =:ide_aveand nro_est=:nro_estand idade=:idade5and :dat_post between dat_ini_valid and dat_fim_valid Left� Top	ParamDataDataTypeftStringNamecod_lf	ParamType	ptUnknown DataTypeftStringNamecod_lm	ParamType	ptUnknown DataTypeftStringNameide_ave	ParamType	ptUnknown DataTypeftStringNamenro_est	ParamType	ptUnknown DataType	ftIntegerNameidade	ParamType	ptUnknown DataType
ftDateTimeNamedat_post	ParamType	ptUnknown   TStringFieldqryPadraoCOD_LM	FieldNameCOD_LMOriginCIFSPAM1.COD_LMSize  TStringFieldqryPadraoCOD_LF	FieldNameCOD_LFOriginCIFSPAM1.COD_LFSize  TStringFieldqryPadraoIDE_AVE	FieldNameIDE_AVEOriginCIFSPAM1.IDE_AVESize  TStringFieldqryPadraoCOD_LINHA	FieldName	COD_LINHAOriginCIFSPAM1.COD_LINHASize  TStringFieldqryPadraoNRO_EST	FieldNameNRO_ESTOriginCIFSPAM1.NRO_ESTSize  TStringFieldqryPadraoNRO_SUB_EST	FieldNameNRO_SUB_ESTOriginCIFSPAM1.NRO_SUB_ESTSize  TSmallintFieldqryPadraoIDADE	FieldNameIDADEOriginCIFSPAM1.IDADE  TDateTimeFieldqryPadraoDAT_INI_VALID	FieldNameDAT_INI_VALIDOriginCIFSPAM1.DAT_INI_VALID  TDateTimeFieldqryPadraodat_fim_valid	FieldNamedat_fim_validOriginCIFSPAM1.dat_fim_valid  TFloatFieldqryPadraopct_eclosao	FieldNamepct_eclosaoOriginCIFSPAM1.pct_eclosao   TQueryqryIncubatorioDatabaseNameIncubatorioSQL.Strings'select loc.cod_inc_depto, loc.nom_abrevfrom cifsloc1 locwhereloc.flg_desativado = 0 order by loc.nom_abrev  Left�Top�  TStringFieldqryIncubatoriocod_inc_depto	FieldNamecod_inc_deptoSize  TStringFieldqryIncubatorionom_abrev	FieldName	nom_abrevSize
   TDataSourcedtsqryIncubatorioDataSetqryIncubatorioLeft�Top�   TQuery
qryNroLoteDatabaseNameIncubatorioSQL.Stringsselect DISTINCT nro_lotefrom    avfvlotorder by nro_lote Left�Top�  TStringFieldqryNroLotenro_lote	FieldNamenro_loteOriginAVFVLOT.nro_loteSize   TDataSourcedtsqryNroLoteDataSet
qryNroLoteLeft�Top�   TQueryqryDadosIncDatabaseNameIncubatorioSQL.Stringsselect cod_lote_num,
 dat_post, idade, cod_ovo, sum(qtd_ovo) qtd_ovo from cifsinc1 inc where#     cod_inc_depto = :cod_inc_depto! and cod_lote_num = :cod_lote_num and dat_incub = :dat_incub and cod_ovo =:cod_ovo group by cod_lote_num,
 dat_post, idade    ,cod_ovo   LeftYTop#	ParamDataDataType	ftUnknownNamecod_inc_depto	ParamType	ptUnknown DataType	ftUnknownNamecod_lote_num	ParamType	ptUnknown DataType	ftUnknownName	dat_incub	ParamType	ptUnknown DataTypeftStringNamecod_ovo	ParamType	ptUnknown    TQueryqryDadosEclDatabaseNameIncubatorioSQL.Stringsselect!  ecr.cod_inc_depto, ecr.cod_ovo,  loc.nom_abrev incubatorio,  gra.cod_granja,  gra.des_abrev granja,   lot.ide_ave,ide.grupo_ide_ave,  lot.nro_lote,  lot.cod_lf,  lot.cod_lm,  lot.cod_linha,  lot.nro_est,  lot.cod_lote_num,  lot.dat_aloj_inicial,  dat_retirada,  sum( qtd_pinto_morto +       qtd_pinto_elimin +        qtd_pinto_mat_fem_pri +       qtd_pinto_mat_fem_seg +       qtd_pinto_mat_mac_pri +       qtd_pinto_mat_mac_seg +       qtd_pinto_com_fem_pri +       qtd_pinto_com_fem_seg +       qtd_pinto_com_mac_pri +       qtd_pinto_com_mac_seg +       qtd_pinto_com_mis_pri ++       qtd_pinto_com_mis_seg ) tot_nascido,  sum( qtd_pinto_mat_fem_pri +       qtd_pinto_mat_mac_pri +       qtd_pinto_com_fem_pri +       qtd_pinto_com_mac_pri +�       qtd_pinto_com_mis_pri ) tot_venda, sum( qtd_pinto_mat_fem_seg +qtd_pinto_mat_mac_seg +qtd_pinto_com_fem_seg + qtd_pinto_com_mac_seg + qtd_pinto_com_mis_seg ) tot_seg   ,  min(ecr.dat_incub) dat_incub from  cifsecr1 ecr,  avfvlot lot,  ugfvgra gra,  avfvend edr,  cifsloc1 loc , AVFVIDE ide whereC      gra.cod_granja = edr.cod_granja and ide.ide_ave = lot.ide_ave)  and edr.cod_lote_num = ecr.cod_lote_num\  and edr.dat_fim = (select max(dat_fim) from avfvend where cod_lote_num = ecr.cod_lote_num))  and lot.cod_lote_num = ecr.cod_lote_num+  and loc.cod_inc_depto = ecr.cod_inc_depto<  and ecr.dat_retirada between :dat_ini_ecl and :dat_fim_ecl            group by  ecr.cod_inc_depto,  loc.nom_abrev,   lot.ide_ave,ide.grupo_ide_ave,  gra.cod_granja,  gra.des_abrev,  lot.cod_lote_num,  dat_retirada,  lot.nro_lote,  lot.cod_lf,  lot.cod_lm,  lot.cod_linha,  lot.nro_est,#  lot.dat_aloj_inicial ,ecr.cod_ovo order by  ecr.cod_inc_depto, ide.grupo_ide_ave,  lot.ide_ave,  gra.cod_granja,  lot.cod_lote_num,  lot.cod_lf,  lot.cod_lm,  dat_retirada          LeftYTopp	ParamDataDataType
ftDateTimeNamedat_ini_ecl	ParamType	ptUnknown DataType
ftDateTimeNamedat_fim_ecl	ParamType	ptUnknown    TQueryqryPadDatabaseNameIncubatorioSQL.Stringsselect pct_eclosaofrom cifspam1where cod_lf = :cod_lf  and cod_lm = :cod_lm  and nro_est = :nro_est  and ide_ave = :ide_ave  and idade = :idade  and cod_linha = ''  and nro_sub_est = '1'  ?  and :dat_aloj_inicial between dat_ini_valid and dat_fim_valid  Left9Top3	ParamDataDataType	ftUnknownNamecod_lf	ParamType	ptUnknown DataType	ftUnknownNamecod_lm	ParamType	ptUnknown DataType	ftUnknownNamenro_est	ParamType	ptUnknown DataType	ftUnknownNameide_ave	ParamType	ptUnknown DataType	ftUnknownNameidade	ParamType	ptUnknown DataType	ftUnknownNamedat_aloj_inicial	ParamType	ptUnknown    TQueryqryLMDatabaseNameIncubatorioSQL.Strings9select cod_linhagem, convert(char(20),des_abrev)des_abrevfrom avfvlin Left`Top�  TStringFieldqryLMcod_linhagem	FieldNamecod_linhagemSize  TStringFieldqryLMdes_abrev	FieldName	des_abrev   TDataSourcedtsLMDataSetqryLMLeft�Top�   TQuery	qryIdeAveDatabaseNameManejoSQL.StringsSelect des_abrev From avfsIde1where ide_ave =:ide_ave   LeftPTopU	ParamDataDataTypeftStringNameide_ave	ParamType	ptUnknown   TStringFieldqryIdeAvedes_abrev	FieldName	des_abrevOriginavfside1.des_abrev   TQueryqryGrupoDatabaseNameIncubatorioSQL.Strings(select cod_grupo, des_abrev from ugfvgru LeftTop} TStringFieldqryGrupocod_grupo	FieldName	cod_grupoSize  TStringFieldqryGrupodes_abrev	FieldName	des_abrev   TDataSourcedtsGrupoDataSetqryGrupoLeft(Top}  TQueryqryLoteProprioDatabaseNameIncubatorioSQL.Strings select lote_proprio from avfvlot!where cod_lote_num =:cod_lote_num Left�Top� 	ParamDataDataType	ftIntegerNamecod_lote_num	ParamType	ptUnknown   TBooleanFieldqryLotePropriolote_proprio	FieldNamelote_proprioOriginAVFVLOT.lote_proprio   TQueryqryComercialDatabaseNameIncubatorioSQL.Stringsselect!  ecr.cod_inc_depto, ecr.cod_ovo,  loc.nom_abrev incubatorio,  gra.cod_granja,  gra.des_abrev granja,j  (select x.ide_ave_complementar from cifsltc1 x where x.ide_ave = LOT.ide_ave) ide_ave,ide.grupo_ide_ave,  lot.nro_lote,  lot.cod_lf,  lot.cod_lm,  lot.cod_linha,  lot.nro_est,  lot.cod_lote_num,  lot.dat_aloj_inicial,  dat_retirada,  sum( qtd_pinto_morto +       qtd_pinto_elimin +        qtd_pinto_mat_fem_pri +       qtd_pinto_mat_fem_seg +       qtd_pinto_mat_mac_pri +       qtd_pinto_mat_mac_seg +       qtd_pinto_com_fem_pri +       qtd_pinto_com_fem_seg +       qtd_pinto_com_mac_pri +       qtd_pinto_com_mac_seg +       qtd_pinto_com_mis_pri ++       qtd_pinto_com_mis_seg ) tot_nascido,  sum( qtd_pinto_mat_fem_pri +       qtd_pinto_mat_mac_pri +       qtd_pinto_com_fem_pri +       qtd_pinto_com_mac_pri +�       qtd_pinto_com_mis_pri ) tot_venda, sum( qtd_pinto_mat_fem_seg +qtd_pinto_mat_mac_seg +qtd_pinto_com_fem_seg + qtd_pinto_com_mac_seg + qtd_pinto_com_mis_seg ) tot_seg   ,  min(ecr.dat_incub) dat_incub from  cifsecr1 ecr,  avfvlot lot,  ugfvgra gra,  avfvend edr,  cifsloc1 loc , AVFVIDE ide whereC      gra.cod_granja = edr.cod_granja and ide.ide_ave = lot.ide_ave)  and edr.cod_lote_num = ecr.cod_lote_num\  and edr.dat_fim = (select max(dat_fim) from avfvend where cod_lote_num = ecr.cod_lote_num))  and lot.cod_lote_num = ecr.cod_lote_num+  and loc.cod_inc_depto = ecr.cod_inc_depto<  and ecr.dat_retirada between :dat_ini_ecl and :dat_fim_ecl            group by  ecr.cod_inc_depto,  loc.nom_abrev,   lot.ide_ave,ide.grupo_ide_ave,  gra.cod_granja,  gra.des_abrev,  lot.cod_lote_num,  dat_retirada,  lot.nro_lote,  lot.cod_lf,  lot.cod_lm,  lot.cod_linha,  lot.nro_est,#  lot.dat_aloj_inicial ,ecr.cod_ovo order by  ecr.cod_inc_depto, ide.grupo_ide_ave,  lot.ide_ave,  gra.cod_granja,  lot.cod_lote_num,  lot.cod_lf,  lot.cod_lm,  dat_retirada           Left�Topx	ParamDataDataType
ftDateTimeNamedat_ini_ecl	ParamType	ptUnknown DataType
ftDateTimeNamedat_fim_ecl	ParamType	ptUnknown    TQuery	qryNormalDatabaseNameIncubatorioSQL.Stringsselect!  ecr.cod_inc_depto, ecr.cod_ovo,  loc.nom_abrev incubatorio,  gra.cod_granja,  gra.des_abrev granja,   lot.ide_ave,ide.grupo_ide_ave,  lot.nro_lote,  lot.cod_lf,  lot.cod_lm,  lot.cod_linha,  lot.nro_est,  lot.cod_lote_num,  lot.dat_aloj_inicial,  dat_retirada,  sum( qtd_pinto_morto +       qtd_pinto_elimin +        qtd_pinto_mat_fem_pri +       qtd_pinto_mat_fem_seg +       qtd_pinto_mat_mac_pri +       qtd_pinto_mat_mac_seg +       qtd_pinto_com_fem_pri +       qtd_pinto_com_fem_seg +       qtd_pinto_com_mac_pri +       qtd_pinto_com_mac_seg +       qtd_pinto_com_mis_pri ++       qtd_pinto_com_mis_seg ) tot_nascido,  sum( qtd_pinto_mat_fem_pri +       qtd_pinto_mat_mac_pri +       qtd_pinto_com_fem_pri +       qtd_pinto_com_mac_pri +�       qtd_pinto_com_mis_pri ) tot_venda, sum( qtd_pinto_mat_fem_seg +qtd_pinto_mat_mac_seg +qtd_pinto_com_fem_seg + qtd_pinto_com_mac_seg + qtd_pinto_com_mis_seg ) tot_seg   ,  min(ecr.dat_incub) dat_incub from  cifsecr1 ecr,  avfvlot lot,  ugfvgra gra,  avfvend edr,  cifsloc1 loc , AVFVIDE ide whereC      gra.cod_granja = edr.cod_granja and ide.ide_ave = lot.ide_ave)  and edr.cod_lote_num = ecr.cod_lote_num\  and edr.dat_fim = (select max(dat_fim) from avfvend where cod_lote_num = ecr.cod_lote_num))  and lot.cod_lote_num = ecr.cod_lote_num+  and loc.cod_inc_depto = ecr.cod_inc_depto<  and ecr.dat_retirada between :dat_ini_ecl and :dat_fim_ecl            group by  ecr.cod_inc_depto,  loc.nom_abrev,   lot.ide_ave,ide.grupo_ide_ave,  gra.cod_granja,  gra.des_abrev,  lot.cod_lote_num,  dat_retirada,  lot.nro_lote,  lot.cod_lf,  lot.cod_lm,  lot.cod_linha,  lot.nro_est,#  lot.dat_aloj_inicial ,ecr.cod_ovo order by  ecr.cod_inc_depto, ide.grupo_ide_ave,  lot.ide_ave,  gra.cod_granja,  lot.cod_lote_num,  lot.cod_lf,  lot.cod_lm,  dat_retirada          Left�Topx	ParamDataDataType
ftDateTimeNamedat_ini_ecl	ParamType	ptUnknown DataType
ftDateTimeNamedat_fim_ecl	ParamType	ptUnknown    TQueryqryComDatabaseNameIncubatorioSQL.Stringsselect cod_lote_num,
 dat_post,� idade + isnull((select x.idade_complementar from cifsltc1 x, avfvlot lot where x.ide_ave = LOT.ide_ave and lot.cod_lote_num =:cod_lote_num ),0) idade, cod_ovo, sum(qtd_ovo) qtd_ovo from cifsinc1 inc where#     cod_inc_depto = :cod_inc_depto! and cod_lote_num = :cod_lote_num and dat_incub = :dat_incub and cod_ovo =:cod_ovo group by cod_lote_num,
 dat_post, idade    ,cod_ovo    Left� Top#	ParamDataDataType	ftIntegerNamecod_lote_num	ParamType	ptUnknown DataTypeftStringNamecod_inc_depto	ParamType	ptUnknown DataType	ftIntegerNamecod_lote_num	ParamType	ptUnknown DataTypeftDateName	dat_incub	ParamType	ptUnknown DataTypeftStringNamecod_ovo	ParamType	ptUnknown    TQueryqryNorDatabaseNameIncubatorioSQL.Stringsselect cod_lote_num,
 dat_post, idade, cod_ovo, sum(qtd_ovo) qtd_ovo from cifsinc1 inc where#     cod_inc_depto = :cod_inc_depto! and cod_lote_num = :cod_lote_num and dat_incub = :dat_incub and cod_ovo =:cod_ovo group by cod_lote_num,
 dat_post, idade    ,cod_ovo   Left� Top#	ParamDataDataType	ftUnknownNamecod_inc_depto	ParamType	ptUnknown DataType	ftUnknownNamecod_lote_num	ParamType	ptUnknown DataType	ftUnknownName	dat_incub	ParamType	ptUnknown DataTypeftStringNamecod_ovo	ParamType	ptUnknown    TQueryqryTovoDatabaseNameIncubatorioSQL.Stringsselect cod_tip,des_abrevfrom cifstip1where flg_ativo = 1 union select cod_ovo, nom_ovofrom cifstov1where flg_desativado = 0  
order by 2   Left@Top. TStringFieldqryOvocod_tip	FieldNamecod_tipSize  TStringFieldqryOvodes_abrev	FieldName	des_abrevSize
   TDataSource	dtsqryOvoDataSetqryTovoLeft,Top>   
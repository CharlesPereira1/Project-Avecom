�
 TFMOVIMENTOTESTELOTE 0�   TPF0�TFMovimentoTesteLoteFMovimentoTesteLoteTagdLeft�Top� CaptionMovimento de Teste de LoteClientHeightClientWidth	FormStyle
fsMDIChildPositionpoDefaultPosOnlyVisible	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight �TPanelPanel2Width �	TSpeedBar
spbSistemaLeft�  �	TSpeedBarspbFerramentasWidthY �
TSpeedItem	spiVoltarOnClickVoltarClick  �
TSpeedItemspiModificarOnClickModificarClick  �
TSpeedItemspiAdicionarOnClickAdicionarClick  �
TSpeedItemspiConsultaOnClickConsultaClick  �
TSpeedItemspiImprimir  �
TSpeedItemspiLimpaCamposOnClickLimpaCamposClick  �
TSpeedItem
spiExcluirOnClickExcluirClick    �	TNotebook
ntbPaginasLeft Top%WidthHeight� AlignalClientColorclSilver	PageIndexParentColorTabOrder TPage Left Top CaptionEdi��o TPanelPanel1Left Top WidthHeight� AlignalClient
BevelOuterbvNoneTabOrder  TLabelLabel1LeftTopIWidthDHeightCaptionData de Prod.:  TLabelLabel2LeftTop#WidthHeightCaptionLote:  TLabelLabel4LeftTop� WidthHeightCaptionTeste:  TLabelLabel5LeftTop� Width6HeightCaption
Conclus�o:  TLabelLabel3LeftTopsWidthEHeightCaptionData do Teste:  TLabelLabel10Left� TopIWidthDHeightCaptionIdade do Lote:  	TDateEdit
detDatProdLeftXTopEWidthyHeight	NumGlyphsTabOrderOnChangedetDatProdChangeOnExitdetDatProdExit  TCurrencyEditcedCod_Lote_NumLeftXTopWidthIHeightAutoSizeDecimalPlaces DisplayFormat0	MaxLengthTabOrder OnChangecedCod_Lote_NumChangeOnExitcedCod_Lote_NumExit  TDBLookupComboBoxdlcLotesLeft� TopWidth1HeightKeyFieldCod_Lote_Num	ListFieldChave
ListSourcedtsQryLotesTabOrderTabStop	OnCloseUpdlcLotesCloseUp
OnDropDowndlcLotesDropDown  TEditedtObs_TesteLeftXTop� Width�Height	MaxLength� TabOrder  TEditedtObs_ConclusaoLeftXTop� Width�Height	MaxLength� TabOrder  	TDateEditdetDatTesteLeftXTopoWidthyHeight	NumGlyphsTabOrder  TPanelPanel4Left Top WidthHeightAlignalTop
BevelOuterbvNoneTabOrder TLabelLabel6Left�TopWidthHeightCaptionIdade:Visible  TLabelLabel7Left5TopWidth1HeightCaption	Endere�o:  TDBTextDBText1LeftTopWidth(HeightAutoSize		DataFieldidade
DataSourcedtsIdadeEnderecoFont.CharsetANSI_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontVisible  TDBTextDBText2LeftjTopWidth(HeightAutoSize		DataFieldEndereco
DataSourcedtsIdadeEnderecoFont.CharsetANSI_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFont  TLabelLabel8LeftTopWidth1HeightCaption
C�d. Lote:  TDBTextDBText3Left9TopWidth(HeightAutoSize		DataFieldCod_Lote
DataSourcedtsIdadeEnderecoFont.CharsetANSI_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFont  TLabelLabel9Left� TopWidth%HeightCaptionReduz.:  TDBTextDBText4Left� TopWidth(HeightAutoSize		DataFieldcod_lote_num
DataSourcedtsIdadeEnderecoFont.CharsetANSI_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFont   TCurrencyEditcedLotIdadeLeft0TopEWidthIHeightAutoSizeDecimalPlaces DisplayFormat0	MaxLengthTabOrder  	TDateEditdetDat_InicioLeft�TopEWidth1Height	NumGlyphsTabOrderVisible  	TDateEdit
detDat_FimLeft�TopmWidth1Height	NumGlyphsTabOrder	Visible    TPage Left Top CaptionTabela TDBGrid	dgrGruposLeft Top WidthHeight� AlignalClient
DataSourcedtsQryConsultaFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style OptionsdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgRowSelectdgCancelOnExit 
ParentFontReadOnly	TabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclBlackTitleFont.Height�TitleFont.NameArialTitleFont.StylefsBold 
OnDblClickdgrGruposDblClick
OnKeyPressdgrGruposKeyPressColumnsExpanded	FieldNameCOD_LOTE_NUMTitle.CaptionReduz.Visible	 Expanded	FieldName
Data_testeTitle.Caption
Data TesteWidthDVisible	 Expanded	FieldName	obs_testeTitle.CaptionTesteVisible	 Expanded	FieldNameobs_conclusaoTitle.Caption	Conclus�oVisible	      �
TPopupMenuppmPrincipalLeft�Top�  �	TMenuItem
Adicionar1OnClickAdicionarClick  �	TMenuItem
Modificar1OnClickModificarClick  �	TMenuItemExcluir1OnClickExcluirClick  �	TMenuItemLimparCampos1OnClickLimpaCamposClick  �	TMenuItem	Consulta1OnClickConsultaClick  �	TMenuItemVoltar1OnClickVoltarClick   �TQuery	QryCursorLeft� Top�   �TQueryQryLockLeft�Top�   TQueryQryBuscaDatabaseNameManejoLeft@Top�   TQueryQryOperacaoDatabaseNameManejoLeft`Top�   TDataSourcedtsQryConsultaDataSetQryConsultaOnDataChangedtsQryConsultaDataChangeLeft� Top�   TQueryQryConsultaDatabaseNameManejoSQL.StringsSelect Cod_Lote_Num,%           Dat_Inicio, Cod_Registro,            Dat_Fim, Data_teste,          Obs_Teste,           Obs_ConclusaoFrom avfstlo1	where 1=1                          LeftTop�  TAutoIncFieldQryConsultaCOD_REGISTRO	FieldNameCOD_REGISTROOriginavfstlo1.COD_REGISTRO  TIntegerFieldQryConsultaCOD_LOTE_NUM	FieldNameCOD_LOTE_NUMOriginavfstlo1.COD_LOTE_NUM  TDateTimeFieldQryConsultadat_inicioDisplayLabel
Data Teste	FieldName
dat_inicioOriginavfstlo1.dat_inicio  TDateTimeFieldQryConsultadat_fim	FieldNamedat_fimOriginavfstlo1.dat_fim  TStringFieldQryConsultaobs_teste	FieldName	obs_testeOriginavfstlo1.obs_testeSize2  TStringFieldQryConsultaobs_conclusao	FieldNameobs_conclusaoOriginavfstlo1.obs_conclusaoSize2  TStringFieldQryConsultaData_teste	FieldName
Data_teste	FixedChar	   TQueryQryLotesDatabaseNameManejoSQL.StringsSelect   L.Cod_Lote_Num,$       (Convert(Char(4), Nro_Lote) +!        Convert(Char(3), ' - ') +#        Convert(Char(2), Ide_Ave) +!        Convert(Char(3), ' - ') +"        Convert(Char(2), Cod_Lm) +!        Convert(Char(3), ' - ') +"        Convert(Char(2), Cod_Lf) +!        Convert(Char(3), ' - ') +#        Convert(Char(1), Nro_Est) +!        Convert(Char(5), ' - ') +*        Convert(Char(6), E.COD_GALINHEIRO)        ) Chave'From avfslot1 L , avfvUltimo_Endereco EWhere        Dat_Efet_Desc = '01/01/1900'and lote_proprio <> 0#AND E.COD_LOTE_NUM = L.COD_LOTE_NUM Order By nro_lote-- Cod_Lote_Num Desc       Left�Top�   TDataSourcedtsQryLotesDataSetQryLotesLeft�Top�   TQueryQryAtualizaLoteDatabaseNameManejoSQL.StringsDeclare @Lote intDeclare @Teste bitSelect @Lote = :Lote ?if (exists (select * from avfstlo1 where cod_lote_num = @Lote))  Select @Teste = 1 else  Select @Teste = 0 Update avfslot1 Set flg_teste = @Teste Where Cod_Lote_Num = @Lote Left�Top� 	ParamDataDataType	ftUnknownNameLote	ParamType	ptUnknown    TDataSourcedtsIdadeEnderecoDataSetQryIdadeEnderecoLeft�Top5  TQueryQryIdadeEnderecoDatabaseNameManejoSQL.Stringsdeclare @Data datetimedeclare @Lote Int select @Data = :Dataselect @Lote = :Cod_Lote_Num Select d.cod_lote_num,        d.idade,/       ( convert(char(2),e.cod_local) + ' - ' +/         convert(char(2),e.cod_granja)+ ' - ' +.         convert(char(2),e.cod_grupo)+ ' - ' +5         convert(char(3),e.cod_galinheiro)) Endereco,-       (Convert(Char(2), l.Ide_Ave) + ' - ' +.        Convert(Char(4), l.Nro_Lote) + ' - ' +,        Convert(Char(2), l.Cod_Lm) + ' - ' +,        Convert(Char(2), l.Cod_Lf) + ' - ' +-        Convert(Char(1), l.Nro_Est)) Cod_LoteFrom avfsdat1 d,     avfsend1 e,     avfslot1 l Where l.cod_lote_num = @Lote%  and e.cod_lote_num = l.cod_lote_num%  and d.cod_lote_num = l.cod_lote_numV  and ((e.dat_inicio between d.dat_inicio and d.dat_fim and d.dat_fim <= e.dat_fim) orA       (d.dat_inicio >= e.dat_inicio and d.dat_fim <= e.dat_fim)).  and @Data between d.dat_inicio and d.dat_Fim Left�Top5	ParamDataDataType
ftDateTimeNameData	ParamType	ptUnknownValue    `�@ DataType	ftIntegerNameCod_Lote_Num	ParamType	ptUnknownValue�     
unit URMapaClassfMovto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, CurrEdit, Mask, ToolEdit, DB, uADStanIntf,
  uADStanOption, uADStanParam, uADStanError, uADDatSManager, uADPhysIntf,
  uADDAptIntf, uADStanAsync, uADDAptManager, uADCompDataSet, uADCompClient,
  DBCtrls, Grids, DBGrids, Buttons, frxClass, frxDBSet, frxExportXLS,
  frxExportPDF, frxExportXML, frxExportBIFF, CheckLst , frxRich,
  BmsXPTopBar, Math, SpeedBar   ;

type
  TFRMapaClassfMovto = class(TForm)
    Panel1: TPanel;
    DsLote: TDataSource;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    EdDtPostIni: TDateEdit;
    Label8: TLabel;
    CbLote: TDBLookupComboBox;
    DsFornecedor: TDataSource;
    QryLote: TADQuery;
    QryFornecedor: TADQuery;
    QryConsultaReceb: TADQuery;
    Panel3: TPanel;
    QryCadTipOVO: TADQuery;
    BmsXPTopBar1: TBmsXPTopBar;
    Label34: TLabel;
    frxDBQryConsultaReceb: TfrxDBDataset;
    DsConsultaReceb: TDataSource;
    Label2: TLabel;
    CbGranja: TDBLookupComboBox;
    Label3: TLabel;
    EdDtRecebIni: TDateEdit;
    EdDtPostFim: TDateEdit;
    EdDtRecebFim: TDateEdit;
    frxReport1: TfrxReport;
    Label4: TLabel;
    CbTipoOvo: TDBLookupComboBox;
    QryTipOvo: TADQuery;
    DsTipOvo: TDataSource;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    EdDtClassifIni: TDateEdit;
    EdDtClassifFim: TDateEdit;
    Label9: TLabel;
    QryLoteCod_Lote_Num: TADAutoIncField;
    QryLoteide_ave: TStringField;
    QryLotenro_lote: TStringField;
    QryLotecod_lm: TStringField;
    QryLotecod_lf: TStringField;
    QryLotenro_est: TStringField;
    QryLoteChave: TStringField;
    QryLotecod_granja: TStringField;
    QryFornecedorCOD_GRANJA: TStringField;
    QryFornecedorCOD_GERENTE: TIntegerField;
    QryFornecedordes_abrev: TStringField;
    QryFornecedorobservacao: TStringField;
    QryFornecedortimestamp: TBytesField;
    QryFornecedorregistro: TStringField;
    QryFornecedorunidade: TStringField;
    QryFornecedorcod_responsavel: TIntegerField;
    QryFornecedorcod_municipio: TIntegerField;
    QryFornecedorCOD_SIF: TStringField;
    QryFornecedorflg_tipo: TStringField;
    QryFornecedorflg_especie: TStringField;
    QryFornecedorvalid_certificado: TDateTimeField;
    QryFornecedorendereco: TStringField;
    QryFornecedordocumento: TStringField;
    QryFornecedordesc_gta: TStringField;
    QryTipOvocod_tip: TStringField;
    QryTipOvodes_abrev: TStringField;
    Label10: TLabel;
    EdNroNota: TCurrencyEdit;
    Label11: TLabel;
    CbLinhagem: TDBLookupComboBox;
    QryLinhagem: TADQuery;
    DsLinhagem: TDataSource;
    QryLinhagemcod_linhagem: TStringField;
    QryLinhagemdes_abrev: TStringField;
    QryConsultaRecebCOD_TIP: TStringField;
    QryConsultaRecebCOD_LF: TStringField;
    QryConsultaRecebCOD_LM: TStringField;
    QryConsultaRecebCOD_GRANJA: TStringField;
    QryConsultaRecebNOME_GRANJA: TStringField;
    QryConsultaRecebnro_lote: TStringField;
    QryConsultaRecebDAT_REC: TDateTimeField;
    QryConsultaRecebHOR_REC: TStringField;
    QryConsultaRecebdat_post: TDateTimeField;
    QryConsultaRecebidade: TSmallintField;
    QryConsultaRecebqtd_post_receb: TIntegerField;
    QryConsultaRecebCLASSIFICADOS: TIntegerField;
    QryConsultaRecebdat_classif: TStringField;
    QryConsultaRecebhor_classif: TStringField;
    QryConsultaRecebordem: TIntegerField;
    QryConsultaRecebAPROV_REPROV: TStringField;
    QryConsultaRecebqtd_ovo_01: TIntegerField;
    QryConsultaRecebqtd_ovo_02: TIntegerField;
    QryConsultaRecebqtd_ovo_03: TIntegerField;
    QryConsultaRecebQTD_OVO_04: TIntegerField;
    QryConsultaRecebQTD_OVO_05: TIntegerField;
    QryConsultaRecebQTD_OVO_06: TIntegerField;
    QryConsultaRecebQTD_OVO_07: TIntegerField;
    QryConsultaRecebQTD_OVO_08: TIntegerField;
    QryConsultaRecebQTD_OVO_09: TIntegerField;
    QryConsultaRecebQTD_OVO_10: TIntegerField;
    QryConsultaRecebQTD_OVO_11: TIntegerField;
    QryConsultaRecebQTD_OVO_12: TIntegerField;
    QryConsultaRecebQTD_OVO_13: TIntegerField;
    QryConsultaRecebQTD_OVO_14: TIntegerField;
    QryConsultaRecebQTD_OVO_15: TIntegerField;
    QryConsultaRecebQTD_OVO_16: TIntegerField;
    QryConsultaRecebQTD_OVO_17: TIntegerField;
    QryConsultaRecebQTD_OVO_18: TIntegerField;
    QryConsultaRecebQTD_OVO_19: TIntegerField;
    QryConsultaRecebQTD_OVO_20: TIntegerField;
    Panel4: TPanel;
    spbSistema: TSpeedBar;
    SpeedbarSection2: TSpeedbarSection;
    spiSaida: TSpeedItem;
    spiInfo: TSpeedItem;
    spiAjuda: TSpeedItem;
    spbFerramentas: TSpeedBar;
    SpeedbarSection1: TSpeedbarSection;
    spiAdicionar: TSpeedItem;
    spiModificar: TSpeedItem;
    spiExcluir: TSpeedItem;
    spiLimpaCampos: TSpeedItem;
    spiConsulta: TSpeedItem;
    spiImprimir: TSpeedItem;
    spiVoltar: TSpeedItem;
    dsNroLote: TDataSource;
    qryNroLote: TADQuery;
    qryNroLotenro_lote: TStringField;
    Label12: TLabel;
    cbNroLote: TDBLookupComboBox;
    edtGta: TCurrencyEdit;
    Label13: TLabel;
    QryConsultaRecebgta: TIntegerField;
    QryConsultaRecebnro_nf: TIntegerField;
    procedure Novo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Exibe;
    procedure EdDtPostIniExit(Sender: TObject);
    procedure EdDtPostIniChange(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure EdDtAlojamentoFimChange(Sender: TObject);
    procedure QryLoteBeforeOpen(DataSet: TDataSet);
    procedure EdDtPostFimChange(Sender: TObject);
    procedure EdDtPostFimExit(Sender: TObject);
    procedure EdDtRecebIniChange(Sender: TObject);
    procedure EdDtRecebIniExit(Sender: TObject);
    procedure EdDtRecebFimChange(Sender: TObject);
    procedure EdDtRecebFimExit(Sender: TObject);
    procedure EdDtClassifIniChange(Sender: TObject);
    procedure EdDtClassifIniExit(Sender: TObject);
    procedure EdDtClassifFimChange(Sender: TObject);
    procedure EdDtClassifFimExit(Sender: TObject);
    procedure CbGranjaCloseUp(Sender: TObject);
    procedure MontaConsulta(vImprime : Boolean);
    procedure spiLimpaCamposClick(Sender: TObject);
    procedure spiImprimirClick(Sender: TObject);
    procedure spiSaidaClick(Sender: TObject);
    procedure qryNroLoteBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMapaClassfMovto: TFRMapaClassfMovto;
  vGLargura : Double;
  vMontaQueryTel, vMontaQueryRel : String;

implementation

{$R *.dfm}

uses
  UMenu;


procedure TFRMapaClassfMovto.Novo;
begin
  QryConsultaReceb.Close;

  EdDtPostIni.Date    := 0;
  EdDtPostFim.date    := 0;
  EdDtRecebIni.date   := 0;
  EdDtRecebFim.date   := 0;
  EdDtClassifIni.date := 0;
  EdDtClassifFim.date := 0;

  QryFornecedor.Close;
  QryFornecedor.Open;
  CbGranja.KeyValue := '';

  QryLote.Close;
  CbLote.KeyValue := 0;

  qryNroLote.Close;
  cbNroLote.KeyValue := 0;

  QryTipOvo.Close;
  QryTipOvo.Open;
  CbTipoOvo.KeyValue := '';

  QryLinhagem.cLOSE;
  QryLinhagem.Open;
  CbLinhagem.KeyValue := '';

  //try CbTipoOvo.KeyValue := 'BOM' except CbTipoOvo.KeyValue := '' end;

end;


procedure TFRMapaClassfMovto.MontaConsulta(vImprime : Boolean);
var
  vDbCampo, vNomeCampo, vTituloCampo : string;

  vWhere : String;
begin


  vDbCampo     := '';
  vNomeCampo   := '';
  vTituloCampo := '';
  vMontaQueryTel:= '';
  vMontaQueryRel  := '';

  vWhere := '';
  
  if (CbTipoOvo.KeyValue <> '') and (CbTipoOvo.KeyValue <> null) then
    begin
      vWhere := ' AND COD_TIP = ''' + CbTipoOvo.KeyValue + '''';
    end;



  QryCadTipOVO.Close;
  QryCadTipOVO.Sql.Clear;
  QryCadTipOVO.Sql.Text := ' SELECT COD_OVO, DESCRICAO, nro_ordem_ovo, nro_pos_exibicao ' +
                           ' FROM CIFSTOV1                                              ' +
                           ' WHERE flg_chega_no_inc = 1 AND  flg_desativado = 0         ' +
                           vWhere;
  QryCadTipOVO.Open;
  vGLargura := 19;
  vGLargura := vGLargura/20 * 40;

  vGLargura := vGLargura + (((20 - QryCadTipOVO.RecordCount) * 38 )/QryCadTipOVO.RecordCount);


  if vGLargura > 160 then
    vGLargura := 160;



  QryCadTipOVO.Close;
  QryCadTipOVO.Sql.Clear;
  QryCadTipOVO.Sql.Text := ' SELECT COD_OVO, DESCRICAO, nom_ovo, nro_ordem_ovo, nro_pos_exibicao, flg_chega_no_inc, flg_desativado, cod_tip ' +
                           '  FROM CIFSTOV1                                                                                                 ' +
                           '  ORDER BY nro_pos_exibicao                                                                                     ' ;


  QryCadTipOVO.Open;

  QryCadTipOVO.First;


  While not QryCadTipOVO.Eof do
    begin
      vNomeCampo      := 'frxDBQTD_OVO_' + FormatFloat('00',QryCadTipOVO.FieldByName('nro_pos_exibicao').asinteger);
      vDbCampo        := 'QTD_OVO_' + FormatFloat('00',QryCadTipOVO.FieldByName('nro_ordem_ovo').asinteger);
      vTituloCampo    := QryCadTipOVO.FieldByName('nom_ovo').AsString;
      vMontaQueryTel  := vMontaQueryTel  + ', '+ vDbCampo + ' as "' + QryCadTipOVO.FieldByName('nom_ovo').AsString + '" ';
      vMontaQueryRel  := vMontaQueryRel  + ', '+ vDbCampo ;

      TfrxMemoView(frxReport1.FindComponent(vNomeCampo+'TXT')).Text := vTituloCampo;
      TfrxMemoView(frxReport1.FindComponent(vNomeCampo)).Memo.Clear;
      TfrxMemoView(frxReport1.FindComponent(vNomeCampo)).Memo.Add( '[frxDBQryConsultaReceb."' + vDbCampo + '"]');

      TfrxMemoView(frxReport1.FindComponent(vNomeCampo+'T')).Memo.Clear;
      TfrxMemoView(frxReport1.FindComponent(vNomeCampo+'T')).Memo.Add( '[(SUM(<frxDBQryConsultaReceb."' + vDbCampo + '">) /<frxDBQryConsultaReceb."qtd_post_receb">* 100)]');

      //[(SUM(<frxDBQryConsultaReceb."qtd_ovo_01">)/<frxDBQryConsultaReceb."qtd_post_receb">* 100)]



      TfrxMemoView(frxReport1.FindComponent(vNomeCampo+'TXT')).visible := True;
      TfrxMemoView(frxReport1.FindComponent(vNomeCampo)).visible       := True;
      TfrxMemoView(frxReport1.FindComponent(vNomeCampo+'T')).visible       := True;
      if (not QryCadTipOVO.FieldByName('flg_chega_no_inc').AsBoolean) or (QryCadTipOVO.FieldByName('flg_desativado').AsBoolean) then
        begin
          TfrxMemoView(frxReport1.FindComponent(vNomeCampo+'TXT')).visible := False;
          TfrxMemoView(frxReport1.FindComponent(vNomeCampo)).visible       := False;
          TfrxMemoView(frxReport1.FindComponent(vNomeCampo+'T')).visible       := False;

        end;
      if (CbTipoOvo.KeyValue <> '') and (CbTipoOvo.KeyValue <> null) then
        begin
          if Trim(QryCadTipOVO.FieldByName('COD_TIP').AsString) <> Trim(CbTipoOvo.KeyValue) then
            begin
              TfrxMemoView(frxReport1.FindComponent(vNomeCampo+'TXT')).visible := False;
              TfrxMemoView(frxReport1.FindComponent(vNomeCampo)).visible       := False;
              TfrxMemoView(frxReport1.FindComponent(vNomeCampo+'T')).visible       := False;
            end;
        end;
    


      QryCadTipOVO.Next;
    end;


  QryConsultaReceb.Close;

  QryConsultaReceb.SQL.STRINGS[19] := '';
  QryConsultaReceb.SQL.STRINGS[32] := '';
  QryConsultaReceb.SQL.STRINGS[55] := '';


  if vImprime then
    begin
      QryConsultaReceb.SQL.STRINGS[19] := vMontaQueryRel ;
    end
  else
    begin
      QryConsultaReceb.SQL.STRINGS[19] := vMontaQueryTel ;
    end;



  vWhere := '';
  if EdDtPostIni.Date <> 0 then
    begin
      vWhere := vWhere  + ' AND rec.dat_post >= :dat_post_ini ' ;
    end;

  if EdDtPostFim.Date <> 0 then
    begin
      vWhere := vWhere  + ' AND rec.dat_post <= :dat_post_Fim ' ;
    end;

  if EdDtRecebIni.Date <> 0 then
    begin
      vWhere := vWhere  + ' AND rec.DAT_REC >= :DAT_REC_INI ' ;
    end;

  if EdDtRecebFim.Date <> 0 then
    begin
      vWhere := vWhere  + ' AND rec.DAT_REC <= :DAT_REC_FIM ' ;
    end;

  if EdDtClassifIni.Date <> 0 then
    begin
      vWhere := vWhere  + ' AND CLA.DAT_CLASSIF >= :DAT_CLASSIF_INI ' ;
    end;

  if EdDtClassifFim.Date <> 0 then
    begin
      vWhere := vWhere  + ' AND CLA.DAT_CLASSIF <= :DAT_CLASSIF_FIM ' ;
    end;

  if EdNroNota.AsInteger > 0 then
    begin
      vWhere := vWhere + ' AND REC.NRO_NF = :NRO_NF ';
    end;

  if edtGta.AsInteger > 0 then
    begin
      vWhere := vWhere + ' AND REC.GTA = :GTA ';
    end;

  if (CbGranja.KeyValue <> '') and (CbGranja.KeyValue <> null) then
    begin
      vWhere := vWhere  + ' AND EDR.COD_GRANJA = :COD_GRANJA ';
    end;

  if CbLote.KeyValue > 0 then
    begin
      vWhere := vWhere  + ' AND REC.COD_LOTE_NUM = :COD_LOTE_NUM ';
    end;

  if cbNroLote.KeyValue > 0 then
    begin
      vWhere := vWhere  + ' AND LOT.NRO_LOTE = :NRO_LOTE ';
    end;

  if (CbTipoOvo.KeyValue <> '') and (CbTipoOvo.KeyValue <> null) then
    begin
      vWhere := vWhere  + ' AND DRO.COD_TIP = :COD_TIP '
    end;
  if (CbLinhagem.KeyValue <> '') and (CbLinhagem.KeyValue <> null) then
    begin
      vWhere := vWhere  + ' AND LOT.COD_LF = :COD_LF '
    end;



  QryConsultaReceb.SQL.STRINGS[32] := vWhere;
  QryConsultaReceb.SQL.STRINGS[55] := vWhere;



  if EdDtPostIni.Date <> 0 then
    begin
      QryConsultaReceb.ParamByName('dat_post_ini').AsDateTime := EdDtPostIni.Date;
    end;

  if EdDtPostFim.Date <> 0 then
    begin
      QryConsultaReceb.ParamByName('dat_post_Fim').AsDateTime := EdDtPostFim.Date;
    end;

  if EdDtRecebIni.Date <> 0 then
    begin
      QryConsultaReceb.ParamByName('DAT_REC_INI').AsDateTime := EdDtRecebIni.Date;
    end;

  if EdDtRecebFim.Date <> 0 then
    begin
      QryConsultaReceb.ParamByName('DAT_REC_FIM').AsDateTime := EdDtRecebFim.Date;
    end;

  if EdDtClassifIni.Date <> 0 then
    begin
      QryConsultaReceb.ParamByName('DAT_CLASSIF_INI').AsDateTime := EdDtClassifIni.Date;
    end;

  if EdDtClassifFim.Date <> 0 then
    begin
      QryConsultaReceb.ParamByName('DAT_CLASSIF_FIM').AsDateTime := EdDtClassifFim.Date;
    end;

  if EdNroNota.AsInteger > 0 then
    begin
      QryConsultaReceb.ParamByName('NRO_NF').AsInteger := EdNroNota.AsInteger;
    end;

  if edtGta.AsInteger > 0 then
    begin
      QryConsultaReceb.ParamByName('GTA').AsInteger := edtGta.AsInteger;
    end;

  if (CbGranja.KeyValue <> '') and (CbGranja.KeyValue <> null) then
    begin
      QryConsultaReceb.ParamByName('COD_GRANJA').AsString := CbGranja.KeyValue;
    end;

  if CbLote.KeyValue > 0 then
    begin
      QryConsultaReceb.ParamByName('COD_LOTE_NUM').AsString := CbLote.KeyValue;
    end;

  if cbNroLote.KeyValue > 0 then
    begin
      QryConsultaReceb.ParamByName('NRO_LOTE').AsString := cbNroLote.KeyValue;
    end;

  if (CbTipoOvo.KeyValue <> '') and (CbTipoOvo.KeyValue <> null)then
    begin
      QryConsultaReceb.ParamByName('COD_TIP').AsString := CbTipoOvo.KeyValue;
    end;

  if (CbLinhagem.KeyValue <> '') and (CbLinhagem.KeyValue <> null) then
    begin
      QryConsultaReceb.ParamByName('COD_LF').AsString := CbLinhagem.KeyValue;
    end;

  QryConsultaReceb.Open;
  if QryConsultaReceb.IsEmpty then
    begin
      MessageDlg('Nenhum Dado Encontrado!',mtInformation,[mbOk],0);
      Abort;
    end;

end;



procedure TFRMapaClassfMovto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FRMapaClassfMovto := nil;
end;

procedure TFRMapaClassfMovto.Exibe;
begin
  if FRMapaClassfMovto = nil then
      FRMapaClassfMovto := TFRMapaClassfMovto.Create(Self);

  FRMapaClassfMovto.novo;
//  FRCheckListF.Caption:= FRCheckListF.Caption+'      '  ;
  FRMapaClassfMovto.Show;
  FRMapaClassfMovto.WindowState := wsMaximized;

end;

procedure TFRMapaClassfMovto.EdDtPostIniExit(Sender: TObject);
begin
  if ((EdDtPostIni.Text <> '  /  /    ') and (EdDtPostIni.Date = 0)) or ((Length(StringReplace(EdDtPostIni.Text,' ','',[rfReplaceAll, rfIgnoreCase])) > 2) and (Length(StringReplace(EdDtPostIni.Text,' ','',[rfReplaceAll, rfIgnoreCase])) < 10)) then
      begin
        MessageDlg('Informe uma Data Válida!',mtError,[mbOk],0);
        EdDtPostIni.SetFocus;
        Abort;
      end;
end;

procedure TFRMapaClassfMovto.EdDtPostIniChange(Sender: TObject);
begin
  if (Length(StringReplace(EdDtPostIni.Text,' ','',[rfReplaceAll, rfIgnoreCase])) = 10) and (EdDtPostIni.Date = 0) then
    begin
      MessageDlg('Informe uma Data Válida!',mtError,[mbOk],0);
      EdDtPostIni.SetFocus;
      Abort;
    end;
end;

procedure TFRMapaClassfMovto.DBGrid1TitleClick(Column: TColumn);
var
 vordem : string;
begin
  vordem := column.FieldName;





end;

procedure TFRMapaClassfMovto.EdDtAlojamentoFimChange(Sender: TObject);
begin
  //if (Length(StringReplace(EdDtAlojamentoFim.Text,' ','',[rfReplaceAll, rfIgnoreCase])) = 10) and (EdDtAlojamentoFim.Date = 0) then
    begin
      MessageDlg('Informe uma Data Válida!',mtError,[mbOk],0);

      Abort;
    end;
end;

procedure TFRMapaClassfMovto.QryLoteBeforeOpen(DataSet: TDataSet);
begin
  QryLote.ParamByName('COD_GRANJA').AsString := CbGranja.keyValue;
end;

procedure TFRMapaClassfMovto.EdDtPostFimChange(Sender: TObject);
begin

  if (Length(StringReplace(EdDtPostFim.Text,' ','',[rfReplaceAll, rfIgnoreCase])) = 10) and (EdDtPostFim.Date = 0) then
    begin
      MessageDlg('Informe uma Data Válida!',mtError,[mbOk],0);
      EdDtPostFim.SetFocus;
      Abort;
    end;

end;

procedure TFRMapaClassfMovto.EdDtPostFimExit(Sender: TObject);
begin
  if ((EdDtPostFim.Text <> '  /  /    ') and (EdDtPostFim.Date = 0)) or ((Length(StringReplace(EdDtPostFim.Text,' ','',[rfReplaceAll, rfIgnoreCase])) > 2) and (Length(StringReplace(EdDtPostFim.Text,' ','',[rfReplaceAll, rfIgnoreCase])) < 10)) then
      begin
        MessageDlg('Informe uma Data Válida!',mtError,[mbOk],0);
        EdDtPostFim.SetFocus;
        Abort;
      end;
end;

procedure TFRMapaClassfMovto.EdDtRecebIniChange(Sender: TObject);
begin
  if (Length(StringReplace(EdDtRecebIni.Text,' ','',[rfReplaceAll, rfIgnoreCase])) = 10) and (EdDtRecebIni.Date = 0) then
    begin
      MessageDlg('Informe uma Data Válida!',mtError,[mbOk],0);
      EdDtRecebIni.SetFocus;
      Abort;
    end;

end;

procedure TFRMapaClassfMovto.EdDtRecebIniExit(Sender: TObject);
begin
  if ((EdDtRecebIni.Text <> '  /  /    ') and (EdDtRecebIni.Date = 0)) or ((Length(StringReplace(EdDtRecebIni.Text,' ','',[rfReplaceAll, rfIgnoreCase])) > 2) and (Length(StringReplace(EdDtRecebIni.Text,' ','',[rfReplaceAll, rfIgnoreCase])) < 10)) then
      begin
        MessageDlg('Informe uma Data Válida!',mtError,[mbOk],0);
        EdDtRecebIni.SetFocus;
        Abort;
      end;

end;

procedure TFRMapaClassfMovto.EdDtRecebFimChange(Sender: TObject);
begin
  if (Length(StringReplace(EdDtRecebFim.Text,' ','',[rfReplaceAll, rfIgnoreCase])) = 10) and (EdDtRecebFim.Date = 0) then
    begin
      MessageDlg('Informe uma Data Válida!',mtError,[mbOk],0);
      EdDtRecebFim.SetFocus;
      Abort;
    end;

end;

procedure TFRMapaClassfMovto.EdDtRecebFimExit(Sender: TObject);
begin
  if ((EdDtRecebFim.Text <> '  /  /    ') and (EdDtRecebFim.Date = 0)) or ((Length(StringReplace(EdDtRecebFim.Text,' ','',[rfReplaceAll, rfIgnoreCase])) > 2) and (Length(StringReplace(EdDtRecebFim.Text,' ','',[rfReplaceAll, rfIgnoreCase])) < 10)) then
      begin
        MessageDlg('Informe uma Data Válida!',mtError,[mbOk],0);
        EdDtRecebFim.SetFocus;
        Abort;
      end;
end;

procedure TFRMapaClassfMovto.EdDtClassifIniChange(Sender: TObject);
begin
  if (Length(StringReplace(EdDtClassifIni.Text,' ','',[rfReplaceAll, rfIgnoreCase])) = 10) and (EdDtClassifIni.Date = 0) then
    begin
      MessageDlg('Informe uma Data Válida!',mtError,[mbOk],0);
      EdDtClassifIni.SetFocus;
      Abort;
    end;

end;

procedure TFRMapaClassfMovto.EdDtClassifIniExit(Sender: TObject);
begin
  if ((EdDtClassifIni.Text <> '  /  /    ') and (EdDtClassifIni.Date = 0)) or ((Length(StringReplace(EdDtClassifIni.Text,' ','',[rfReplaceAll, rfIgnoreCase])) > 2) and (Length(StringReplace(EdDtClassifIni.Text,' ','',[rfReplaceAll, rfIgnoreCase])) < 10)) then
      begin
        MessageDlg('Informe uma Data Válida!',mtError,[mbOk],0);
        EdDtClassifIni.SetFocus;
        Abort;
      end;
end;

procedure TFRMapaClassfMovto.EdDtClassifFimChange(Sender: TObject);
begin
  if (Length(StringReplace(EdDtClassifFim.Text,' ','',[rfReplaceAll, rfIgnoreCase])) = 10) and (EdDtClassifFim.Date = 0) then
    begin
      MessageDlg('Informe uma Data Válida!',mtError,[mbOk],0);
      EdDtClassifFim.SetFocus;
      Abort;
    end;
end;

procedure TFRMapaClassfMovto.EdDtClassifFimExit(Sender: TObject);
begin
  if ((EdDtClassifFim.Text <> '  /  /    ') and (EdDtClassifFim.Date = 0)) or ((Length(StringReplace(EdDtClassifFim.Text,' ','',[rfReplaceAll, rfIgnoreCase])) > 2) and (Length(StringReplace(EdDtClassifFim.Text,' ','',[rfReplaceAll, rfIgnoreCase])) < 10)) then
      begin
        MessageDlg('Informe uma Data Válida!',mtError,[mbOk],0);
        EdDtClassifFim.SetFocus;
        Abort;
      end;
end;

procedure TFRMapaClassfMovto.CbGranjaCloseUp(Sender: TObject);
begin

  QryLote.Close;
  QryLote.ParamByName('COD_GRANJA').AsString := CbGranja.keyValue;
  QryLote.Open;
  CbLote.KeyValue := 0;

  qryNroLote.Close;
  qryNroLote.ParamByName('COD_GRANJA').AsString := CbGranja.keyValue;
  qryNroLote.Open;
  cbNroLote.KeyValue := 0;

end;

procedure TFRMapaClassfMovto.spiLimpaCamposClick(Sender: TObject);
begin
     Novo;   
end;

procedure TFRMapaClassfMovto.spiImprimirClick(Sender: TObject);
var
  vFiltro1, vFiltro2, vFiltro3, vFiltro4, vImg : String;
  ms1 : TMemoryStream;
//  imagem1 : TJPEGImage;
begin

  MontaConsulta(True);

  vImg := ExtractFileDir(Application.ExeName) + '\logo.jpg';


  frxReport1.Variables['vImg']    :=  vImg ;
  frxReport1.Variables['vLargura']:=  vGLargura;

  frxReport1.ShowReport(True);
  QryConsultaReceb.Close;
end;

procedure TFRMapaClassfMovto.spiSaidaClick(Sender: TObject);
begin
     Close;
end;

procedure TFRMapaClassfMovto.qryNroLoteBeforeOpen(DataSet: TDataSet);
begin
  qryNroLote.ParamByName('COD_GRANJA').AsString := CbGranja.keyValue;
end;

end.

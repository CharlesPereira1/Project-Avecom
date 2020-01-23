{*******************************************************************************}
{                          Avecom Sistemas                                      }
{*******************************************************************************}
{                                                                               }
{ Programa:    UMenu.pas                                                        }
{ Objetivo:   Relatorio Resultado da Quebra de Residuos                         }
{ Histórico de Alterações:                                                      }
{                                                                               }
{ Data         Descrição                                         Autor          }
{13/11/2001    Criação                                                          }
{*******************************************************************************}
unit URelatFiltro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPai, Db, DBTables, Menus, SpeedBar, ExtCtrls, Funcoes, DBCtrls, StdCtrls,
  Mask, ToolEdit, CurrEdit, CheckLst;

type
  TFRelatFiltro = class(TFPai)
    Panel1: TPanel;
    qryEmp: TQuery;
    QryLocal: TQuery;
    dtsQryLocal: TDataSource;
    dtsQryGranja: TDataSource;
    QryGranja: TQuery;
    dtsGalpao: TDataSource;
    qryGalpao: TQuery;
    qryIde_Ave: TQuery;
    dtsIde_Ave: TDataSource;
    lblGranja: TLabel;
    dlcGranja: TDBLookupComboBox;
    lblIdentificacao: TLabel;
    edtGra: TEdit;
    GroupBox1: TGroupBox;
    detDat_inicio: TDateEdit;
    detDat_final: TDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    qryNomeIncubatorio: TQuery;
    Label4: TLabel;
    cedCod_Lote: TCurrencyEdit;
    dlcLote: TDBLookupComboBox;
    qryLote: TQuery;
    qryLoteCod_Lote_Num: TIntegerField;
    qryLoteChave: TStringField;
    dtsqryLote: TDataSource;
    qryPadrao: TQuery;
    Label5: TLabel;
    qryIncubatorio: TQuery;
    qryIncubatoriocod_inc_depto: TStringField;
    qryIncubatorionom_abrev: TStringField;
    dtsqryIncubatorio: TDataSource;
    qryNroLote: TQuery;
    dtsqryNroLote: TDataSource;
    qryNroLotenro_lote: TStringField;
    edtcod_incub: TEdit;
    dlcIncubatorio: TDBLookupComboBox;
    qryPadraoCOD_LM: TStringField;
    qryPadraoCOD_LF: TStringField;
    qryPadraoIDE_AVE: TStringField;
    qryPadraoCOD_LINHA: TStringField;
    qryPadraoNRO_EST: TStringField;
    qryPadraoNRO_SUB_EST: TStringField;
    qryPadraoIDADE: TSmallintField;
    qryPadraoDAT_INI_VALID: TDateTimeField;
    qryPadraodat_fim_valid: TDateTimeField;
    qryPadraopct_eclosao: TFloatField;
    qryDadosInc: TQuery;
    qryDadosEcl: TQuery;
    qryPad: TQuery;
    Label8: TLabel;
    edtLF: TEdit;
    dlcLF: TDBLookupComboBox;
    qryLM: TQuery;
    dtsLM: TDataSource;
    qryLMcod_linhagem: TStringField;
    qryIdeAve: TQuery;
    qryIdeAvedes_abrev: TStringField;
    chlIdes: TCheckListBox;
    QryLocalCod_Local: TStringField;
    QryLocalDes_Abrev: TStringField;
    qryGrupo: TQuery;
    qryGrupocod_grupo: TStringField;
    qryGrupodes_abrev: TStringField;
    dtsGrupo: TDataSource;
    qryNomeIncubatorionome: TStringField;
    qryLoteProprio: TQuery;
    qryLotePropriolote_proprio: TBooleanField;
    qryLMdes_abrev: TStringField;
    qryComercial: TQuery;
    qryNormal: TQuery;
    qryCom: TQuery;
    qryNor: TQuery;
    Label1: TLabel;
    Edit1: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    qryTovo: TQuery;
    qryOvocod_tip: TStringField;
    qryOvodes_abrev: TStringField;
    dtsqryOvo: TDataSource;
    Label17: TLabel;
    edtCodOvo: TEdit;
    dlcOvo: TDBLookupComboBox;
    lblLocal: TLabel;
    chlLocais: TCheckListBox;
    CheckBox1: TCheckBox;
    CurrencyEdit1: TCurrencyEdit;
    Label6: TLabel;
    CheckBox2: TCheckBox;
    Label7: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    RadioGroup1: TRadioGroup;
    rdgOvos: TRadioGroup;
    rdLinhagem: TRadioGroup;
    edtNroLote: TEdit;
    Label9: TLabel;
    dlcNroLote: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure edtLocChange(Sender: TObject);
    procedure edtGraExit(Sender: TObject);
    procedure dlcGranjaCloseUp(Sender: TObject);
    procedure dlcGranjaDropDown(Sender: TObject);
    procedure dlcGalinheiroDropDown(Sender: TObject);
    procedure spiLimpaCamposClick(Sender: TObject);
    procedure spiImprimirClick(Sender: TObject);
    procedure cedCod_LoteChange(Sender: TObject);
    procedure cedCod_LoteExit(Sender: TObject);
    procedure dlcLoteCloseUp(Sender: TObject);
    procedure dlcLoteDropDown(Sender: TObject);
    procedure edtcod_incubChange(Sender: TObject);
    procedure dlcIncubatorioCloseUp(Sender: TObject);
    procedure dlcIncubatorioDropDown(Sender: TObject);
    procedure edtcod_incubExit(Sender: TObject);
    procedure dlcNroLoteDropDown(Sender: TObject);
    procedure dlcLMDropDown(Sender: TObject);
    procedure edtLFChange(Sender: TObject);
    procedure edtLFExit(Sender: TObject);
    procedure dlcLFCloseUp(Sender: TObject);
    procedure dlcLFDropDown(Sender: TObject);
    procedure dlcGrupoDropDown(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure edtCodOvoChange(Sender: TObject);
    procedure edtCodOvoExit(Sender: TObject);
    procedure dlcOvoCloseUp(Sender: TObject);
    procedure dlcNroLoteCloseUp(Sender: TObject);
    procedure edtNroLoteChange(Sender: TObject);
    procedure edtNroLoteExit(Sender: TObject);
  private
    { Private declarations }
     procedure BuscaGalpao();
    function VerificaCampos():Boolean;
  public
    { Public declarations }
    procedure exibe(vRel : integer);
  end;

var
  FRelatFiltro: TFRelatFiltro;
  vLista : string;
  vLista1 : string;
  vLocal : integer;
  vRelat : integer;

implementation

uses UMenu, UMensagens, uRelClassificacaoQRP, uRelTransfQRP,
  uRelRecebimentoQRP, uRelSaldoIncubarQRP, uRelVendasQRP,
  uRelatMapaClassifQRP, uRelSaldoOvos, uRelSaldoOvosNClaCla;

{$R *.DFM}

procedure TFRelatFiltro.exibe(vRel : integer);
begin
  if FRelatFiltro = nil
    then FRelatFiltro := TFRelatFiltro.Create(nil);
  with FRelatFiltro do
    begin
      vRelat := vRel;
      qryLM.open;
      qryLocal.Open;
      qryGranja.Open;
      qryIde_Ave.Open;
      qryIncubatorio.Close;
//      qryIncubatorio.parambyname('usuario').asstring := username;
      qryIncubatorio.open;
      qrylote.open;
      qryNroLote.open;
      qryLocal.First;

      qryIde_Ave.First;
      chlIdes.Clear;
      while not qryIde_Ave.eof do
      begin
          chlIdes.Items.Add(RightSpace(qryIde_Ave.FieldByName('Ide_Ave').AsString, 4) +
                                ' - ' +
                                qryIde_Ave.FieldByName('Des_Detal').AsString);
          qryIde_Ave.Next;
      end;

      qryLocal.First;
      chlLocais.Clear;
      while not qryLocal.eof do
      begin
          chlLocais.Items.Add(RightSpace(qryLocal.FieldByName('Cod_Local').AsString, 4) +
                                ' - ' +
                                qryLocal.FieldByName('Des_Abrev').AsString);
          qryLocal.Next;
      end;
      spiLimpaCampos.OnClick(self);

      RadioGroup1.Visible := false;
      rdgOvos.Visible     := false;

      if vRel = 2 then
         RadioGroup1.Visible := true;

      if vRel = 5 then
         rdgOvos.Visible := true;

      if vRel = 6 then
         RadioGroup1.Visible := true;
         
      if vRelat = 4 then
        begin
          FRelatFiltro.Label1.Visible            := False;
          // Desabilita Incub Origem
          FRelatFiltro.Edit1.Visible             := False;
          FRelatFiltro.DBLookupComboBox1.Visible := False;
          // Desabilita Ovo
          FRelatFiltro.Label17.Visible           := False;
          FRelatFiltro.edtCodOvo.Visible         := False;
          FRelatFiltro.dlcOvo.Visible            := False;
          //
          FRelatFiltro.CheckBox1.Visible         := False;
          FRelatFiltro.Label6.Visible            := False;
          FRelatFiltro.CurrencyEdit1.Visible     := False;
        end;

      show;
    end;
end;


procedure TFRelatFiltro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  action := cafree;
  FRelatFiltro := nil;
end;


procedure TFRelatFiltro.FormCreate(Sender: TObject);
begin
  inherited;
  SetBounds(0, 0, width, Height);
end;

function TFRelatFiltro.VerificaCampos():Boolean;
begin
  Result := False;

  if detDat_inicio.Date <= 0 then
  begin
      MessageDlg(Format(Msg00011,['Data Inicial']), mtInformation, [mbOK], 0);
      try detDat_inicio.SetFocus finally end;
      Exit;
  end;
  if detDat_final.Date <= 0 then
  begin
      MessageDlg(Format(Msg00011,['Data Final']), mtInformation, [mbOK], 0);
      try detDat_final.SetFocus finally end;
      Exit;
  end;
  if detDat_final.Date <  detDat_inicio.Date then
  begin
      MessageDlg(Format(Msg00011,['Data Final']), mtInformation, [mbOK], 0);
      try detDat_final.SetFocus finally end;
      Exit;
  end;


  Result := True;
end;


procedure TFRelatFiltro.edtLocChange(Sender: TObject);
begin
  inherited;
  // Está função é usada para realizar o Skip quando o campor for Código
  // Não remover está função
  if Length(TEdit(Sender).Text) = (TEdit(Sender).MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFRelatFiltro.BuscaGalpao();
begin
 { with qryGalpao do
   begin
     Close;
     ParamByName('Cod_Local').AsString := edtLoc.Text;
     ParamByName('Cod_Granja').AsString := edtGra.Text;
     Open;
   end;}
end;


procedure TFRelatFiltro.edtGraExit(Sender: TObject);
begin
  inherited;
  dlcGranja.KeyValue := Tedit(Sender).Text;
 // BuscaGalpao;
end;


procedure TFRelatFiltro.dlcGranjaCloseUp(Sender: TObject);
begin
  inherited;
  edtGra.Text := qryGranja.FieldByName('Cod_Granja').AsString;

end;
procedure TFRelatFiltro.dlcGranjaDropDown(Sender: TObject);
begin
  inherited;
  with QryGranja do
    begin
      Close;
      Open;
    end;
end;

procedure TFRelatFiltro.dlcGalinheiroDropDown(Sender: TObject);
begin
  inherited;
  with QryGalpao do
    begin
      Close;
      Open;
    end;
end;

procedure TFRelatFiltro.spiLimpaCamposClick(Sender: TObject);
var
 vContador : integer;
begin
  inherited;
    edtcod_incub.Clear;
    dlcIncubatorio.KeyValue := 0;


    dlcGranja.KeyValue := '';

    edtGra.Clear;

    edtLF.Clear;

    dlcLF.KeyValue := 0;
    detDat_inicio.clear;
    detDat_final.clear;

    Edit1.clear;
    DBLookupComboBox1.keyvalue := '';
    
    qryTovo.close;
    qryTovo.open;

    edtCodOvo.clear;
    dlcOvo.keyvalue := '';


    for vContador := 0 to chlLocais.Items.Count - 1 do
        chlLocais.Checked[vContador] := FALSE;
    chlLocais.ItemIndex := 0;

    for vContador := 0 to chlIdes.Items.Count - 1 do
        chlIdes.Checked[vContador] := FALSE;
    chlIdes.ItemIndex := 0;

    rdLinhagem.ItemIndex := 0;
    try edtcod_incub.SetFocus finally end;
end;

procedure TFRelatFiltro.spiImprimirClick(Sender: TObject);
var
 vContador : integer;
begin
  inherited;
  if Not VerificaCampos then  Exit;

     case vRelat of
      1:FRelRecebimentoQRP.Exibe();
      2:FRelClassificacaoQRP.Exibe();
      3:FRelTransfQRP.Exibe();
      4:FRelSaldoIncubarQRP.Exibe();
      5:FRelVendasQRP.Exibe();
      6:FRelatMapaClassifQRP.Exibe();
      7:FRelSaldoOvos.Exibe();
      8:FRelSaldoOvosNClaCla.Exibe();
     end;


end;
procedure TFRelatFiltro.cedCod_LoteChange(Sender: TObject);
begin
  inherited;
  if Length(cedCod_Lote.Text) = (cedCod_Lote.MaxLength) then
      SelectNext(ActiveControl, True, True);
end;

procedure TFRelatFiltro.cedCod_LoteExit(Sender: TObject);
begin
  inherited;
  dlcLote.KeyValue := cedCod_Lote.Text;
end;

procedure TFRelatFiltro.dlcLoteCloseUp(Sender: TObject);
begin
  inherited;
  cedCod_Lote.Text := qryLote.FieldByName('Cod_lote_num').AsString;
  cedCod_LoteExit(nil);
  SelectNext(ActiveControl, True, True);
end;

procedure TFRelatFiltro.dlcLoteDropDown(Sender: TObject);
begin
  inherited;
  with qryLote do
  begin
      Close;
//      parambyname('cod_inc_depto').asstring := Incubatorio;
      Open;
  end;
end;

procedure TFRelatFiltro.edtcod_incubChange(Sender: TObject);
begin
  inherited;
  if Length(edtcod_incub.Text) = (edtcod_incub.MaxLength) then
     SelectNext(ActiveControl, True, True);
end;

procedure TFRelatFiltro.dlcIncubatorioCloseUp(Sender: TObject);
begin
  inherited;
  edtcod_incub.Text := qryIncubatorio.FieldByName('Cod_inc_depto').AsString;
end;

procedure TFRelatFiltro.dlcIncubatorioDropDown(Sender: TObject);
begin
  inherited;
  qryIncubatorio.Close;
//  qryIncubatorio.parambyname('usuario').asstring := username;
  qryIncubatorio.Open;
end;

procedure TFRelatFiltro.edtcod_incubExit(Sender: TObject);
begin
  inherited;
  dlcIncubatorio.KeyValue := edtcod_incub.Text;
end;

procedure TFRelatFiltro.dlcLMDropDown(Sender: TObject);
begin
  inherited;
  with qryLM do
  begin
      Close;
      Open;
  end;
end;

procedure TFRelatFiltro.edtLFChange(Sender: TObject);
begin
  inherited;
  if Length(edtLF.Text) = (edtLF.MaxLength) then
     SelectNext(ActiveControl, True, True);
end;

procedure TFRelatFiltro.edtLFExit(Sender: TObject);
begin
  inherited;
  dlcLF.KeyValue := edtLF.Text;
end;

procedure TFRelatFiltro.dlcLFCloseUp(Sender: TObject);
begin
  inherited;
  edtLF.Text := qryLM.FieldByName('Cod_linhagem').AsString;
//  edtIde.SetFocus;
end;

procedure TFRelatFiltro.dlcLFDropDown(Sender: TObject);
begin
  inherited;
  with qryLM do
  begin
      Close;
      Open;
  end;
end;

procedure TFRelatFiltro.dlcGrupoDropDown(Sender: TObject);
begin
  inherited;
  with qryGrupo do
  begin
      Close;
      Open;
  end;
end;

procedure TFRelatFiltro.Edit1Change(Sender: TObject);
begin
  inherited;
  if Length(Edit1.Text) = (Edit1.MaxLength) then
     SelectNext(ActiveControl, True, True);
end;

procedure TFRelatFiltro.Edit1Exit(Sender: TObject);
begin
  inherited;
  DBLookupComboBox1.KeyValue := Edit1.Text;
end;

procedure TFRelatFiltro.DBLookupComboBox1CloseUp(Sender: TObject);
begin
  inherited;
  Edit1.Text := qryIncubatorio.FieldByName('Cod_inc_depto').AsString;
end;

procedure TFRelatFiltro.edtCodOvoChange(Sender: TObject);
begin
  inherited;
  if Length(edtCodOvo.Text) = (edtCodOvo.MaxLength) then
     SelectNext(ActiveControl, True, True);
end;

procedure TFRelatFiltro.edtCodOvoExit(Sender: TObject);
begin
  inherited;
  dlcOvo.Keyvalue := edtCodOvo.Text;
end;

procedure TFRelatFiltro.dlcOvoCloseUp(Sender: TObject);
begin
  inherited;
  edtCodOvo.Text := qryTOvo.FieldByName('Cod_tip').AsString;
end;

procedure TFRelatFiltro.dlcNroLoteCloseUp(Sender: TObject);
begin
  inherited;
  edtNroLote.Text := qryNroLote.FieldByName('nro_lote').AsString;
  {edtNroLoteExit(nil);
  SelectNext(ActiveControl, True, True); }
end;

procedure TFRelatFiltro.dlcNroLoteDropDown(Sender: TObject);
begin
  inherited;
  with qryNroLote do
  begin
      Close;
      Open;
  end;
end;

procedure TFRelatFiltro.edtNroLoteExit(Sender: TObject);
begin
  inherited;
      dlcNroLote.KeyValue := edtNroLote.Text;

end;

procedure TFRelatFiltro.edtNroLoteChange(Sender: TObject);
begin
  inherited;
      if Length(edtNroLote.Text) = (edtNroLote.MaxLength) then
      SelectNext(ActiveControl, True, True);
      {if Length(edtNroLote.Text) = (edtNroLote.MaxLength) then
      SelectNext(ActiveControl, True, True);}

end;

end.

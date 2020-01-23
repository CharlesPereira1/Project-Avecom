unit URelatTesteLotes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPai, Db, DBTables, Menus, SpeedBar, ExtCtrls, Funcoes, DBCtrls, StdCtrls,
  Mask, ToolEdit, CurrEdit, Grids, Buttons;

type
  TFRelatTesteLotes = class(TFPai)
    Panel1: TPanel;
    QryLocal: TQuery;
    dtsQryLocal: TDataSource;
    dtsQryGranja: TDataSource;
    QryGranja: TQuery;
    QryGrupo: TQuery;
    dtsQryGrupo: TDataSource;
    dtsGalpao: TDataSource;
    qryGalpao: TQuery;
    qryIde_Ave: TQuery;
    dtsIde_Ave: TDataSource;
    lblLocal: TLabel;
    dlcLocal: TDBLookupComboBox;
    lblGranja: TLabel;
    dlcGranja: TDBLookupComboBox;
    lblGrupo: TLabel;
    dlcGrupo: TDBLookupComboBox;
    lblIdentificacao: TLabel;
    dlcIde_Ave: TDBLookupComboBox;
    Label1: TLabel;
    dlcGalinheiro: TDBLookupComboBox;
    datProd: TDateEdit;
    edtLoc: TEdit;
    edtGra: TEdit;
    edtGru: TEdit;
    edtGal: TEdit;
    edtIde: TEdit;
    Label3: TLabel;
    qryBusca: TQuery;
    QryLotes: TQuery;
    dtsQryLotes: TDataSource;
    Label2: TLabel;
    cedCod_Lote_Num: TCurrencyEdit;
    dlcLotes: TDBLookupComboBox;
    Label4: TLabel;
    Label6: TLabel;
    edtLote: TEdit;
    DateEdit1: TDateEdit;
    Label9: TLabel;
    cmbCod_Linha: TComboBox;
    Label5: TLabel;
    edtcod_incub: TEdit;
    dlcIncubatorio: TDBLookupComboBox;
    qryIncubatorio: TQuery;
    qryIncubatoriocod_inc_depto: TStringField;
    qryIncubatorionom_abrev: TStringField;
    dtsqryIncubatorio: TDataSource;
    Label7: TLabel;
    datTeste: TDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure edtLocChange(Sender: TObject);
    procedure edtLocExit(Sender: TObject);
    procedure edtGraExit(Sender: TObject);
    procedure edtGruExit(Sender: TObject);
    procedure edtGalExit(Sender: TObject);
    procedure edtIdeExit(Sender: TObject);
    procedure dlcLocalCloseUp(Sender: TObject);
    procedure dlcGranjaCloseUp(Sender: TObject);
    procedure dlcGrupoCloseUp(Sender: TObject);
    procedure dlcGalinheiroCloseUp(Sender: TObject);
    procedure dlcIde_AveCloseUp(Sender: TObject);
    procedure dlcLocalDropDown(Sender: TObject);
    procedure dlcGranjaDropDown(Sender: TObject);
    procedure dlcGrupoDropDown(Sender: TObject);
    procedure dlcGalinheiroDropDown(Sender: TObject);
    procedure dlcIde_AveDropDown(Sender: TObject);
    procedure spiLimpaCamposClick(Sender: TObject);
    procedure spiImprimirClick(Sender: TObject);
    procedure dlcLotesCloseUp(Sender: TObject);
    procedure dlcLotesDropDown(Sender: TObject);
    procedure cedCod_Lote_NumChange(Sender: TObject);
    procedure cedCod_Lote_NumExit(Sender: TObject);
    procedure spiImprimirClick0(Sender: TObject);
    procedure edtcod_incubChange(Sender: TObject);
    procedure edtcod_incubExit(Sender: TObject);
    procedure dlcIncubatorioCloseUp(Sender: TObject);
    procedure dlcIncubatorioDropDown(Sender: TObject);
  private
    { Private declarations }
    procedure BuscaGalpao();
    function VerificaCampos():Boolean;
  public
    { Public declarations }
    procedure exibe();
  end;

var
  FRelatTesteLotes: TFRelatTesteLotes;
  vRel   : TRelatorio;
  vPrimeiraPagina : Boolean;

implementation

uses UMenu, UVisProgressoPaginacao, UMensagens, URelTesteLotesQRP;

{$R *.DFM}

procedure TFRelatTesteLotes.exibe();
begin
  if FRelatTesteLotes = nil
    then FRelatTesteLotes := TFRelatTesteLotes.Create(nil);
  with FRelatTesteLotes do
    begin
      qryLotes.Open;
      qryLocal.Open;
      qryGranja.Open;
      qryGrupo.Open;
      qryIde_Ave.Open;
      spiLimpaCamposClick(nil);
      show;
    end;
end;


procedure TFRelatTesteLotes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  action := cafree;
  FRelatTesteLotes := nil;
end;


procedure TFRelatTesteLotes.FormCreate(Sender: TObject);
begin
  inherited;
  SetBounds(0,0,Width,Height);
end;

function TFRelatTesteLotes.VerificaCampos():Boolean;
begin
  Result := False;

  {if detPesagem.Date = 0 then
    begin
      MessageDlg(Format(Msg00269,['Data Pesagem']), mtInformation, [mbOK], 0);
      try detPesagem.SetFocus finally end;
      Exit;
    end;        }

  Result := True;
end;


procedure TFRelatTesteLotes.edtLocChange(Sender: TObject);
begin
  inherited;
  // Está função é usada para realizar o Skip quando o campor for Código
  // Não remover está função
  if Length(TEdit(Sender).Text) = (TEdit(Sender).MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFRelatTesteLotes.BuscaGalpao();
begin
  with qryGalpao do
   begin
     Close;
     ParamByName('Cod_Local').AsString := edtLoc.Text;
     ParamByName('Cod_Granja').AsString := edtGra.Text;
     ParamByName('Cod_Grupo').AsString := edtGru.Text;
     Open;
   end;
end;

procedure TFRelatTesteLotes.edtLocExit(Sender: TObject);
begin
  inherited;
  dlcLocal.KeyValue := Tedit(Sender).Text;
  BuscaGalpao;
end;

procedure TFRelatTesteLotes.edtGraExit(Sender: TObject);
begin
  inherited;
  dlcGranja.KeyValue := Tedit(Sender).Text;
  BuscaGalpao;
end;

procedure TFRelatTesteLotes.edtGruExit(Sender: TObject);
begin
  inherited;
  dlcGrupo.KeyValue := Tedit(Sender).Text;
  BuscaGalpao;
end;

procedure TFRelatTesteLotes.edtGalExit(Sender: TObject);
begin
  inherited;
  dlcGalinheiro.KeyValue := Tedit(Sender).Text;
  BuscaGalpao;
end;

procedure TFRelatTesteLotes.edtIdeExit(Sender: TObject);
begin
  inherited;
  dlcIde_Ave.KeyValue := Tedit(Sender).Text;
end;

procedure TFRelatTesteLotes.dlcLocalCloseUp(Sender: TObject);
begin
  inherited;
  edtLoc.Text := qryLocal.FieldByName('Cod_Local').AsString;
  edtGra.SetFocus;
  BuscaGalpao;
end;

procedure TFRelatTesteLotes.dlcGranjaCloseUp(Sender: TObject);
begin
  inherited;
  edtGra.Text := qryGranja.FieldByName('Cod_Granja').AsString;
  edtGru.SetFocus;
  BuscaGalpao;
end;

procedure TFRelatTesteLotes.dlcGrupoCloseUp(Sender: TObject);
begin
  inherited;
  edtGru.Text := qryGrupo.FieldByName('Cod_Grupo').AsString;
  edtGal.SetFocus;
  BuscaGalpao;
end;

procedure TFRelatTesteLotes.dlcGalinheiroCloseUp(Sender: TObject);
begin
  inherited;
  edtGal.Text := qryGalpao.FieldByName('Cod_Galinheiro').AsString;
  edtIde.SetFocus;
end;

procedure TFRelatTesteLotes.dlcIde_AveCloseUp(Sender: TObject);
begin
  inherited;
  edtIde.Text := qryIde_Ave.FieldByName('Ide_Ave').AsString;
end;

procedure TFRelatTesteLotes.dlcLocalDropDown(Sender: TObject);
begin
  inherited;
  with QryLocal do
    begin
      Close;
      Open;
    end;
end;

procedure TFRelatTesteLotes.dlcGranjaDropDown(Sender: TObject);
begin
  inherited;
  with QryGranja do
    begin
      Close;
      Open;
    end;
end;

procedure TFRelatTesteLotes.dlcGrupoDropDown(Sender: TObject);
begin
  inherited;
  with QryGrupo do
    begin
      Close;
      Open;
    end;
end;

procedure TFRelatTesteLotes.dlcGalinheiroDropDown(Sender: TObject);
begin
  inherited;
  with QryGalpao do
    begin
      Close;
      Open;
    end;
end;

procedure TFRelatTesteLotes.dlcLotesCloseUp(Sender: TObject);
begin
  inherited;
  cedCod_Lote_Num.AsInteger := QryLotes.FieldByName('Cod_Lote_Num').AsInteger;

end;

procedure TFRelatTesteLotes.dlcLotesDropDown(Sender: TObject);
begin
  inherited;
  with QryLotes do
    begin
      Close;
      Open;
    end;
end;

procedure TFRelatTesteLotes.cedCod_Lote_NumChange(Sender: TObject);
begin
  inherited;
  // Está função é usada para realizar o Skip quando o campor for Código
  // Não remover está função
  if Length(cedCod_Lote_Num.Text) = (cedCod_Lote_Num.MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFRelatTesteLotes.cedCod_Lote_NumExit(Sender: TObject);
begin
  inherited;
  dlcLotes.KeyValue := cedCod_Lote_Num.AsInteger;
end;


procedure TFRelatTesteLotes.dlcIde_AveDropDown(Sender: TObject);
begin
  inherited;
  with QryIde_Ave do
    begin
      Close;
      Open;
    end;
end;

procedure TFRelatTesteLotes.spiLimpaCamposClick(Sender: TObject);
begin
  inherited;
    cedCod_Lote_Num.Clear;
    {detPesagem.Clear;}
    datProd.Clear;
    datTeste.Clear;
    DateEdit1.clear;

    qryIncubatorio.close;
    qryIncubatorio.Open;
    
    dlcLocal.KeyValue := '';
    dlcGranja.KeyValue := '';
    dlcGrupo.KeyValue := '';
    dlcGalinheiro.KeyValue := '';
    dlcIde_Ave.KeyValue := '';
    edtLote.clear;

    edtcod_incub.Clear;

    edtLoc.Clear;
    edtGra.Clear;
    edtGru.Clear;
    edtGal.Clear;
    edtIde.Clear;
    {try detPesagem.SetFocus finally end;}
end;

procedure TFRelatTesteLotes.spiImprimirClick(Sender: TObject);
var
   StrSql : String;
begin
  inherited;
  if Not VerificaCampos then
     Exit;
     FRelatTesteLoteQRP.exibe();
end;

procedure TFRelatTesteLotes.spiImprimirClick0(Sender: TObject);
begin
  inherited;
  FRelatTesteLoteQRP.exibe;
end;

procedure TFRelatTesteLotes.edtcod_incubChange(Sender: TObject);
begin
  inherited;
  if Length(edtcod_incub.Text) = (edtcod_incub.MaxLength) then
     SelectNext(ActiveControl, True, True);
end;

procedure TFRelatTesteLotes.edtcod_incubExit(Sender: TObject);
begin
  inherited;
  dlcIncubatorio.KeyValue := edtcod_incub.Text;
end;

procedure TFRelatTesteLotes.dlcIncubatorioCloseUp(Sender: TObject);
begin
  inherited;
  edtcod_incub.Text := qryIncubatorio.FieldByName('Cod_inc_depto').AsString;
end;

procedure TFRelatTesteLotes.dlcIncubatorioDropDown(Sender: TObject);
begin
  inherited;
  qryIncubatorio.Close;
  qryIncubatorio.parambyname('usuario').asstring := username;
  qryIncubatorio.Open;
end;

end.

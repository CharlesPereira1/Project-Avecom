unit URelatRelacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPai, Db, DBTables, Menus, SpeedBar, ExtCtrls, Funcoes, DBCtrls, StdCtrls,
  Mask, ToolEdit, CurrEdit;

type
  TFRelatRelacao = class(TFPai)
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
    detfinda: TDateEdit;
    edtLoc: TEdit;
    edtGra: TEdit;
    edtGru: TEdit;
    edtGal: TEdit;
    edtIde: TEdit;
    Label3: TLabel;
    Label7: TLabel;
    cmbListar: TComboBox;
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
  private
    { Private declarations }
    procedure BuscaGalpao();
    function VerificaCampos():Boolean;
  public
    { Public declarations }
    procedure exibe();
  end;

var
  FRelatRelacao: TFRelatRelacao;
  vRel   : TRelatorio;
  vFolha : Integer;
  vPrimeiraPagina : Boolean;

implementation

uses UMenu, UVisProgressoPaginacao, UMensagens, uRelRelacaoQRP;

{$R *.DFM}

procedure TFRelatRelacao.exibe();
begin
  if FRelatRelacao = nil
    then FRelatRelacao := TFRelatRelacao.Create(nil);
  with FRelatRelacao do
    begin
      qryLocal.Open;
      qryGranja.Open;
      qryGrupo.Open;
      qryIde_Ave.Open;
      show;
    end;
end;


procedure TFRelatRelacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  action := cafree;
  FRelatRelacao := nil;
end;


procedure TFRelatRelacao.FormCreate(Sender: TObject);
begin
  inherited;
  SetBounds(0, 0, width, height);
  cmbListar.ItemIndex := 0;

end;

function TFRelatRelacao.VerificaCampos():Boolean;
begin
  Result := False;

  if detFinda.Date = 0 then
    begin
      MessageDlg(Format(Msg00269,['Data Finda']), mtInformation, [mbOK], 0);
      try detFinda.SetFocus finally end;
      Exit;
    end;

  if DayOfWeek(detFinda.Date) = FMenu.Parametros.vDiaSemana then
    begin
      MessageDlg(Format(Msg00159,['Data Finda',FormatDateTime('dddd',DayOfWeek(FMenu.Parametros.vDiaSemana))]), mtInformation, [mbOK], 0);
      detFinda.Date := ProximoDiaFechamento(detFinda.Date);
    end;


  Result := True;
end;


procedure TFRelatRelacao.edtLocChange(Sender: TObject);
begin
  inherited;
  // Está função é usada para realizar o Skip quando o campor for Código
  // Não remover está função
  if Length(TEdit(Sender).Text) = (TEdit(Sender).MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFRelatRelacao.BuscaGalpao();
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

procedure TFRelatRelacao.edtLocExit(Sender: TObject);
begin
  inherited;
  dlcLocal.KeyValue := Tedit(Sender).Text;
  BuscaGalpao;
end;

procedure TFRelatRelacao.edtGraExit(Sender: TObject);
begin
  inherited;
  dlcGranja.KeyValue := Tedit(Sender).Text;
  BuscaGalpao;
end;

procedure TFRelatRelacao.edtGruExit(Sender: TObject);
begin
  inherited;
  dlcGrupo.KeyValue := Tedit(Sender).Text;
  BuscaGalpao;
end;

procedure TFRelatRelacao.edtGalExit(Sender: TObject);
begin
  inherited;
  dlcGalinheiro.KeyValue := Tedit(Sender).Text;
  BuscaGalpao;
end;

procedure TFRelatRelacao.edtIdeExit(Sender: TObject);
begin
  inherited;
  dlcIde_Ave.KeyValue := Tedit(Sender).Text;
end;

procedure TFRelatRelacao.dlcLocalCloseUp(Sender: TObject);
begin
  inherited;
  edtLoc.Text := qryLocal.FieldByName('Cod_Local').AsString;
  edtGra.SetFocus;
  BuscaGalpao;
end;

procedure TFRelatRelacao.dlcGranjaCloseUp(Sender: TObject);
begin
  inherited;
  edtGra.Text := qryGranja.FieldByName('Cod_Granja').AsString;
  edtGru.SetFocus;
  BuscaGalpao;
end;

procedure TFRelatRelacao.dlcGrupoCloseUp(Sender: TObject);
begin
  inherited;
  edtGru.Text := qryGrupo.FieldByName('Cod_Grupo').AsString;
  edtGal.SetFocus;
  BuscaGalpao;
end;

procedure TFRelatRelacao.dlcGalinheiroCloseUp(Sender: TObject);
begin
  inherited;
  edtGal.Text := qryGalpao.FieldByName('Cod_Galinheiro').AsString;
  edtIde.SetFocus;
end;

procedure TFRelatRelacao.dlcIde_AveCloseUp(Sender: TObject);
begin
  inherited;
  edtIde.Text := qryIde_Ave.FieldByName('Ide_Ave').AsString;
end;

procedure TFRelatRelacao.dlcLocalDropDown(Sender: TObject);
begin
  inherited;
  with QryLocal do
    begin
      Close;
      Open;
    end;
end;

procedure TFRelatRelacao.dlcGranjaDropDown(Sender: TObject);
begin
  inherited;
  with QryGranja do
    begin
      Close;
      Open;
    end;
end;

procedure TFRelatRelacao.dlcGrupoDropDown(Sender: TObject);
begin
  inherited;
  with QryGrupo do
    begin
      Close;
      Open;
    end;
end;

procedure TFRelatRelacao.dlcGalinheiroDropDown(Sender: TObject);
begin
  inherited;
  with QryGalpao do
    begin
      Close;
      Open;
    end;
end;

procedure TFRelatRelacao.dlcIde_AveDropDown(Sender: TObject);
begin
  inherited;
  with QryIde_Ave do
    begin
      Close;
      Open;
    end;
end;

procedure TFRelatRelacao.spiLimpaCamposClick(Sender: TObject);
begin
  inherited;
    dlcLocal.KeyValue := '';
    dlcGranja.KeyValue := '';
    dlcGrupo.KeyValue := '';
    dlcGalinheiro.KeyValue := '';
    dlcIde_Ave.KeyValue := '';
    edtLoc.Clear;
    edtGra.Clear;
    edtGru.Clear;
    edtGal.Clear;
    edtIde.Clear;
    detFinda.Clear;
    try edtLoc.SetFocus finally end;
end;

procedure TFRelatRelacao.spiImprimirClick(Sender: TObject);
var
   StrSql : String;
begin
  inherited;
  if Not VerificaCampos then
     Exit;



    FRelRelacaoQRP.Exibe();
  


  
end;
end.

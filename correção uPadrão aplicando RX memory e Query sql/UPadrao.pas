{*******************************************************************************}
{                          Avecom Sistemas                                      }
{*******************************************************************************}
{                                                                               }
{ Programa:    UPadrao.pas                                                      }
{ Objetivo:    Definir os padrões de Cálculos do sistema de Planejamento        }
{ Data:        30/06/2000                                                       }
{                                                                               }
{ Histórico de Alterações:                                                      }
{                                                                               }
{ Data         Descrição                                         Autor          }
{ 06/07/2000   Correção na Inclusão e Exclusão dos registros de                 }
{              padrão quanto ao seus intervalos de idades que ñ                 }
{              pode acontecer de existir uma idade com                          }
{              intervalos                                        Wesley Ferreira}
{ 26/07/2000   Correção nas alterações de Padrão  -   Atualizar                 }
{              a coluna 'tarefa' de PRFSLOT2 alojamentos         Alexandre Fanti}
{                                                                               }
{*******************************************************************************}
unit UPadrao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPai, Menus, SpeedBar, ExtCtrls, StdCtrls, Mask, Db, DBTables, Grids,
  DBGrids, ToolEdit, CurrEdit, ComCtrls, RxGrdCpt, Tabs, DBCtrls, RxMemDS;

type
  TFPadrao = class(TFPai)
    QryBusca: TQuery;
    QryOperacao: TQuery;
    ntbPaginas: TNotebook;
    dgrPadrao: TDBGrid;
    dtsTConsulta: TDataSource;
    QryIdentificacao: TQuery;
    dtsQryIdentificacao: TDataSource;
    QryLm: TQuery;
    dtsQryLm: TDataSource;
    QryLf: TQuery;
    dtsQryLf: TDataSource;
    QryEstacao: TQuery;
    dtsQryEstacao: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    lblTotal: TLabel;
    cedCod_Lot_Num: TCurrencyEdit;
    edtIde_Ave: TEdit;
    dlcIdentificacao: TDBLookupComboBox;
    cedIdade: TCurrencyEdit;
    edtCod_Lm: TEdit;
    dlcLm: TDBLookupComboBox;
    dlcLf: TDBLookupComboBox;
    edtCod_Lf: TEdit;
    edtNro_Est: TEdit;
    dlcEstacao: TDBLookupComboBox;
    cedViabil: TCurrencyEdit;
    cedOvo_Ave: TCurrencyEdit;
    cedRacao_Ave: TCurrencyEdit;
    cedPinto_Ave: TCurrencyEdit;
    cedTotal: TCurrencyEdit;
    GeraPadrao: TSpeedItem;
    Desabilitado1: TMenuItem;
    Label17: TLabel;
    cedOvo1: TCurrencyEdit;
    Label18: TLabel;
    cedOvo2: TCurrencyEdit;
    Label19: TLabel;
    cedOvo3: TCurrencyEdit;
    Label20: TLabel;
    cedOvo6: TCurrencyEdit;
    Label21: TLabel;
    cedOvo4: TCurrencyEdit;
    Label22: TLabel;
    cedOvo5: TCurrencyEdit;
    spdAjustar: TSpeedItem;
    qryAjustarPadrao: TQuery;
    Label11: TLabel;
    Label12: TLabel;
    cedViabil_Macho: TCurrencyEdit;
    cedRacao_Ave_Macho: TCurrencyEdit;
    Label13: TLabel;
    cedPerPost: TCurrencyEdit;
    Label14: TLabel;
    cedtAprovOvo: TCurrencyEdit;
    Label15: TLabel;
    cedEclosao: TCurrencyEdit;
    qryArredonda: TQuery;
    qryArredondavalor: TFloatField;
    qryVersao: TQuery;
    qryVersaodescricao: TStringField;
    qryVersaoversao: TStringField;
    dtsVersao: TDataSource;
    Label26: TLabel;
    edtVersao: TEdit;
    dblVersao: TDBLookupComboBox;
    qryConsulta: TQuery;
    qryConsultacod_lote_num: TIntegerField;
    qryConsultacod_lm: TStringField;
    qryConsultacod_lf: TStringField;
    qryConsultaide_ave: TStringField;
    qryConsultanro_est: TStringField;
    qryConsultaidade: TSmallintField;
    qryConsultaviabil: TFloatField;
    qryConsultaracao_ave: TFloatField;
    qryConsultaovo_ave: TFloatField;
    qryConsultapinto_ave: TFloatField;
    qryConsultapct_ovo_01: TFloatField;
    qryConsultapct_ovo_02: TFloatField;
    qryConsultapct_ovo_03: TFloatField;
    qryConsultapct_ovo_04: TFloatField;
    qryConsultapct_ovo_05: TFloatField;
    qryConsultapct_ovo_06: TFloatField;
    qryConsultatimestamp: TBytesField;
    qryConsultaaprov_ovo: TFloatField;
    qryConsultaviabil_macho: TFloatField;
    qryConsultaracao_ave_macho: TFloatField;
    qryConsultapct_postura: TFloatField;
    qryConsultapct_eclosao: TFloatField;
    qryConsultapct_aproveitamento: TFloatField;
    qryConsultaVERSAO: TStringField;
    qryConsultapct_pinto_elimin: TFloatField;
    tabConsulta: TRxMemoryData;
    tabConsultacod_lote_num: TIntegerField;
    tabConsultacod_lm: TStringField;
    tabConsultacod_lf: TStringField;
    tabConsultaide_ave: TStringField;
    tabConsultanro_est: TStringField;
    tabConsultaidade: TSmallintField;
    tabConsultaviabil: TFloatField;
    tabConsultaracao_ave: TFloatField;
    tabConsultaovo_ave: TFloatField;
    tabConsultapinto_ave: TFloatField;
    tabConsultapct_ovo_01: TFloatField;
    tabConsultapct_ovo_02: TFloatField;
    tabConsultapct_ovo_03: TFloatField;
    tabConsultapct_ovo_04: TFloatField;
    tabConsultapct_ovo_05: TFloatField;
    tabConsultapct_ovo_06: TFloatField;
    tabConsultaaprov_ovo: TFloatField;
    tabConsultaviabil_macho: TFloatField;
    tabConsultaracao_ave_macho: TFloatField;
    tabConsultapct_postura: TFloatField;
    tabConsultapct_eclosao: TFloatField;
    tabConsultapct_aproveitamento: TFloatField;
    tabConsultaVERSAO: TStringField;
    tabConsultapct_pinto_elimin: TFloatField;
    qryAtualizaPadrao: TQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    SmallintField1: TSmallintField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    BytesField1: TBytesField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    StringField5: TStringField;
    FloatField17: TFloatField;
    tabConsultapinto_ave_calc: TFloatField;
    tabConsultaresultado: TFloatField;
    function LimpaCampos : Boolean;
    function MostraCampos: Boolean;
    function VerificaCampos: Boolean;
    function BuscaCadastro: Boolean;
    procedure Calcula;
    procedure Exibe;
    procedure AdicionarClick(Sender: TObject);
    procedure ModificarClick(Sender: TObject);
    procedure LimpaCamposClick(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure ConsultaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dgrPadraoDblClick(Sender: TObject);
    procedure dgrPadraoKeyPress(Sender: TObject; var Key: Char);
    procedure edtIde_AveExit(Sender: TObject);
    procedure dlcIdentificacaoDropDown(Sender: TObject);
    procedure dlcIdentificacaoCloseUp(Sender: TObject);
    procedure dlcLmCloseUp(Sender: TObject);
    procedure dlcLmDropDown(Sender: TObject);
    procedure dlcLfCloseUp(Sender: TObject);
    procedure dlcLfDropDown(Sender: TObject);
    procedure edtCod_LmExit(Sender: TObject);
    procedure edtCod_LfExit(Sender: TObject);
    procedure dlcEstacaoCloseUp(Sender: TObject);
    procedure dlcEstacaoDropDown(Sender: TObject);
    procedure edtNro_EstExit(Sender: TObject);
    procedure cedIdadeChange(Sender: TObject);

    procedure GraficoClick(Sender: TObject);
    procedure VoltarClick(Sender: TObject);
    procedure GeraPadraoClick(Sender: TObject);
    procedure AjudaClick(Sender: TObject);
    procedure edtCod_LmChange(Sender: TObject);
    procedure edtCod_LfChange(Sender: TObject);
    procedure edtIde_AveChange(Sender: TObject);
    procedure edtNro_EstChange(Sender: TObject);
    procedure spdAjustarClick(Sender: TObject);
    procedure cedOvo5Exit(Sender: TObject);
    procedure cedPerPostExit(Sender: TObject);
    procedure cedEclosaoExit(Sender: TObject);
    procedure edtVersaoExit(Sender: TObject);
    procedure dblVersaoCloseUp(Sender: TObject);
    procedure RxPadroesBeforePost(DataSet: TDataSet);
    procedure tabConsultaCalcFields(DataSet: TDataSet);
    procedure RxPadroesAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPadrao          : TFPadrao;
  vCodigo          : Integer;
  vIdade           : Integer;
  vVersao          : string;
  vLm              : String[2];
  vLf              : String[2];
  vEstacao         : String[1];
  vIdentificacao   : String[2];
  TipoEntradaDados : Shortint;
  TipoTab          : Shortint;
  vCarregando      : boolean;

implementation

uses Funcoes, UMenu, UMensagens, UGraficoPadrao, UGerarPadrao,
  UAjustarPadrao;

{$R *.DFM}

procedure TFPadrao.Exibe;
begin
  Screen.Cursor := crHourGlass;
  if FPadrao = nil then
    begin
      FPadrao := TFPadrao.Create(Self);
    end;
  if VerificaOpcao(FPadrao.Tag, FPadrao) then
    begin
      FPadrao.LimpaCampos;
      FPadrao.Show;
      FPadrao.QryLm.Open;
      FPadrao.QryLf.Open;
      FPadrao.QryEstacao.Open;
      FPadrao.QryIdentificacao.Open;
//      FPadrao.qryVersao.open;
      FPadrao.WindowState := wsNormal;  {O form esta minimizado}
    end;
  Screen.Cursor := crDefault;
end;

// Função para Limpar todos os campos
function TFPadrao.LimpaCampos : Boolean;
begin

  TipoTab := 0;
  ntbPaginas.PageIndex := 0;
  cedCod_Lot_Num.Clear;

  qryVersao.close;
  qryVersao.open;
  edtVersao.clear;
  dblVersao.keyvalue := '';

{  edtVersao.clear;
  dblVersao.keyvalue := 0;
  edtVersao.Enabled := true;
  dblVersao.Enabled := true;}

  cedIdade.Clear;
  edtCod_Lm.Clear;
  edtCod_LmExit(FPadrao);
  edtCod_Lf.Clear;
  edtCod_LfExit(FPadrao);
  edtNro_Est.Clear;
  edtNro_EstExit(FPadrao);
  edtIde_Ave.Clear;
  edtIde_AveExit(FPadrao);
  cedViabil.Clear;
  cedViabil_Macho.Clear;
  cedRacao_Ave.Clear;
  cedRacao_Ave_Macho.Clear;
  cedOvo_Ave.Clear;
  cedPinto_Ave.Clear;
  cedtAprovOvo.clear;
  cedEclosao.clear;
  cedTotal.Value := 68;
  ModoInsert := True;
  ModoUpdate := False;
  GeraPadrao.Enabled := ModoUpdate;
  spdAjustar.Enabled := ModoUpdate;
  ModoDelete := False;
  VerificaBotoes;
  lblTotal.Visible := True;
  cedTotal.Visible := True;
  cedCod_Lot_Num.Enabled := True;
  cedIdade.Enabled := True;
  edtCod_Lm.Enabled := True;
  dlcLm.Enabled := True;
  edtCod_Lf.Enabled := True;
  dlcLf.Enabled := True;
  edtNro_Est.Enabled := True;
  dlcEstacao.Enabled := True;
  edtIde_Ave.Enabled := True;
  dlcIdentificacao.Enabled := True;
  cedPerPost.clear;


  cedOvo1.Clear;
  cedOvo2.Clear;
  cedOvo3.Clear;
  cedOvo4.Clear;
  cedOvo5.Clear;
  cedOvo6.Clear;
  cedCod_Lot_Num.SetFocus;
  Result := True;
end;

// Função para mostrar os campos do registro
function TFPadrao.MostraCampos: Boolean;
begin
  with QryBusca do
    begin
      cedCod_Lot_Num.Text := IntToStr(FieldByName('Cod_Lote_Num').AsInteger);

      edtVersao.text := fieldbyname('versao').asstring;

      cedIdade.Text             := IntToStr(FieldByName('Idade').AsInteger);
      edtCod_Lm.Text            := FieldByName('Cod_Lm').AsString;
      dlcLm.KeyValue            := FieldByName('Cod_Lm').AsString;
      edtCod_Lf.Text            := FieldByName('Cod_Lf').AsString;
      dlcLf.KeyValue            := FieldByName('Cod_Lf').AsString;
      edtNro_Est.Text           := FieldByName('Nro_Est').AsString;
      dlcEstacao.KeyValue       := FieldByName('Nro_Est').AsString;
      edtIde_Ave.Text           := FieldByName('Ide_Ave').AsString;
      dlcIdentificacao.KeyValue := FieldByName('Ide_Ave').AsString;
      cedViabil.Value           := FieldByName('Viabil').AsFloat;
      cedViabil_Macho.Value     := FieldByName('Viabil_Macho').AsFloat;
      cedRacao_Ave.Value        := FieldByName('Racao_Ave').AsFloat;
      cedRacao_Ave_Macho.Value  := FieldByName('Racao_Ave_Macho').AsFloat;
      cedOvo_Ave.Value          := FieldByName('Ovo_Ave').AsFloat;
//      cedPerPost.value := (cedOvo_Ave.value/7)*100;
      cedPerPost.Value          := FieldByName('Pct_postura').AsFloat;
      cedPinto_Ave.Value        := FieldByName('Pinto_Ave').AsFloat;
      cedtAprovOvo.value        := FieldByName('aprov_ovo').AsFloat;
      cedEclosao.value          := FieldByName('pct_eclosao').AsFloat;
      
      cedOvo1.Value := FieldByName('pct_ovo_01').AsFloat;
      cedOvo2.Value := FieldByName('pct_ovo_02').AsFloat;
      cedOvo3.Value := FieldByName('pct_ovo_03').AsFloat;
      cedOvo4.Value := FieldByName('pct_ovo_04').AsFloat;
      cedOvo5.Value := FieldByName('pct_ovo_05').AsFloat;
      cedOvo6.Value := FieldByName('pct_ovo_06').AsFloat;

      edtVersao.Enabled := false;
      dblVersao.Enabled := false;

      lblTotal.Visible := False;
      cedTotal.Visible := False;
      cedCod_Lot_Num.Enabled := False;
      cedIdade.Enabled := False;
      edtCod_Lm.Enabled := False;
      dlcLm.Enabled := False;
      edtCod_Lf.Enabled := False;
      dlcLf.Enabled := False;
      edtNro_Est.Enabled := False;
      dlcEstacao.Enabled := False;
      edtIde_Ave.Enabled := False;
      dlcIdentificacao.Enabled := False;
      TipoTab := 1;
    end;
end;

// Função para verificar se os campos estão preenchidos
function TFPadrao.VerificaCampos: Boolean;
var
  vAuxSoma : Currency;
begin
  Result := False;

  if (cedCod_Lot_Num.Value < 0) then
    begin
      MessageDlg(Msg00040, mtInformation, [mbOK], 0);
      cedCod_Lot_Num.SetFocus;
      Exit;
    end;


  qryBusca.close;
  qryBusca.sql.text := ' select versao from prfscvp2 where versao =:versao ';
  qryBusca.parambyname('versao').asstring := edtVersao.text;
  qryBusca.open;
  if qryBusca.isempty then
  begin
     MessageDlg(MSg00127, mtInformation, [mbOK], 0);
     try edtVersao.setfocus; except end;
     exit;
  end;


  if cedIdade.Value < 0 then
    begin
      MessageDlg(Msg00041, mtInformation, [mbOK], 0);
      cedIdade.SetFocus;
      Exit;
    end;

  if dlcLm.Text = '' then
    begin
      MessageDlg(Msg00042, mtInformation, [mbOK], 0);
      edtCod_Lm.SetFocus;
      Exit;
    end;

  if dlcLf.Text = '' then
    begin
      MessageDlg(Msg00043, mtInformation, [mbOK], 0);
      edtCod_Lf.SetFocus;
      Exit;
    end;

  if dlcEstacao.Text = '' then
    begin
      MessageDlg(Msg00044, mtInformation, [mbOK], 0);
      edtNro_Est.SetFocus;
      Exit;
    end;

  if dlcIdentificacao.Text = '' then
    begin
      MessageDlg(Msg00045, mtInformation, [mbOK], 0);
      edtIde_Ave.SetFocus;
      Exit;
    end;

  if (cedViabil.Value < 0) or (cedViabil.Value > 100) then
    begin
      MessageDlg(Msg00064, mtInformation, [mbOK], 0);
      cedViabil.SetFocus;
      Exit;
    end;

  if (cedViabil_Macho.Value < 0) or (cedViabil_Macho.Value > 100) then
    begin
      MessageDlg(Msg00064, mtInformation, [mbOK], 0);
      cedViabil_Macho.SetFocus;
      Exit;
    end;

  if (cedRacao_Ave.Value < 0) or (cedRacao_Ave.Value > 1000) then
    begin
      MessageDlg(Msg00065, mtInformation, [mbOK], 0);
      cedRacao_Ave.SetFocus;
      Exit;
    end;

  if (cedRacao_Ave_Macho.Value < 0) or (cedRacao_Ave_Macho.Value > 1000) then
    begin
      MessageDlg(Msg00065, mtInformation, [mbOK], 0);
      cedRacao_Ave_Macho.SetFocus;
      Exit;
    end;

  if (cedOvo_Ave.Value < 0) or (cedOvo_Ave.Value > 10) then
    begin
      MessageDlg(Msg00066, mtInformation, [mbOK], 0);
      cedOvo_Ave.SetFocus;
      Exit;
    end;

  if (cedPinto_Ave.Value < 0) or (cedPinto_Ave.Value > 10) then
    begin
      MessageDlg(Msg00067, mtInformation, [mbOK], 0);
      cedPinto_Ave.SetFocus;
      Exit;
    end;

  if (cedPinto_Ave.Value > cedOvo_Ave.Value) then
    begin
      MessageDlg(Msg00072, mtInformation, [mbOK], 0);
      cedPinto_Ave.SetFocus;
      Exit;
    end;

  if (cedOvo1.Value < 0) or (cedOvo1.Value > 100) then
    begin
      MessageDlg(Format(Msg00121,['1']), mtInformation, [mbOK], 0);
      cedOvo1.SetFocus;
      Exit;
    end;

  if (cedOvo2.Value < 0) or (cedOvo2.Value > 100) then
    begin
      MessageDlg(Format(Msg00121,['2']), mtInformation, [mbOK], 0);
      cedOvo2.SetFocus;
      Exit;
    end;

  if (cedOvo3.Value < 0) or (cedOvo3.Value > 100) then
    begin
      MessageDlg(Format(Msg00121,['3']), mtInformation, [mbOK], 0);
      cedOvo3.SetFocus;
      Exit;
    end;

  if (cedOvo4.Value < 0) or (cedOvo4.Value > 100) then
    begin
      MessageDlg(Format(Msg00121,['4']), mtInformation, [mbOK], 0);
      cedOvo4.SetFocus;
      Exit;
    end;

  if (cedOvo5.Value < 0) or (cedOvo5.Value > 100) then
    begin
      MessageDlg(Format(Msg00121,['5']), mtInformation, [mbOK], 0);
      cedOvo5.SetFocus;
      Exit;
    end;

  if (cedOvo6.Value < 0) or (cedOvo6.Value > 100) then
    begin
      MessageDlg(Format(Msg00121,['6']), mtInformation, [mbOK], 0);
      cedOvo6.SetFocus;
      Exit;
    end;

  vAuxSoma := cedOvo1.Value + cedOvo2.Value  + cedOvo3.Value  + cedOvo4.Value  + cedOvo5.Value  + cedOvo6.Value;

  if (100 <> vAuxSoma )
    and (0 <> vAuxSoma ) then
    begin
      MessageDlg(Msg00122, mtInformation, [mbOK], 0);
      cedOvo1.SetFocus;
      Exit;
    end;
  try cedOvo_Ave.value := (cedPerPost.value/100)*7; except end;
  Result := True;
end;

// Função para Buscar o Cadastro
function TFPadrao.BuscaCadastro: Boolean;
var
  vSelect : String;
  vWhere  : String;
begin
  inherited;
  vSelect := 'Select * From prfspad2 ';
  vWhere  := 'Where Cod_Lote_Num =:cod_lote_num and idade=:idade and Cod_Lm=:cod_lm and Cod_Lf=:Cod_Lf and Nro_Est=:Nro_Est and Ide_Ave=:Ide_Ave and versao=:versao ';
  with qryBusca do
  begin
     Close;
     Sql.Text := vSelect;
     Sql.Add(vWhere);
     Parambyname('Cod_Lote_Num').asinteger := vCodigo;
     Parambyname('idade').asinteger := vIdade;
     Parambyname('Cod_Lm').asstring := vLm;
     Parambyname('Cod_Lf').asstring := vLf;
     Parambyname('Nro_Est').asstring := vEstacao;
     Parambyname('Ide_Ave').asstring := vIdentificacao;
     Parambyname('versao').asstring := vVersao;
     Open;
     if IsEmpty then
     begin
        Limpacampos;
     end
     else
     begin
        ModoInsert := False;
        ModoUpdate := True;
        GeraPadrao.Enabled := ModoUpdate;
        spdAjustar.Enabled := ModoUpdate;
        ModoDelete := False;
        MostraCampos;
        ntbPaginas.PageIndex := 0;
     end;
  end;
  VerificaBotoes;
  Result := True;
end;

procedure TFPadrao.AdicionarClick(Sender: TObject);
var
  vSelect     : String;
  vCampos     : String;
  vWhere      : String;
  vValues     : String;
  LinhasIdade : Integer;
  Contador    : Integer;
  Quantidade  : Real;
  Progresso   : Real;
begin
  inherited;
  if not (VerificaCampos) then
    begin
      Exit;
    end;
  Contador       := 0;
  vCodigo        := Trunc(cedCod_Lot_Num.Value);
  vIdade         := Trunc(cedIdade.Value);
  vLm            := edtCod_Lm.Text;
  vLf            := edtCod_Lf.Text;
  vEstacao       := edtNro_Est.Text;
  vIdentificacao := edtIde_Ave.Text;
  vVersao        := edtVersao.text;

  vSelect := 'Select * From prfspad2 ';
  vWhere  := 'Where Cod_Lote_Num =:cod_lote_num and idade=:idade and Cod_Lm=:cod_lm and Cod_Lf=:Cod_Lf and Nro_Est=:Nro_Est and Ide_Ave=:Ide_Ave and Versao=:Versao ';
  with qryBusca do
  begin
     Close;
     Sql.Text := vSelect;
     Sql.Add(vWhere);
     Parambyname('Versao').asstring := vVersao;
     Parambyname('Cod_Lote_Num').asinteger := vCodigo;
     Parambyname('idade').asinteger := vIdade;
     Parambyname('Cod_Lm').asstring := vLm;
     Parambyname('Cod_Lf').asstring := vLf;
     Parambyname('Nro_Est').asstring := vEstacao;
     Parambyname('Ide_Ave').asstring := vIdentificacao;
     Open;
     if not IsEmpty then
     begin
        MessageDlg(Msg00046, mtInformation, [mbOK], 0);
        cedCod_Lot_Num.SetFocus;
        Exit;
     end;
  end;

  vSelect := 'Select Max(Idade) From prfspad2 ';
  vWhere  := 'Where Cod_Lote_Num =:cod_lote_num and Cod_Lm=:cod_lm and Cod_Lf=:Cod_Lf and Nro_Est=:Nro_Est and Ide_Ave=:Ide_Ave and Versao=:Versao ';
  with qryBusca do
  begin
     Close;
     Sql.Text := vSelect;
     Sql.Add(vWhere);
     Parambyname('Cod_Lote_Num').asinteger := vCodigo;
     Parambyname('Cod_Lm').asstring := vLm;
     Parambyname('Cod_Lf').asstring := vLf;
     Parambyname('Ide_Ave').asstring := vIdentificacao;
     Parambyname('Nro_Est').asstring := vEstacao;
     Parambyname('Versao').asstring := vVersao;
     Open;

     if not IsEmpty then
     begin
        Contador := QryBusca.Fields[0].AsInteger;
        if ((QryBusca.Fields[0].AsInteger + 1) < vIdade) then
        begin
            if MessageDlg(Format(Msg00070, [IntToStr(QryBusca.Fields[0].AsInteger + 1), IntToStr(vIdade)]), mtInformation, [mbYes, mbNo], 0) = mrYes then
            begin
               Contador := QryBusca.Fields[0].AsInteger;
            end
            else
            begin
               Exit;
            end;
        end;

     end;
  end;

  try
    begin
      Screen.Cursor := crHourGlass;
      if cedIdade.Value > (Contador + 1) then
        begin
          FMenu.ggeProgresso.Progress := 0;
          FMenu.ggeProgresso.Visible := True;
          Quantidade := (1000 / (cedIdade.Value - Contador));
        end;
      if Trunc(cedIdade.Value) = 0 then
        begin
          FMenu.ggeProgresso.Progress := 0;
          FMenu.ggeProgresso.Visible := True;
          Quantidade := (1000 / (cedTotal.Value - Contador));
          LinhasIdade := Trunc(cedTotal.Value);
        end
      else
        LinhasIdade := Trunc(cedIdade.Value);
      if not(FMenu.dbsPlanejamento.InTransaction) then
        FMenu.dbsPlanejamento.StartTransaction;
      while LinhasIdade > Contador do
        begin
          FMenu.Refresh;
          vSelect := 'Insert Into prfspad2 ';
          vCampos := 'Cod_Lote_Num, Idade, Cod_Lm, Cod_Lf, Nro_Est, Ide_Ave, Viabil, Viabil_Macho, Racao_Ave, Racao_Ave_Macho, Ovo_Ave, Pinto_Ave, pct_ovo_01, pct_ovo_02, pct_ovo_03, pct_ovo_04, pct_ovo_05, pct_ovo_06 ,pct_postura,aprov_ovo,pct_eclosao,VERSAO ';
          vValues := ':Cod_Lote_Num, :Idade, :Cod_Lm, :Cod_Lf, :Nro_Est, :Ide_Ave, :Viabil, :Viabil_Macho, :Racao_Ave, :Racao_Ave_Macho, :Ovo_Ave, :Pinto_Ave, :pct_ovo_01, :pct_ovo_02, :pct_ovo_03, :pct_ovo_04, :pct_ovo_05, '+':pct_ovo_06,:pct_postura,:aprov_ovo,round(:pct_eclosao,2),:VERSAO   ';
          InsertDados(QryOperacao, vSelect, vCampos, vValues);
          with QryOperacao do
            begin
              ParamByName('Cod_Lote_Num').AsInteger := Trunc(cedCod_Lot_Num.Value);
              ParamByName('Idade').AsInteger := LinhasIdade;
              ParamByName('Cod_Lm').AsString := edtCod_Lm.Text;
              ParamByName('Cod_Lf').AsString := edtCod_Lf.Text;
              ParamByName('Nro_Est').AsString := edtNro_Est.Text;
              ParamByName('Ide_Ave').AsString := edtIde_Ave.Text;
              ParamByName('Viabil').AsFloat := cedViabil.Value;
              ParamByName('Viabil_Macho').AsFloat := cedViabil_Macho.Value;
              ParamByName('Racao_Ave').AsFloat := cedRacao_Ave.Value;
              ParamByName('Racao_Ave_Macho').AsFloat := cedRacao_Ave_Macho.Value;
              ParamByName('Ovo_Ave').AsFloat := cedOvo_Ave.Value;
              ParamByName('Pinto_Ave').AsFloat := cedPinto_Ave.Value;
              ParamByName('aprov_ovo').AsFloat := cedtAprovOvo.Value;
              ParamByName('pct_eclosao').AsFloat := cedEclosao.Value;
              ParamByName('pct_postura').AsFloat := cedPerPost.Value;
              ParamByName('pct_ovo_01').AsFloat := cedOvo1.Value;
              ParamByName('pct_ovo_02').AsFloat := cedOvo2.Value;
              ParamByName('pct_ovo_03').AsFloat := cedOvo3.Value;
              ParamByName('pct_ovo_04').AsFloat := cedOvo4.Value;
              ParamByName('pct_ovo_05').AsFloat := cedOvo5.Value;
              ParamByName('pct_ovo_06').AsFloat := cedOvo6.Value;
              Parambyname('Versao').asstring := vVersao;
              ExecSQL;
            end;
          LinhasIdade := LinhasIdade - 1;
          Progresso := Progresso + Quantidade;
          //FMenu.ggeProgresso.Progress := Trunc(Progresso);
        end;
      FMenu.dbsPlanejamento.Commit;
      FMenu.ggeProgresso.Visible := False;
      Screen.Cursor := crDefault;
    end;
  except
    begin
      FMenu.dbsPlanejamento.Rollback;
      Application.HandleException(QryOperacao);
      FMenu.ggeProgresso.Visible := False;
      Screen.Cursor := crDefault;
    end;
  end;

  if Trunc(cedTotal.Value) > 1 then
    LimpaCampos
  else
    begin
      cedTotal.Value := 1;
      cedCod_Lot_Num.Enabled := False;
      edtVersao.Enabled := False;
      dblVersao.Enabled := False;
      cedIdade.Enabled := False;
      edtCod_Lm.Enabled := False;
      dlcLm.Enabled := False;
      edtCod_Lf.Enabled := False;
      dlcLf.Enabled := False;
      edtNro_Est.Enabled := False;
      dlcEstacao.Enabled := False;
      edtIde_Ave.Enabled := False;
      dlcIdentificacao.Enabled := False;
      cedIdade.Value := cedIdade.Value + 1;
      cedViabil.SetFocus;
    end;
end;

procedure TFPadrao.ModificarClick(Sender: TObject);
var
  vSelect : String;
  vCampos : String;
  vWhere  : String;
begin
  inherited;
  if not (VerificaCampos) then
    begin
      Exit;
    end;
  try
    begin
      FMenu.dbsPlanejamento.StartTransaction;
      vSelect := 'Update prfspad2 ';
      vCampos := 'Viabil = :Viabil, Viabil_Macho = :Viabil_Macho, Racao_Ave = :Racao_Ave, Racao_Ave_Macho = :Racao_Ave_Macho, Ovo_Ave = :Ovo_Ave, Pinto_Ave = :Pinto_Ave, ';
      vCampos := vCampos + ' aprov_ovo=:aprov_ovo,pct_eclosao=round(:pct_eclosao,2), pct_ovo_01=:pct_ovo_01, pct_ovo_02=:pct_ovo_02, pct_ovo_03=:pct_ovo_03, pct_ovo_04=:pct_ovo_04, pct_ovo_05=:pct_ovo_05, pct_ovo_06=:pct_ovo_06 ,pct_postura=:pct_postura  ';
      vWhere  := 'Cod_Lote_Num = :Cod_Lote_Num and Idade = :Idade and Cod_Lm = :Cod_Lm and Cod_Lf = :Cod_Lf and Nro_Est = :Nro_Est and Ide_Ave = :Ide_Ave AND Versao=:Versao ';
      UpdateDados(QryOperacao, vSelect, vCampos, vWhere);
      with QryOperacao do
        begin
          ParamByName('Cod_Lote_Num').AsInteger := trunc(cedCod_Lot_Num.Value);
          Parambyname('Versao').asstring    := edtVersao.text;
          ParamByName('Idade').AsInteger        := StrToInt(cedIdade.Text);
          ParamByName('Cod_Lm').AsString        := edtCod_Lm.Text;
          ParamByName('Cod_Lf').AsString        := edtCod_Lf.Text;
          ParamByName('Nro_Est').AsString       := edtNro_Est.Text;
          ParamByName('Ide_Ave').AsString       := edtIde_Ave.Text;
          ParamByName('Viabil').AsFloat         := cedViabil.Value;
          ParamByName('Viabil_Macho').AsFloat   := cedViabil_Macho.Value;
          ParamByName('Racao_Ave').AsFloat      := cedRacao_Ave.Value;
          ParamByName('Racao_Ave_Macho').AsFloat:= cedRacao_Ave_Macho.Value;
          ParamByName('Ovo_Ave').AsFloat        := cedOvo_Ave.Value;
          ParamByName('Pinto_Ave').AsFloat      := cedPinto_Ave.Value;
          ParamByName('aprov_ovo').AsFloat := cedtAprovOvo.Value;
          ParamByName('pct_eclosao').AsFloat := cedEclosao.Value;
          ParamByName('pct_ovo_01').AsFloat     := cedOvo1.Value;
          ParamByName('pct_ovo_02').AsFloat     := cedOvo2.Value;
          ParamByName('pct_ovo_03').AsFloat     := cedOvo3.Value;
          ParamByName('pct_ovo_04').AsFloat     := cedOvo4.Value;
          ParamByName('pct_ovo_05').AsFloat     := cedOvo5.Value;
          ParamByName('pct_ovo_06').AsFloat     := cedOvo6.Value;
          ParamByName('pct_postura').AsFloat    := cedPerPost.Value;
          ExecSQL;
        end;

      // atualiza tarefa
      vSelect := 'Update prfslot2 ';
      vCampos := 'tarefa = :tarefa';
      vWhere  := ' Cod_Lote_Num =:cod_lote_num and Cod_Lm=:cod_lm and Cod_Lf=:Cod_Lf and Nro_Est=:Nro_Est and Ide_Ave=:Ide_Ave AND Versao=:Versao ';
      UpdateDados(QryOperacao, vSelect, vCampos, vWhere);
      with QryOperacao do
      begin
         Parambyname('tarefa').asinteger       := 1;
         Parambyname('Cod_Lote_Num').asinteger := cedCod_Lot_Num.asinteger;
         Parambyname('Versao').asstring    := edtVersao.text;
         Parambyname('Cod_Lm').asstring        := edtCod_Lm.Text;
         Parambyname('Cod_Lf').asstring        := edtCod_Lf.Text;
         Parambyname('Nro_Est').asstring       := edtNro_Est.Text;
         Parambyname('Ide_Ave').asstring       := edtIde_Ave.Text;
         ExecSQL;
      end;

      FMenu.dbsPlanejamento.Commit;
    end;
  except
      Application.HandleException(qryoperacao);
      FMenu.dbsPlanejamento.Rollback;
  end;
  Inc(vIdade);
  BuscaCadastro;
end;

procedure TFPadrao.LimpaCamposClick(Sender: TObject);
begin
  inherited;
  LimpaCampos;
end;

procedure TFPadrao.ExcluirClick(Sender: TObject);
var
  vSelect : String;
  vWhere  : String;
begin
  inherited;
  // Existe registro na consulta para exclusão
  if tabConsulta.RecordCount < 1 then
    begin
      MessageDlg(Msg00120, mtInformation, [mbOK], 0);
      Exit;
    end;

  vCodigo        := tabConsulta.FieldByName('Cod_Lote_Num').AsInteger;
  vIdade         := tabConsulta.FieldByName('Idade').AsInteger;
  vLm            := tabConsulta.FieldByName('Cod_Lm').AsString;
  vLf            := tabConsulta.FieldByName('Cod_Lf').AsString;
  vEstacao       := tabConsulta.FieldByName('Nro_Est').AsString;
  vIdentificacao := tabConsulta.FieldByName('Ide_Ave').AsString;
  vVersao        := tabConsulta.fieldbyname('Versao').asstring;


  if vCodigo <> 0  then // padrao especifico
  begin

     vSelect := ' Select * From prfslot2 ';
      vWhere  := 'Where padrao <> 0 and versao =:versao and Cod_Lote_Num =:cod_lote_num and Idade_Desc=:Idade_Desc and Cod_Lm=:cod_lm and Cod_Lf=:Cod_Lf and Nro_Est=:Nro_Est and Ide_Ave=:Ide_Ave ';
      with qryBusca do
      begin
         Close;
         Sql.Text := vSelect;
         Sql.Add(vWhere);
         Parambyname('Cod_Lote_Num').asinteger := vCodigo;
         Parambyname('Idade_Desc').asinteger   := vIdade;
         Parambyname('Cod_Lm').asstring        := vLm;
         Parambyname('Cod_Lf').asstring        := vLf;
         Parambyname('Nro_Est').asstring       := vEstacao;
         Parambyname('Ide_Ave').asstring       := vIdentificacao;
         Parambyname('Versao').asstring     := tabConsulta.fieldbyname('Versao').asstring;
         Open;

         if not IsEmpty then
         begin
            MessageDlg(Msg00047, mtInformation, [mbOk], 0);
            Exit;
         end;
      end;
  end
  else
  begin
      vSelect := ' Select * From prfslot2 ';
      vWhere  := 'Where padrao = 0 and Versao=:Versao and Idade_Desc>=:Idade_Desc and Cod_Lm=:cod_lm and Cod_Lf=:Cod_Lf and Nro_Est=:Nro_Est and Ide_Ave=:Ide_Ave  ';
      with qryBusca do
      begin
         Close;
         Sql.Text := vSelect;
         Sql.Add(vWhere);
         Parambyname('Idade_Desc').asinteger   := vIdade;
         Parambyname('Cod_Lm').asstring        := vLm;
         Parambyname('Cod_Lf').asstring        := vLf;
         Parambyname('Nro_Est').asstring       := vEstacao;
         Parambyname('Ide_Ave').asstring       := vIdentificacao;
         Parambyname('Versao').asstring     := tabConsulta.fieldbyname('Versao').asstring;

         Open;

         if not IsEmpty then
         begin
            MessageDlg(Msg00047, mtInformation, [mbOk], 0);
            Exit;
         end;
      end;
  end;

  vSelect := 'Select * From prfspad2 ';
   vWhere  := 'Where cod_lote_num=:cod_lote_num and Versao=:Versao and idade>:idade and Cod_Lm=:cod_lm and Cod_Lf=:Cod_Lf and Nro_Est=:Nro_Est and Ide_Ave=:Ide_Ave ';
   with qryBusca do
   begin

      Close;
      Sql.Text := vSelect;
      Sql.Add(vWhere);
      Parambyname('Cod_Lote_Num').asinteger := vCodigo;
      Parambyname('idade').asinteger        := vIdade;
      Parambyname('Cod_Lm').asstring        := vLm;
      Parambyname('Cod_Lf').asstring        := vLf;
      Parambyname('Nro_Est').asstring       := vEstacao;
      Parambyname('Ide_Ave').asstring       := vIdentificacao;
      Parambyname('Versao').asstring     := tabConsulta.fieldbyname('Versao').asstring;
      Open;

      if not IsEmpty then
      begin
         if MessageDlg(Format(Msg00071, [IntToStr(vIdade)]), mtConfirmation, [mbYes, mbNo], 0) = mrNo then
         begin
            Exit;
         end;
      end;

   end;

  if MessageDlg(Msg00048, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      vSelect := 'Delete From prfspad2 ';
      vWhere  := 'Where cod_lote_num=:cod_lote_num and Versao=:Versao and idade>=:idade and Cod_Lm=:cod_lm and Cod_Lf=:Cod_Lf and Nro_Est=:Nro_Est and Ide_Ave=:Ide_Ave  ';
       try
        begin
          Screen.Cursor := crHourGlass;
          FMenu.dbsPlanejamento.StartTransaction;
          DeleteDados(QryOperacao, vSelect, vWhere);
          with QryOperacao do
          begin
             Parambyname('Cod_Lote_Num').asinteger := vCodigo;
             Parambyname('idade').asinteger        := vIdade;
             Parambyname('Cod_Lm').asstring        := vLm;
             Parambyname('Cod_Lf').asstring        := vLf;
             Parambyname('Nro_Est').asstring       := vEstacao;
             Parambyname('Ide_Ave').asstring       := vIdentificacao;
             Parambyname('Versao').asstring     := tabConsulta.fieldbyname('Versao').asstring;
             ExecSQL;
          end;
          FMenu.dbsPlanejamento.Commit;
          Screen.Cursor := crDefault;
        end;
      except
        begin
          FMenu.dbsPlanejamento.Rollback;
          Screen.Cursor := crDefault;
        end;
      end;
    end;

  if ntbPaginas.PageIndex = 1 then
    ConsultaClick(Sender)
  else
    LimpaCampos;
end;

procedure TFPadrao.ConsultaClick(Sender: TObject);
var
  vSelect : String;
  vWhere  : String;
  vOrder  : String;
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;
    with qryConsulta do
    begin
      {Parte variável do Filtro}
      vWhere := '';
      if cedCod_Lot_Num.Value > 0 then vWhere := ' AND cod_lote_num = ' + FloatToStr(cedCod_Lot_Num.Value);
      if edtVersao.text <> ''      then vWhere := vWhere + ' and  Versao= '+''''+edtVersao.text+'''';
      if cedIdade.Value > 0       then vWhere := vWhere + ' AND idade = ' + FloatToStr(cedIdade.Value);
      if edtCod_Lm.Text <> ''     then vWhere := vWhere + ' AND cod_lm = ' + '''' + edtCod_Lm.Text + '''';
      if edtCod_Lf.Text <> ''     then vWhere := vWhere + ' AND cod_lf = ' + '''' + edtCod_Lf.Text + '''';
      if edtNro_Est.Text <> ''    then vWhere := vWhere + ' AND nro_est = ' + '''' + edtNro_Est.Text + '''';
      if edtIde_Ave.Text <> ''    then vWhere := vWhere + ' AND ide_ave = ' + '''' + edtIde_Ave.Text + '''';

      try
        Close;

        sql.strings[3] := vWhere;

        Open;
        First;
        if IsEmpty then
            MessageDlg(Msg10000, mtInformation, [mbOk], 0)
        else
          begin
              vCarregando := true;
              tabConsulta.close;
              tabConsulta.active := true;
              tabConsulta.LoadFromDataSet(qryConsulta,0,lmAppend);


              vCarregando := false;

              ntbPaginas.PageIndex := 1;
              ModoInsert := False;
              ModoUpdate := False;
              GeraPadrao.Enabled := ModoUpdate;
              spdAjustar.Enabled := ModoUpdate;
              ModoDelete := True;
              VerificaBotoes;
          end;
      except
        on E: EDataBaseError do
          MessageDlg(Msg10001 + CHR(10) + '"' + E.Message + '".', mtError, [mbOk], 0);
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree; {Fecha o form}
  FPadrao := nil;   {Libera o form da memória}
end;

procedure TFPadrao.FormCreate(Sender: TObject);
begin
  inherited;
  SetBounds(0, 0, 635, height);
end;

procedure TFPadrao.dgrPadraoDblClick(Sender: TObject);
begin
  inherited;
  vCodigo        := tabConsulta.FieldByName('Cod_Lote_Num').AsInteger;
  vIdade         := tabConsulta.FieldByName('Idade').AsInteger;
  vLm            := tabConsulta.FieldByName('Cod_Lm').AsString;
  vLf            := tabConsulta.FieldByName('Cod_Lf').AsString;
  vEstacao       := tabConsulta.FieldByName('Nro_Est').AsString;
  vIdentificacao := tabConsulta.FieldByName('Ide_Ave').AsString;
  vVersao        := tabConsulta.fieldbyname('Versao').asstring ;
  BuscaCadastro;
end;

procedure TFPadrao.dgrPadraoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    begin
      tabConsulta.next;
    end;
end;

procedure TFPadrao.edtIde_AveExit(Sender: TObject);
begin
  inherited;
  dlcIdentificacao.KeyValue := edtIde_Ave.Text;
end;

procedure TFPadrao.dlcIdentificacaoDropDown(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  QryIdentificacao.Close;
  QryIdentificacao.Open;
  Screen.Cursor := crDefault;
end;

procedure TFPadrao.dlcIdentificacaoCloseUp(Sender: TObject);
begin
  inherited;
  edtIde_Ave.Text := QryIdentificacao.FieldByName('Ide_Ave').AsString;
  edtNro_Est.SetFocus;
end;

procedure TFPadrao.dlcLmCloseUp(Sender: TObject);
begin
  inherited;
  edtCod_Lm.Text := QryLm.FieldByName('Cod_Lin').AsString;
  edtCod_Lf.SetFocus;
end;

procedure TFPadrao.dlcLmDropDown(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  QryLm.Close;
  QryLm.Open;
  Screen.Cursor := crDefault;
end;

procedure TFPadrao.dlcLfCloseUp(Sender: TObject);
begin
  inherited;
  edtCod_Lf.Text := QryLf.FieldByName('Cod_Lin').AsString;
  edtIde_Ave.SetFocus;
end;

procedure TFPadrao.dlcLfDropDown(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  QryLf.Close;
  QryLf.Open;
  Screen.Cursor := crDefault;
end;

procedure TFPadrao.edtCod_LmExit(Sender: TObject);
begin
  inherited;
  dlcLm.KeyValue := edtCod_Lm.Text;
end;

procedure TFPadrao.edtCod_LfExit(Sender: TObject);
begin
  inherited;
  dlcLf.KeyValue := edtCod_Lf.Text;
end;

procedure TFPadrao.dlcEstacaoCloseUp(Sender: TObject);
begin
  inherited;
  edtNro_Est.Text := QryEstacao.FieldByName('Nro_Est').AsString;
  cedViabil.SetFocus;
end;

procedure TFPadrao.dlcEstacaoDropDown(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  QryEstacao.Close;
  QryEstacao.Open;
  Screen.Cursor := crDefault;
end;

procedure TFPadrao.edtNro_EstExit(Sender: TObject);
begin
  inherited;
  dlcEstacao.KeyValue := edtNro_Est.Text;
end;

procedure TFPadrao.cedIdadeChange(Sender: TObject);
begin
  inherited;
  if cedIdade.Value > 0 then
    begin
      lblTotal.Visible := False;
      cedTotal.Visible := False;
      cedTotal.Value := 1;
    end
  else
    begin
      lblTotal.Visible := True;
      cedTotal.Visible := True;
      cedTotal.Value := 68;
    end
end;


procedure TFPadrao.GraficoClick(Sender: TObject);
begin
  inherited;
  FGraficoPadrao.Exibe;
end;

procedure TFPadrao.VoltarClick(Sender: TObject);
begin
  inherited;
  LimpaCampos;
end;

procedure TFPadrao.GeraPadraoClick(Sender: TObject);
begin
  inherited;
  if MessageDlg(Msg00103, mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  if not (VerificaCampos) then
    begin
      Exit;
    end;

  FGerarPadrao.Exibe;
end;



procedure TFPadrao.AjudaClick(Sender: TObject);
begin
  inherited;
  Application.HelpJump('Padroes_para_Calculo');
end;

procedure TFPadrao.edtCod_LmChange(Sender: TObject);
begin
  inherited;
  if Length(edtCod_Lm.Text) = (edtCod_Lm.MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFPadrao.edtCod_LfChange(Sender: TObject);
begin
  inherited;
  if Length(edtCod_Lf.Text) = (edtCod_Lf.MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFPadrao.edtIde_AveChange(Sender: TObject);
begin
  inherited;
  if Length(edtIde_Ave.Text) = (edtIde_Ave.MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFPadrao.edtNro_EstChange(Sender: TObject);
begin
  inherited;
  if Length(edtNro_Est.Text) = (edtNro_Est.MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFPadrao.spdAjustarClick(Sender: TObject);
begin
  inherited;
  // um padrao deve ser selecionado
  if FPadrao.tabConsulta.IsEmpty then
    begin
      MessageDlg(Msg00123, mtInformation, [mbOK], 0);
      Exit;
    end;
    {
  // deve ser selecionado um padrao especifico
  if FPadrao.tabConsulta.FieldByName('Cod_Lote_Num').AsInteger = 0 then
    begin
      MessageDlg(Msg00124, mtInformation, [mbOK], 0);
      Exit;
    end;
     }
  // Cria o form de ajuste
  if FAjustarPadrao = nil then
      FAjustarPadrao := TFAjustarPadrao.Create(Self);

  // Exibe o tela para informar a idade e o fator para ajuste
  if FAjustarPadrao.ShowModal = mrOk then
    // efetua o ajuste no padrao
    if copy(FAjustarPadrao.cbxCampo.text,15,length(FAjustarPadrao.cbxCampo.text)) <> '' then

    with qryAjustarPadrao do
      begin
        RemoveCursor(QryCursor, 'C_Ajuste');
        sql.Strings[20] := copy(FAjustarPadrao.cbxCampo.text,15,length(FAjustarPadrao.cbxCampo.text));
        sql.Strings[39] := copy(FAjustarPadrao.cbxCampo.text,15,length(FAjustarPadrao.cbxCampo.text));
        ParamByName('Cod_Lote_Num').AsInteger := FPadrao.tabConsulta.FieldByName('Cod_Lote_Num').AsInteger;
        ParamByName('Idade').AsInteger := FAjustarPadrao.cedIdade.AsInteger;
        ParamByName('Fator').AsFloat := FAjustarPadrao.cedFator.value;
        ParamByName('Cod_lf').AsString  := FPadrao.tabConsulta.FieldByName('cod_lf').AsString ;
        ParamByName('Cod_Lm').AsString  := FPadrao.tabConsulta.FieldByName('cod_lm').AsString ;
        ParamByName('nro_est').AsString  := FPadrao.tabConsulta.FieldByName('nro_est').AsString ;
        ParamByName('ide_ave').AsString  := FPadrao.tabConsulta.FieldByName('ide_ave').AsString ;
        FPadrao.tabConsulta.Close;
        FAjustarPadrao.Destroy;
        FAjustarPadrao := nil;
        ExecSQL;
        LimpaCampos;
      end;

  {Libera o form da memória}
  if FAjustarPadrao <> nil then
    begin
      FAjustarPadrao.Destroy;
      FAjustarPadrao := nil;
    end;
end;

procedure TFPadrao.cedOvo5Exit(Sender: TObject);
begin
  inherited;
  Calcula;
end;

procedure TFPadrao.Calcula;
begin
   if (cedOvo1.value + cedOvo2.Value  + cedOvo3.Value  + cedOvo4.Value  + cedOvo5.Value) = 0 then
     cedOvo6.value := 0
   else
     cedOvo6.value := 100 - (cedOvo1.Value + cedOvo2.Value  + cedOvo3.Value  + cedOvo4.Value  + cedOvo5.Value);
end;

procedure TFPadrao.cedPerPostExit(Sender: TObject);
begin
  inherited;
  try cedOvo_Ave.value := (cedPerPost.value/100)*7; except cedOvo_Ave.value := 0; end;
end;

procedure TFPadrao.cedEclosaoExit(Sender: TObject);
begin
  inherited;
  try cedPinto_Ave.value := cedOvo_Ave.value * (cedtAprovOvo.value/100) * (cedEclosao.value/100); except cedPinto_Ave.value := 0; end;
end;

procedure TFPadrao.edtVersaoExit(Sender: TObject);
begin
  inherited;
  dblVersao.KeyValue := edtVersao.Text;
end;

procedure TFPadrao.dblVersaoCloseUp(Sender: TObject);
begin
  inherited;
  edtVersao.Text := qryVersao.FieldByName('Versao').AsString;
end;

procedure TFPadrao.RxPadroesBeforePost(DataSet: TDataSet);
var
  vAuxSoma :  Currency;
begin
  inherited;  
  if not vCarregando then
  begin


  if (tabConsulta.FieldByName('Viabil').asfloat < 0) or (tabConsulta.FieldByName('Viabil').asfloat > 100) then
    begin
      MessageDlg(Msg00064, mtInformation, [mbOK], 0);
      tabConsulta.FieldByName('Viabil').FocusControl;
      Abort;
      Exit;
    end;

  if (tabConsulta.FieldByName('Viabil_Macho').asfloat < 0) or (tabConsulta.FieldByName('Viabil_Macho').asfloat > 100) then
    begin
      MessageDlg(Msg00064, mtInformation, [mbOK], 0);
      tabConsulta.FieldByName('Viabil_Macho').FocusControl;
      Abort;
      Exit;
    end;

  if (tabConsulta.FieldByName('Racao_Ave').asfloat < 0) or (tabConsulta.FieldByName('Racao_Ave').asfloat > 1000) then
    begin
      MessageDlg(Msg00065, mtInformation, [mbOK], 0);
      tabConsulta.FieldByName('Racao_Ave').FocusControl;
      Abort;
      Exit;
    end;

  if (tabConsulta.FieldByName('Racao_Ave_Macho').asfloat < 0) or (tabConsulta.FieldByName('Racao_Ave_Macho').asfloat > 1000) then
    begin
      MessageDlg(Msg00065, mtInformation, [mbOK], 0);
      tabConsulta.FieldByName('Racao_Ave_Macho').FocusControl;
      Abort;
      Exit;
    end;

  if (tabConsulta.FieldByName('Ovo_Ave').asfloat < 0) or (tabConsulta.FieldByName('Ovo_Ave').asfloat > 10) then
    begin
      MessageDlg(Msg00066, mtInformation, [mbOK], 0);
      tabConsulta.FieldByName('Ovo_Ave').FocusControl;
      Abort;
      Exit;
    end;

  if (tabConsulta.FieldByName('Pinto_Ave').asfloat < 0) or (tabConsulta.FieldByName('Pinto_Ave').asfloat > 10) then
    begin
      MessageDlg(Msg00067, mtInformation, [mbOK], 0);
      tabConsulta.FieldByName('Pinto_Ave').FocusControl;
      Abort;
      Exit;
    end;

  if (tabConsulta.FieldByName('Pinto_Ave').asfloat > tabConsulta.FieldByName('Ovo_Ave').asfloat) then
    begin
      MessageDlg(Msg00072, mtInformation, [mbOK], 0);
      tabConsulta.FieldByName('Pinto_Ave').FocusControl;
      Abort;
      Exit;
    end;

  if (tabConsulta.FieldByName('pct_ovo_01').asfloat < 0) or (tabConsulta.FieldByName('pct_ovo_01').asfloat > 100) then
    begin
      MessageDlg(Format(Msg00121,['1']), mtInformation, [mbOK], 0);
      tabConsulta.FieldByName('pct_ovo_01').FocusControl;
      Abort;
      Exit;
    end;

  if (tabConsulta.FieldByName('pct_ovo_02').asfloat < 0) or (tabConsulta.FieldByName('pct_ovo_02').asfloat > 100) then
    begin
      MessageDlg(Format(Msg00121,['2']), mtInformation, [mbOK], 0);
      tabConsulta.FieldByName('pct_ovo_02').FocusControl;
      Abort;
      Exit;
    end;
  if (tabConsulta.FieldByName('pct_ovo_03').asfloat < 0) or (tabConsulta.FieldByName('pct_ovo_03').asfloat > 100) then
    begin
      MessageDlg(Format(Msg00121,['3']), mtInformation, [mbOK], 0);
      tabConsulta.FieldByName('pct_ovo_03').FocusControl;
      Abort;
      Exit;
    end;

  if (tabConsulta.FieldByName('pct_ovo_04').asfloat < 0) or (tabConsulta.FieldByName('pct_ovo_04').asfloat > 100) then
    begin
      MessageDlg(Format(Msg00121,['4']), mtInformation, [mbOK], 0);
      tabConsulta.FieldByName('pct_ovo_04').FocusControl;
      Abort;
      Exit;
    end;

  if (tabConsulta.FieldByName('pct_ovo_05').asfloat < 0) or (tabConsulta.FieldByName('pct_ovo_05').asfloat > 100) then
    begin
      MessageDlg(Format(Msg00121,['5']), mtInformation, [mbOK], 0);
      tabConsulta.FieldByName('pct_ovo_05').FocusControl;
      Abort;
      Exit;
    end;

  if (tabConsulta.fieldbyname('resultado').asfloat < 0) or (tabConsulta.fieldbyname('resultado').asfloat > 100) then
    begin
      MessageDlg(Format(Msg00121,['6']), mtInformation, [mbOK], 0);
      tabConsulta.FieldByName('pct_ovo_06').FocusControl;
      Abort;
      Exit;
    end;

  vAuxSoma := tabConsulta.FieldByName('pct_ovo_01').asfloat + tabConsulta.FieldByName('pct_ovo_02').asfloat  + tabConsulta.FieldByName('pct_ovo_03').asfloat  + tabConsulta.FieldByName('pct_ovo_04').asfloat  + tabConsulta.FieldByName('pct_ovo_05').asfloat  + tabConsulta.fieldbyname('resultado').asfloat;
  if  ( vAuxSoma <> 100 ) and
      ( vAuxSoma <> 0 ) then
    begin
      MessageDlg(Msg00122, mtInformation, [mbOK], 0);
      tabConsulta.FieldByName('pct_ovo_01').FocusControl;
      Abort;
      Exit;
    end;

  end;   
end;

procedure TFPadrao.tabConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  if not vCarregando then
  begin
  dataset.fieldbyname('pinto_ave_calc').asfloat    := ((dataset.fieldbyname('pct_postura').asfloat/100)*7) * (dataset.fieldbyname('aprov_ovo').asfloat/100) * (dataset.fieldbyname('pct_eclosao').asfloat/100);

  if (tabConsulta.FieldByName('pct_ovo_01').asfloat + tabConsulta.FieldByName('pct_ovo_02').asfloat  + tabConsulta.FieldByName('pct_ovo_03').asfloat  + tabConsulta.FieldByName('pct_ovo_04').asfloat  + tabConsulta.FieldByName('pct_ovo_05').asfloat) = 0 then
     dataset.fieldbyname('resultado').asfloat := 0
  else
     dataset.fieldbyname('resultado').asfloat := 100 - (tabConsulta.FieldByName('pct_ovo_01').asfloat + tabConsulta.FieldByName('pct_ovo_02').asfloat  + tabConsulta.FieldByName('pct_ovo_03').asfloat  + tabConsulta.FieldByName('pct_ovo_04').asfloat  + tabConsulta.FieldByName('pct_ovo_05').asfloat);
  end;   
end;

procedure TFPadrao.RxPadroesAfterPost(DataSet: TDataSet);
begin
  inherited;

  if not vCarregando then
  begin


  try

      if not(FMenu.dbsPlanejamento.InTransaction) then
        FMenu.dbsPlanejamento.StartTransaction;

      with qryAtualizaPadrao do
      begin
         ParamByName('Cod_Lote_Num').AsInteger := tabConsulta.fieldbyname('cod_lote_num').asinteger;
         ParamByName('Cod_Lm').AsString        := tabConsulta.fieldbyname('cod_lm').asstring;
         ParamByName('Cod_Lf').AsString        := tabConsulta.fieldbyname('cod_lf').asstring;
         ParamByName('Nro_Est').AsString       := tabConsulta.fieldbyname('nro_est').asstring;
         ParamByName('Ide_Ave').AsString       := tabConsulta.fieldbyname('ide_ave').asstring;
         ParamByName('versao').AsString        := tabConsulta.fieldbyname('versao').asstring;
         ParamByName('idade').AsInteger        := tabConsulta.fieldbyname('idade').asinteger;

         ParamByName('Viabil').AsFloat             :=   tabConsulta.fieldByName('Viabil').AsFloat            ;
         ParamByName('Viabil_Macho').AsFloat       :=   tabConsulta.fieldByName('Viabil_Macho').AsFloat      ;
         ParamByName('Racao_Ave').AsFloat          :=   tabConsulta.fieldByName('Racao_Ave').AsFloat         ;
         ParamByName('Racao_Ave_Macho').AsFloat    :=   tabConsulta.fieldByName('Racao_Ave_Macho').AsFloat   ;
         ParamByName('Ovo_Ave').AsFloat            :=   tabConsulta.fieldByName('Ovo_Ave').AsFloat           ;
         ParamByName('Pinto_Ave').AsFloat          :=   tabConsulta.fieldByName('Pinto_Ave').AsFloat         ;
         ParamByName('aprov_ovo').AsFloat          :=   tabConsulta.fieldByName('aprov_ovo').AsFloat         ;
         ParamByName('pct_eclosao').AsFloat        :=   tabConsulta.fieldByName('pct_eclosao').AsFloat       ;
         ParamByName('pct_postura').AsFloat        :=   tabConsulta.fieldByName('pct_postura').AsFloat       ;
         ParamByName('pct_ovo_01').AsFloat         :=   tabConsulta.fieldByName('pct_ovo_01').AsFloat        ;
         ParamByName('pct_ovo_02').AsFloat         :=   tabConsulta.fieldByName('pct_ovo_02').AsFloat        ;
         ParamByName('pct_ovo_03').AsFloat         :=   tabConsulta.fieldByName('pct_ovo_03').AsFloat        ;
         ParamByName('pct_ovo_04').AsFloat         :=   tabConsulta.fieldByName('pct_ovo_04').AsFloat        ;
         ParamByName('pct_ovo_05').AsFloat         :=   tabConsulta.fieldByName('pct_ovo_05').AsFloat        ;
         ParamByName('pct_ovo_06').AsFloat         :=   tabConsulta.fieldByName('pct_ovo_06').AsFloat        ;
         ParamByName('pct_aproveitamento').AsFloat :=   tabConsulta.fieldByName('pct_aproveitamento').AsFloat;
         ParamByName('pct_pinto_elimin').AsFloat   :=   tabConsulta.fieldByName('pct_pinto_elimin').AsFloat  ;
         ExecSQL;
      end;
      FMenu.dbsPlanejamento.Commit;

    
  except
      FMenu.dbsPlanejamento.Rollback;
      Abort;
  end;

  end;


end;

end.

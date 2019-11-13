{*******************************************************************************}
{                          Avecom Sistemas                                      }
{*******************************************************************************}
{                                                                               }
{ Programa:    UVacinasMedicamentos.pas                                         }
{ Objetivo:    Cadastro de Vacinas e Medicamentos.                              }
{ Histórico de Alterações:                                                      }
{                                                                               }
{ Data         Descrição                                         Autor          }
{              Versao GloboAves                                                                 }
{*******************************************************************************}
unit ULotes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPai, Menus, SpeedBar, ExtCtrls, StdCtrls, Mask, Db, DBTables, Grids,
  DBGrids, ToolEdit, CurrEdit, ComCtrls, RxGrdCpt, Tabs, DBCtrls, RxQuery,
  Buttons;

type
  TFLotes = class(TFPai)
    QryBusca: TQuery;
    QryOperacao: TQuery;
    dtsQryConsulta: TDataSource;
    QryConsulta: TQuery;
    QryLinhagemMacho: TQuery;
    QryGalpao: TQuery;
    QryGrupo: TQuery;
    QryGranja: TQuery;
    QryLocal: TQuery;
    qryExisteEnd: TQuery;
    QryEstacao: TQuery;
    QryIdentificacao: TQuery;
    QryLinhagemFemea: TQuery;
    dtsQryLinhagemMacho: TDataSource;
    dtsQryLinhagemFemea: TDataSource;
    dtsQryIdentificacao: TDataSource;
    dtsQryEstacao: TDataSource;
    dtsQryLocal: TDataSource;
    dtsQryGranja: TDataSource;
    dtsQryGrupo: TDataSource;
    dtsQryGalpao: TDataSource;
    ntbPaginas: TNotebook;
    pnlIdentificacao: TPanel;
    Label4: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    cedCod_Lote_Num: TCurrencyEdit;
    edtCod_Lf: TEdit;
    dlcLinhagemFemea: TDBLookupComboBox;
    edtIde_Ave: TEdit;
    dlcIdentificacao: TDBLookupComboBox;
    edtNro_Est: TEdit;
    dlcEstacao: TDBLookupComboBox;
    edtNro_Lote: TEdit;
    edtIde_Espec: TEdit;
    pnlEndereco: TPanel;
    Label12: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label22: TLabel;
    edtCod_Galinheiro: TEdit;
    edtCod_Local: TEdit;
    edtCod_Grupo: TEdit;
    edtCod_Granja: TEdit;
    dlcGranja: TDBLookupComboBox;
    dlcGrupo: TDBLookupComboBox;
    dlcLocal: TDBLookupComboBox;
    dlcGalinheiro: TDBLookupComboBox;
    pnlAlojamentoIni: TPanel;
    Label29: TLabel;
    Label19: TLabel;
    Label24: TLabel;
    Label13: TLabel;
    cedPesoFemea: TCurrencyEdit;
    detNascFemea: TDateEdit;
    detDat_Aloj_Inicial: TDateEdit;
    cedQtd_Inic_Fem: TCurrencyEdit;
    pnlAlojamento: TPanel;
    Label23: TLabel;
    Label20: TLabel;
    chbTeste: TCheckBox;
    chbProprio: TCheckBox;
    dgrLote: TDBGrid;
    tstPrincipal: TTabSet;
    Label5: TLabel;
    Label6: TLabel;
    QryBuscaGeral: TQuery;
    Label26: TLabel;
    Label28: TLabel;
    rdbTipoPesagem: TRadioGroup;
    pnlBox: TPanel;
    QryExistePadraoData: TQuery;
    QryExistePadrao: TQuery;
    QryCadastraIdades: TQuery;
    QryConsultaCOD_LM: TStringField;
    QryConsultaCOD_LF: TStringField;
    QryConsultaNRO_EST: TStringField;
    QryConsultaIDE_AVE: TStringField;
    QryConsultacod_linha: TStringField;
    QryConsultaide_espec: TStringField;
    QryConsultadat_aloj_inicial: TDateTimeField;
    QryConsultaqtd_inic_mac: TIntegerField;
    QryConsultaqtd_inic_fem: TIntegerField;
    QryConsultadat_acasalamento: TDateTimeField;
    QryConsultadat_exame_pulorose: TDateTimeField;
    QryConsultadat_selecao: TDateTimeField;
    QryConsultadat_aloj_prod: TDateTimeField;
    QryConsultaqtd_mac_prod: TIntegerField;
    QryConsultaqtd_fem_prod: TIntegerField;
    QryConsultadat_inic_prod: TDateTimeField;
    QryConsultadat_prev_desc: TDateTimeField;
    QryConsultaIdade_aloj_prod: TSmallintField;
    QryConsultadat_efet_desc: TDateTimeField;
    QryConsultadat_nasc_media: TDateTimeField;
    QryConsultaCOD_LOCAL: TStringField;
    QryConsultaCOD_GRANJA: TStringField;
    QryConsultaCOD_GRUPO: TStringField;
    QryConsultaCOD_GALINHEIRO: TStringField;
    scrRemoveMovtos: TSQLScript;
    QryBuscaIncubatorio: TQuery;
    QryAvesBox: TQuery;
    Label14: TLabel;
    Label25: TLabel;
    Label30: TLabel;
    Panel1: TPanel;
    Label31: TLabel;
    lblDat_Nasc_Media: TLabel;
    lblDat_Efet_Desc: TLabel;
    lblDat_Acasalamento: TLabel;
    lblDat_Pulorose: TLabel;
    lblDat_Selecao: TLabel;
    lblDat_Ini_Prod: TLabel;
    lblIdade_Aloj_Prod: TLabel;
    lblDat_Aloj_Prod: TLabel;
    lblQtd_Fem_Prod: TLabel;
    Label32: TLabel;
    QryExistePadraoTodasAsIdades: TQuery;
    spdBox: TSpeedButton;
    memObs: TEdit;
    spiInformacao: TSpeedItem;
    QryGravaPML: TQuery;
    qryParceiro: TQuery;
    dtsParceiros: TDataSource;
    QryConsultaCod_parceiro: TIntegerField;
    QryConsultaFLG_TESTE: TSmallintField;
    QryConsultaLOTE_PROPRIO: TSmallintField;
    QryConsultaCOD_LOTE_NUM: TFloatField;
    Label16: TLabel;
    DateEdit1: TDateEdit;
    cbxfase: TComboBox;
    Label38: TLabel;
    spiAjustarIdade: TSpeedItem;
    qryAjustarIdade1: TQuery;
    qryAjustarIdade: TSQLScript;
    Label34: TLabel;
    DateEdit2: TDateEdit;
    Planejar: TSpeedItem;
    qryCopiaManPla: TQuery;
    edtOrdem: TEdit;
    Label35: TLabel;
    Label7: TLabel;
    cedIdadeAloj: TCurrencyEdit;
    QryConsultaNRO_LOTE: TStringField;
    qryImportar: TQuery;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Label9: TLabel;
    Button1: TButton;
    function LimpaCampos : Boolean;
    function MostraCampos: Boolean;
    function VerificaCampos: Boolean;
    function BuscaCadastro: Boolean;
    procedure AtualizaEndereco;
    function CadastraLote: Boolean;
    function EnderecamentoLote(vLote: Integer; vLocal, vGranja, vGrupo, vGalpao: String; vData: TDateTime):Boolean;
    function CadastraIdades(vLote, vIdadeFim: Integer; vData: TDateTime):Boolean;
    function AcertoSaldoInicial(vLote, vIdade, vMachos, vFemeas: Integer): Boolean;
    function AlojamentoAves(vLote, vAvesMachos, vAvesFemeas: Integer; vData, vNascMacho, vNascFemea: TDateTime; vPesoMacho, vPesoFemea: Real; vObs: String): Boolean;
    function AcertoProducao(vLote, vIdade, vMachos, vFemeas: Integer): Boolean;
    function SaldoDiarioBox(vLote: Integer; vData: TDateTime): Boolean;
    function AcertoCalculo(vLote: Integer; vMovimento, vCalculado: TDateTime): Boolean;
    procedure InsereSaldo(vLote, vNro_Box, vQtd_Femeas, vQtd_Machos: Integer; vData: TDateTime; vSexo: String);
    function InsereSaldoDiario(vLote, Qtd_Machos, Qtd_Femeas: Integer; vData: TDateTime; vLocal, vGranja, vGrupo, vGalpao: String): Boolean;
    procedure Exibe;
    procedure AdicionarClick(Sender: TObject);
    procedure ModificarClick(Sender: TObject);
    procedure LimpaCamposClick(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure ConsultaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure VoltarClick(Sender: TObject);
    procedure tstPrincipalClick(Sender: TObject);
    procedure dlcLinhagemMachoDropDown(Sender: TObject);
    procedure edtCod_LmChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dlcLinhagemFemeaCloseUp(Sender: TObject);
    procedure dlcLinhagemFemeaDropDown(Sender: TObject);
    procedure edtCod_LfChange(Sender: TObject);
    procedure edtCod_LfExit(Sender: TObject);
    procedure dlcIdentificacaoCloseUp(Sender: TObject);
    procedure dlcIdentificacaoDropDown(Sender: TObject);
    procedure edtIde_AveChange(Sender: TObject);
    procedure edtIde_AveExit(Sender: TObject);
    procedure dlcEstacaoCloseUp(Sender: TObject);
    procedure dlcEstacaoDropDown(Sender: TObject);
    procedure edtNro_EstChange(Sender: TObject);
    procedure edtNro_EstExit(Sender: TObject);
    procedure dlcLocalCloseUp(Sender: TObject);
    procedure dlcLocalDropDown(Sender: TObject);
    procedure edtCod_LocalChange(Sender: TObject);
    procedure edtCod_LocalExit(Sender: TObject);
    procedure dlcGranjaCloseUp(Sender: TObject);
    procedure dlcGranjaDropDown(Sender: TObject);
    procedure edtCod_GranjaChange(Sender: TObject);
    procedure edtCod_GranjaExit(Sender: TObject);
    procedure dlcGrupoCloseUp(Sender: TObject);
    procedure dlcGrupoDropDown(Sender: TObject);
    procedure edtCod_GrupoChange(Sender: TObject);
    procedure edtCod_GrupoExit(Sender: TObject);
    procedure dlcGalinheiroCloseUp(Sender: TObject);
    procedure dlcGalinheiroDropDown(Sender: TObject);
    procedure edtCod_GalinheiroChange(Sender: TObject);
    procedure edtCod_GalinheiroExit(Sender: TObject);
    procedure cedQtd_Inic_MacExit(Sender: TObject);
    procedure cedQtd_Inic_MacChange(Sender: TObject);
    procedure cedQtd_Inic_FemExit(Sender: TObject);
    procedure edtNro_LoteChange(Sender: TObject);
    procedure edtIde_EspecChange(Sender: TObject);
    procedure dgrLoteDblClick(Sender: TObject);
    procedure dgrLoteKeyPress(Sender: TObject; var Key: Char);
    procedure spdBoxClick(Sender: TObject);
    procedure cedQtd_Inic_FemChange(Sender: TObject);
    procedure cedcodParceiroChange(Sender: TObject);
    procedure spiAjustarIdadeClick(Sender: TObject);
    procedure PlanejarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    Procedure CompletarGalpao(vLT : integer);
  public
    { Public declarations }
  end;

var
  FLotes      : TFLotes;
  ModoInsert  : Boolean;
  ModoUpdate  : Boolean;
  ModoDelete  : Boolean;
  vGerarSaldo : Boolean;

implementation

uses Funcoes, UMenu, UMensagens, UDistribuicaoBox, ULotesFormadores;

{$R *.DFM}

procedure TFLotes.Exibe;
begin
  Screen.Cursor := crHourGlass; // Cursor de Espera
  if FLotes = nil then
    begin
      FLotes := TFLotes.Create(Self); // Cria o Formulario
    end;
  if VerificaOpcao(FLotes.Tag, FLotes) then // Verifica as Permissões
    begin
      FLotes.LimpaCampos;
      FLotes.Show;
      FLotes.WindowState := wsNormal;  {O form esta minimizado}
    end;
  Screen.Cursor := crDefault; // Cursor Normal
end;

// Função para Limpar todos os campos
function TFLotes.LimpaCampos : Boolean;
begin
  // move a página para a primeira
  ntbPaginas.PageIndex := 0;
  tstPrincipal.TabIndex := ntbPaginas.PageIndex;
  tstPrincipal.Visible := True;
  vGerarSaldo := True; // variável para controle da rotina que gera o saldo do galpão automático
  // abre as Qrys necessárias

  qryParceiro.close;
  qryParceiro.open;

  spiAjustarIdade.Enabled := false;

  edtOrdem.clear;

  QryLinhagemMacho.Open;
  QryLinhagemFemea.Open;
  QryIdentificacao.Open;
  QryEstacao.Open;
  QryLocal.Open;
  QryGranja.Open;
  QryGrupo.Open;
  QryGalpao.Open;
  FDistribuicaoBox.qrySaldos.Close;
  FDistribuicaoBox.qrySaldos.Open;
  // campos que deverão limpos para um novo lote
  // Página = Identificação
  cedCod_Lote_Num.Clear;

  edtCod_Lf.Clear;
  dlcLinhagemFemea.KeyValue := 0;
  edtIde_Ave.Clear;
  dlcIdentificacao.KeyValue := 0;
  edtNro_Est.Clear;
  dlcEstacao.KeyValue := 0;
  edtNro_Lote.Clear;
  edtIde_Espec.text := ' ';


  spiInformacao.Enabled := false;
  // Página = Endereço
  edtCod_Local.Clear;
  dlcLocal.KeyValue := 0;
  edtCod_Granja.Clear;
  dlcGranja.KeyValue := 0;
  edtCod_Grupo.Clear;
  dlcGrupo.KeyValue := 0;
  edtCod_Galinheiro.Clear;
  dlcGalinheiro.KeyValue := 0;
  // Página = Alolamento Inicial
  detDat_Aloj_Inicial.Date := Date();

  cbxfase.ItemIndex :=  0;
  cedQtd_Inic_Fem.Clear;

  cedPesoFemea.Clear;
  detNascFemea.Clear;
  memObs.Clear;
  rdbTipoPesagem.ItemIndex := FMenu.Parametros.vTipoAlojamento;
  rdbTipoPesagem.Visible := True;
  pnlBox.Visible := True;
  // Página = Alojamento Produção
  lblDat_Nasc_Media.Caption := '';
  lblDat_Acasalamento.Caption := '';
  lblDat_Efet_Desc.Caption := '';
  lblDat_Ini_Prod.Caption := '';
  lblDat_Selecao.Caption := '';
  lblDat_Pulorose.Caption := '';
  lblDat_Aloj_Prod.Caption := '';
  lblIdade_Aloj_Prod.Caption := '';

  lblQtd_Fem_Prod.Caption := '';
  chbTeste.Checked := False;
  // atualiza o modo de operação e atualiza os botões
  ModoInsert := True;
  ModoUpdate := False;
  ModoDelete := False;
  VerificaBotoes(ModoInsert, ModoUpdate, ModoDelete);
  // Campos que deverão ser habilitados para um novo lote
  cedcod_lote_num.Enabled := True;
  edtIde_Ave.Enabled := True;
  dlcIdentificacao.Enabled := True;
  edtNro_Est.Enabled := True;
  dlcEstacao.Enabled := True;
  edtNro_Lote.Enabled := True;

  edtCod_Local.Enabled := True;
  dlcLocal.Enabled := True;
  edtCod_Granja.Enabled := True;
  dlcGranja.Enabled := True;
  edtCod_Grupo.Enabled := True;
  dlcGrupo.Enabled := True;
  edtCod_Galinheiro.Enabled := True;
  dlcGalinheiro.Enabled := True;

  detDat_Aloj_Inicial.Enabled := True;

  cedQtd_Inic_Fem.Enabled := True;

  cedPesoFemea.Enabled := True;
  detNascFemea.Enabled := True;
  memObs.Enabled := True;
  rdbTipoPesagem.Enabled := True;
  chbProprio.Checked := True;
  chbProprio.Enabled := True;
  // envia o foco do cursor para o campo

  // resultado da função
  Result := True;
end;

// Função para mostrar os campos do registro
function TFLotes.MostraCampos: Boolean;
var
  vWhere : String;
begin
  with QryBusca do
    begin
      // Página = Identificação
      cedCod_Lote_Num.AsInteger := FieldByName('Cod_Lote_Num').AsInteger;
      edtOrdem.text := FieldByName('ordem').asstring;

      edtCod_Lf.Text := FieldByName('Cod_Lf').AsString;
      dlcLinhagemFemea.KeyValue := FieldByName('Cod_Lf').AsString;
      edtIde_Ave.Text := FieldByName('Ide_Ave').AsString;
      dlcIdentificacao.KeyValue := FieldByName('Ide_Ave').AsString;
      edtNro_Est.Text := FieldByName('Nro_Est').AsString;
      dlcEstacao.KeyValue := FieldByName('Nro_Est').AsString;
      edtNro_Lote.Text := FieldByName('Nro_Lote').AsString;
      edtIde_Espec.Text := FieldByName('Ide_Espec').AsString;


      if FieldByName('flg_fase').AsString = ''  then cbxfase.itemindex := 0;
      if FieldByName('flg_fase').AsString = 'R' then cbxfase.itemindex := 0;
      if FieldByName('flg_fase').AsString = 'P' then cbxfase.itemindex := 1;
      if FieldByName('flg_fase').AsString = 'M' then cbxfase.itemindex := 2;

      
      // Página = Endereço
      edtCod_Local.Text := FieldByName('Cod_Local').AsString;
      dlcLocal.KeyValue := FieldByName('Cod_Local').AsString;
      AtualizaEndereco;
      edtCod_Granja.Text := FieldByName('Cod_Granja').AsString;
      dlcGranja.KeyValue := FieldByName('Cod_Granja').AsString;
      AtualizaEndereco;
      edtCod_Grupo.Text := FieldByName('Cod_Grupo').AsString;
      dlcGrupo.KeyValue := FieldByName('Cod_Grupo').AsString;
      AtualizaEndereco;
      edtCod_Galinheiro.Text := FieldByName('Cod_Galinheiro').AsString;
      dlcGalinheiro.KeyValue := FieldByName('Cod_Galinheiro').AsString;
      AtualizaEndereco;

      // Página = Alolamento Inicial
      detDat_Aloj_Inicial.Text := RetornaDataVazia(FieldByName('Dat_Aloj_Inicial').AsDateTime);
      lblDat_Nasc_Media.Caption  := RetornaDataVazia(FieldByName('Dat_Nasc_Media').AsDateTime);
      DateEdit2.date := FieldByName('Dat_Acasalamento').AsDateTime;
      cedIdadeAloj.asinteger := FieldByName('IDADE_ALOJAMENTO').AsInteger        ;

      cedQtd_Inic_Fem.AsInteger := FieldByName('Qtd_Inic_Fem').AsInteger;


      cedPesoFemea.Value := FieldByName('Peso_Aloj_Fem').AsFloat;
      detNascFemea.Text := RetornaDataVazia(FieldByName('Dat_Nasc_Fem').AsDateTime);
      memObs.Text := FieldByName('Obs_Origem').AsString;
      rdbTipoPesagem.Visible := True;
      pnlBox.Visible := True;
      // Página = Alojamento Produção
      lblDat_Efet_Desc.Caption  := RetornaDataVazia(FieldByName('Dat_Efet_Desc').AsDateTime);
      lblDat_Ini_Prod.Caption := RetornaDataVazia(FieldByName('Dat_Inic_Prod').AsDateTime);
      lblDat_Selecao.Caption := RetornaDataVazia(FieldByName('Dat_Selecao').AsDateTime);
      DateEdit1.date := FieldByName('Dat_Selecao').AsDateTime;
      lblDat_Pulorose.Caption := RetornaDataVazia(FieldByName('Dat_Exame_Pulorose').AsDateTime);
      lblIdade_Aloj_Prod.Caption := IntToStr(FieldByName('Idade_Aloj_Prod').asInteger);
      lblDat_Aloj_Prod.Caption := RetornaDataVazia(FieldByName('Dat_Aloj_Prod').AsDateTime);
     // lblQtd_Mac_Prod.Caption  := IntToStr(FieldByName('Qtd_Mac_Prod').AsInteger);
      lblQtd_Fem_Prod.Caption := IntToStr(FieldByName('Qtd_Fem_Prod').AsInteger);
      chbTeste.Checked := ConvertIntToBoo(FieldByName('Flg_Teste').Asinteger);
      chbProprio.Checked := ConvertIntToBoo(FieldByName('Lote_Proprio').Asinteger);


      //
      cedcod_lote_num.Enabled := False;
      chbProprio.Enabled := False;
//      edtIde_Ave.Enabled := False;
  //    dlcIdentificacao.Enabled := False;
      edtNro_Est.Enabled := False;
      dlcEstacao.Enabled := False;
      

     { edtCod_Local.Enabled := False;
      dlcLocal.Enabled := False;
      edtCod_Granja.Enabled := False;
      dlcGranja.Enabled := False;
      edtCod_Grupo.Enabled := False;
      dlcGrupo.Enabled := False;
      edtCod_Galinheiro.Enabled := False;
      dlcGalinheiro.Enabled := False;    }
      rdbTipoPesagem.Visible := False;
      pnlBox.Visible := False;
      // verifica se a data é igual à 01/01/1900

   //   detDat_Aloj_Inicial.Enabled := False;
      //cedQtd_Inic_Mac.Enabled := False;
      //cedQtd_Inic_Fem.Enabled := False;


      cedPesoFemea.Enabled := False;
      detNascFemea.Enabled := False;
      memObs.Enabled := False;
      rdbTipoPesagem.Enabled := False;
      tstPrincipal.Visible := True;
    end;

  Result := True;

  // Remove o Cursor caso ele estiver criado
  {RemoveCursor(QryCursor, 'Lotes');

  // Cria o Cursor do registro selecionado. Quando o Usuário realizar alguma
  // alteração o "Update" verifica se os dados do registro selecionado foram
  // modificados.
  vWhere := 'Cod_Lote_Num = ' + IntToStr(cedCod_Lote_Num.AsInteger);
  CriaCursor(QryCursor, 'Lotes', 'avfslot1', vWhere);    }
end;

// Função para verificar se os campos estão preenchidos
function TFLotes.VerificaCampos: Boolean;
begin
  Result := False;

  // verifica se a linhagem fêmea está cadastrada no banco de dados
  if not BuscaRegistro(QryBusca, 'Select * From avfslin1 ', 'Where Cod_Linhagem  = ''' + edtCod_Lf.Text + '''') then
    begin
      MessageDlg(Msg00058, mtInformation, [mbOK], 0);
      ntbPaginas.PageIndex := 0;
      tstPrincipal.TabIndex := ntbPaginas.PageIndex;
      if edtCod_Lf.Enabled then edtCod_Lf.SetFocus;
      Exit;
    end;

  // verifica se a identificação está cadastrada no banco de dados
  if not BuscaRegistro(QryBusca, 'Select * From avfside1 ', 'Where Ide_Ave  = ''' + edtIde_Ave.Text + '''') then
    begin
      MessageDlg(Msg00058, mtInformation, [mbOK], 0);
      ntbPaginas.PageIndex := 0;
      tstPrincipal.TabIndex := ntbPaginas.PageIndex;
      if edtIde_Ave.Enabled then edtIde_Ave.SetFocus;
      Exit;
    end;
  // verifica se a estação está cadastrada no banco de dados
  if not BuscaRegistro(QryBuscaGeral, 'Select * From ugfscec1 ', 'Where Nro_Est  = ''' + edtNro_Est.Text + '''') then
    begin
      MessageDlg(Msg00055, mtInformation, [mbOK], 0);
      ntbPaginas.PageIndex := 0;
      tstPrincipal.TabIndex := ntbPaginas.PageIndex;
      if edtNro_Est.Enabled then edtNro_Est.SetFocus;
      Exit;
    end;

  // verifica se o campo Ide_Espec foi preenchido com a letra j = agrupado
  if UpperCase(edtIde_Espec.Text) = 'J' then
    begin
      MessageDlg(Msg00420, mtInformation, [mbOK], 0);
      ntbPaginas.PageIndex := 0;
      tstPrincipal.TabIndex := ntbPaginas.PageIndex;
      if edtIde_Espec.Enabled then edtIde_Espec.SetFocus;
      Exit;
    end;

  // verifica se o galpão existe no banco de dados (DBUG)
  if not(ExisteEndereco(edtCod_Local.Text, edtCod_Granja.Text, edtCod_Grupo.Text, edtCod_Galinheiro.Text)) then
    begin
      MessageDlg(Msg00158, mtInformation, [mbOK], 0);
      ntbPaginas.PageIndex := 1;
      tstPrincipal.TabIndex := ntbPaginas.PageIndex;
      if edtCod_Local.Enabled then edtCod_Local.SetFocus;
      Exit;
    end;
         {
  // verifica se o endereço está disponível
  if not(EnderecoDiponivel(edtCod_Local.Text, edtCod_Granja.Text, edtCod_Grupo.Text, edtCod_Galinheiro.Text)) and (ModoInsert) then
    begin
      MessageDlg(Msg00421, mtInformation, [mbOK], 0);
      ntbPaginas.PageIndex := 1;
      tstPrincipal.TabIndex := ntbPaginas.PageIndex;
      if edtCod_Local.Enabled then edtCod_Local.SetFocus;
      Exit;
    end;

  // verifica se existe algum lote no endereço na data informada
  if not(ExisteLoteData(edtCod_Local.Text, edtCod_Granja.Text, edtCod_Grupo.Text, edtCod_Galinheiro.Text, detDat_Aloj_Inicial.Date)) and (ModoInsert) then
    begin
      MessageDlg(Msg00424, mtInformation, [mbOK], 0);
      ntbPaginas.PageIndex := 2;
      tstPrincipal.TabIndex := ntbPaginas.PageIndex;
      if detDat_Aloj_Inicial.Enabled then detDat_Aloj_Inicial.SetFocus;
      Exit;
    end;
                    }
  // verifica se o campo data alojamento inicial foi preenchido
  if VerificaData(detDat_Aloj_Inicial.Text) = 0 then
    begin
      MessageDlg(Format(Msg00422, ['Data Alojamento']), mtInformation, [mbOK], 0);
      ntbPaginas.PageIndex := 2;
      tstPrincipal.TabIndex := ntbPaginas.PageIndex;
      if detDat_Aloj_Inicial.Enabled then detDat_Aloj_Inicial.SetFocus;
      Exit;
    end;


 {
  // verifica se a Qtde. Macho ou Fême foi preenchidos
  if (cedQtd_Inic_Mac.AsInteger <= 0) and (cedQtd_Inic_Fem.AsInteger <= 0) then
    begin
      MessageDlg(Msg00423, mtInformation, [mbOK], 0);
      ntbPaginas.PageIndex := 2;
      tstPrincipal.TabIndex := ntbPaginas.PageIndex;
      if cedQtd_Inic_Mac.Enabled then cedQtd_Inic_Mac.SetFocus;
      Exit;
    end;        }

  // caso foi informado o campo saldo macho é obrigatório os campos Peso e Nascimento Macho
 { if (cedQtd_Inic_Mac.AsInteger > 0) then
    begin
      // verifica se foi informado o peso é menor que 100
      if (cedPesoMacho.Value <= 0) or (cedPesoMacho.Value >= 100) then
        begin
          MessageDlg(Msg00143, mtInformation, [mbOK], 0);
          ntbPaginas.PageIndex := 2;
          tstPrincipal.TabIndex := ntbPaginas.PageIndex;
          if cedPesoMacho.Enabled then cedPesoMacho.SetFocus;
          Exit;
        end;

      // verifica se a data é válida
      if VerificaData(detNascMacho.Text) = 0 then
        begin
          MessageDlg(Format(Msg00422, ['Data Nascimento Macho']), mtInformation, [mbOK], 0);
          ntbPaginas.PageIndex := 2;
          tstPrincipal.TabIndex := ntbPaginas.PageIndex;
          if detNascMacho.Enabled then detNascMacho.SetFocus;
          Exit;
        end;

      // verifica se a data nasc macho é maior que ha data de alojamento
      if (detNascMacho.Date > detDat_Aloj_Inicial.Date) then
        begin
          MessageDlg(Msg00118, mtInformation, [mbOK], 0);
          ntbPaginas.PageIndex := 2;
          tstPrincipal.TabIndex := ntbPaginas.PageIndex;
          if detNascMacho.Enabled then detNascMacho.SetFocus;
          Exit;
        end;
    end;

  // caso foi informado o campo saldo fêmea é obrigatório os campos Peso e Nascimento Femea
  if (cedQtd_Inic_Fem.AsInteger > 0) then
    begin
      // verifica se foi informado o peso é menor que 100
      if (cedPesoFemea.Value <= 0) or (cedPesoFemea.Value >= 100) then
        begin
          MessageDlg(Msg00144, mtInformation, [mbOK], 0);
          ntbPaginas.PageIndex := 2;
          tstPrincipal.TabIndex := ntbPaginas.PageIndex;
          if cedPesoFemea.Enabled then cedPesoFemea.SetFocus;
          Exit;
        end;

      // verifica se a data é válida
      if VerificaData(detNascFemea.Text) = 0 then
        begin
          MessageDlg(Format(Msg00422, ['Data Nascimento Fêmea']), mtInformation, [mbOK], 0);
          ntbPaginas.PageIndex := 2;
          tstPrincipal.TabIndex := ntbPaginas.PageIndex;
          if detNascFemea.Enabled then detNascFemea.SetFocus;
          Exit;
        end;

      // verifica se a data nasc macho é maior que ha data de alojamento
      if (detNascFemea.Date > detDat_Aloj_Inicial.Date) then
        begin
          MessageDlg(Msg00120, mtInformation, [mbOK], 0);
          ntbPaginas.PageIndex := 2;
          tstPrincipal.TabIndex := ntbPaginas.PageIndex;
          if detNascFemea.Enabled then detNascFemea.SetFocus;
          Exit;
        end;
    end;      }
    {
  // verifica se existe um padrão para a indentificação
  if ExistePadrao(QryExistePadrao, edtCod_Lf.Text, edtCod_Lf.Text, edtIde_Ave.Text, edtNro_Est.Text, cmbCod_Linha.Text) then
    begin
      MessageDlg(Msg00429, mtInformation, [mbOK], 0);
      ntbPaginas.PageIndex := 0;
      tstPrincipal.TabIndex := ntbPaginas.PageIndex;
      if edtCod_Lf.Enabled then edtCod_Lf.SetFocus;
      Exit;
    end;

  // verifica se existe padrão naquela data
  if ExistePadraoData(QryExistePadraoData, edtCod_Lf.Text, edtCod_Lf.Text, edtIde_Ave.Text, edtNro_Est.Text, cmbCod_Linha.Text , detDat_Aloj_Inicial.Date) then
    begin
      MessageDlg(Msg00430, mtInformation, [mbOK], 0);
      ntbPaginas.PageIndex := 2;
      tstPrincipal.TabIndex := ntbPaginas.PageIndex;
      if detDat_Aloj_Inicial.Enabled then detDat_Aloj_Inicial.SetFocus;
      Exit;
    end;

  // verifica se existe padrão para todas as idade
  if ExistePadraoData(QryExistePadraoTodasAsIdades, edtCod_Lf.Text, edtCod_Lf.Text, edtIde_Ave.Text, edtNro_Est.Text, cmbCod_Linha.Text , detDat_Aloj_Inicial.Date ) then
    begin
      MessageDlg(Msg00428, mtInformation, [mbOK], 0);
      ntbPaginas.PageIndex := 0;
      tstPrincipal.TabIndex := ntbPaginas.PageIndex;
      Exit;
    end;   }
   {
  // verifica se existe pelo menos um box informado para o Lote
  if (FDistribuicaoBox.qrySaldos.RecordCount <= 0) and (vGerarSaldo = False) then
    begin
      MessageDlg(Msg00448, mtInformation, [mbOK], 0);
      ntbPaginas.PageIndex := 2;
      tstPrincipal.TabIndex := ntbPaginas.PageIndex;
      Exit;
    end;       }
  if edtCod_Local.Text = '98' then
      chbProprio.Checked := false
  else
      chbProprio.Checked := true;

  Result := True;
end;

// Função para Buscar o Cadastro
function TFLotes.BuscaCadastro: Boolean;
var
  vSelect : String;
  vWhere  : String;
begin
  inherited;
  vSelect := 'Select * From avfslot1 lot, avfsend1 emd, avfsalo1 alo ';
  vWhere := 'Where lot.Cod_Lote_Num = ' + IntToStr(cedCod_Lote_Num.AsInteger) +
            '  and lot.Cod_Lote_Num = emd.Cod_Lote_Num ' +
            '  and lot.Cod_Lote_Num = alo.Cod_Lote_Num ';
  if not BuscaRegistro(QryBusca, vSelect, vWhere) then
    begin
      LimpaCampos;
    end
  else
    begin
      ModoInsert := False;
      ModoUpdate := True;
      ModoDelete := False;
      MostraCampos;
      spiInformacao.Enabled := false;
    end;
  VerificaBotoes(ModoInsert, ModoUpdate, ModoDelete);
  Result := True;
end;

// função que de acordo com a seleção dos item ele atualiza o endereço
procedure TFLotes.AtualizaEndereco;
begin
  vGerarSaldo := True;
  with QryGranja do
    begin
      Close;
      ParamByName('Local').AsString := edtCod_Local.Text;
      Open;
    end;
  with QryGrupo do
    begin
      Close;
      ParamByName('Local').AsString := edtCod_Local.Text;
      ParamByName('Granja').AsString := edtCod_Granja.Text;
      Open;
    end;
  with QryGalpao do
    begin
      Close;
      ParamByName('Local').AsString := edtCod_Local.Text;
      ParamByName('Granja').AsString := edtCod_Granja.Text;
      ParamByName('Grupo').AsString := edtCod_Grupo.Text;
      Open;
    end;



end;

function TFLotes.CadastraLote: Boolean;
var
  vSelect : String;
  vCampos : String;
  vValues : String;
begin
  inherited;
  vSelect := 'Insert Into avfslot1 ';
  vCampos := 'Cod_Lm, Cod_Lf, Ide_Ave, Nro_Est, Nro_Lote, Cod_Linha, Ide_Espec, Dat_Aloj_Inicial, Qtd_Inic_Mac, ' +
             'Qtd_Inic_Fem, Dat_Acasalamento, Dat_Exame_Pulorose, Dat_Selecao, Dat_Prev_Desc, Dat_Efet_Desc, ' +
             'Flg_Teste, Dat_Nasc_Media, Lote_Proprio ,cod_parceiro,FLG_MOV_INC ,nro_lote_complementar,flg_fase,ordem';
  vValues := ':Cod_Lm, :Cod_Lf, :Ide_Ave, :Nro_Est, :Nro_Lote, :Cod_Linha, :Ide_Espec, :Dat_Aloj_Inicial, :Qtd_Inic_Mac, ' +
             ':Qtd_Inic_Fem, :Dat_Acasalamento, :Dat_Exame_Pulorose, :Dat_Selecao, :Dat_Prev_Desc, :Dat_Efet_Desc, ' +
             ':Flg_Teste, :Dat_Nasc_Media, :Lote_Proprio ,:cod_parceiro,:FLG_MOV_INC,:nro_lote_complementar,:flg_fase,:ordem ';
  InsertDados(QryOperacao, vSelect, vCampos, vValues);
  with QryOperacao do
    begin
      ParamByName('Cod_Lm').AsString := edtCod_Lf.Text;
      parambyname('FLG_MOV_INC').asinteger  := 0;
      Parambyname('ordem').asstring := edtOrdem.text;
      ParamByName('Cod_Lf').AsString := edtCod_Lf.Text;
      ParamByName('Ide_Ave').AsString := edtIde_Ave.Text;
      ParamByName('Nro_Est').AsString := edtNro_Est.Text;
      ParamByName('Nro_Lote').AsString := edtNro_Lote.Text;
      ParamByName('Nro_Lote_complementar').AsString := edtNro_Lote.Text;
      ParamByName('Cod_Linha').AsString := ' ';
      ParamByName('Ide_Espec').AsString := edtIde_Espec.Text;
      ParamByName('Dat_Aloj_Inicial').AsDate := detDat_Aloj_Inicial.Date;
      ParamByName('Qtd_Inic_Mac').AsInteger := 0;
      ParamByName('Qtd_Inic_Fem').AsInteger := cedQtd_Inic_Fem.AsInteger;
      ParamByName('Dat_Acasalamento').AsDate := DateEdit2.date; // 2 = 01/01/1900
      ParamByName('Dat_Exame_Pulorose').AsDate := StrToDate('01/01/1900'); // 2 = 01/01/1900
      ParamByName('Dat_Selecao').AsDate := DateEdit1.date;
      // caso a data seja preenchida
      ParamByName('Dat_Prev_Desc').AsDate := StrToDate('01/01/1900'); //01/01/1900
      ParamByName('flg_fase').asstring := copy(cbxfase.text,1,1);
      ParamByName('Dat_Efet_Desc').AsDate := StrToDate('01/01/1900'); // 2 = 01/01/1900
      ParamByName('Flg_Teste').Asinteger   := 0;
      ParamByName('Dat_Nasc_Media').AsDate := StrToDate('01/01/1900'); // 2 = 01/01/1900
      ParamByName('Lote_Proprio').Asinteger := ConvertBooToInt(chbProprio.Checked);

      if not chbProprio.Checked then
         begin
           ParamByName('Dat_Nasc_Media').AsDate := detDat_Aloj_Inicial.Date;
         end;
      parambyname('cod_parceiro').asinteger := 0;
      ExecSQL;
    end;
  Result := True;
end;

function TFLotes.EnderecamentoLote(vLote: Integer; vLocal, vGranja, vGrupo, vGalpao: String; vData: TDateTime):Boolean;
var
  vSelect : String;
  vCampos : String;
  vValues : String;
begin
  inherited;
  with QryOperacao do
    begin
      sql.text := 'delete from avfsend1 where Cod_Lote_Num=:Cod_Lote_Num ';//and :data between Dat_Inicio and Dat_Fim';
      ParamByName('Cod_Lote_Num').AsInteger := vLote;
      //ParamByName('data').AsDate := vData;
      ExecSQL;
    end;


  vSelect := 'Insert Into avfsend1 ';
  vCampos := 'Cod_Lote_Num, Dat_Inicio, Cod_Local, Cod_Granja, Cod_Grupo, Cod_Galinheiro, Dat_Fim ';
  vValues := ':Cod_Lote_Num, :Dat_Inicio, :Cod_Local, :Cod_Granja, :Cod_Grupo, :Cod_Galinheiro, to_date(:Dat_Fim,''dd/mm/yyyy'') ';
  InsertDados(QryOperacao, vSelect, vCampos, vValues);
  with QryOperacao do
    begin
      ParamByName('Cod_Lote_Num').AsInteger := vLote;
      ParamByName('Dat_Inicio').AsDate := vData;
      ParamByName('Cod_Local').AsString := vLocal;
      ParamByName('Cod_Granja').AsString := vGranja;
      ParamByName('Cod_Grupo').AsString := vGrupo;
      ParamByName('Cod_Galinheiro').AsString := vGalpao;
      ParamByName('Dat_Fim').Asstring := '31/12/9999';
      ExecSQL;
    end;
  Result := True;
end;

function TFLotes.CadastraIdades(vLote, vIdadeFim: Integer; vData: TDateTime):Boolean;
var
  vSelect  : String;
  vCampos  : String;
  vValues  : String;
  vIdade   : Integer;
  vDataFim : TDateTime;
begin
  inherited;
  vIdade := cedIdadeAloj.asinteger;
 {vDataFim := ProximoDiaFechamento(vData);}
  vDataFim := vData + 6;

  with QryOperacao do
    begin
      close;
      sql.text := ' delete from avfsdat1 where Cod_Lote_Num=:Cod_Lote_Num ' ;
      ParamByName('Cod_Lote_Num').AsInteger := vLote;
      ExecSQL;
    end;


  vSelect := 'Insert Into avfsdat1 ';
  vCampos := 'Cod_Lote_Num, Idade, Dat_Inicio, Dat_Fim ';
  vValues := ':Cod_Lote_Num, :Idade, :Dat_Inicio, :Dat_Fim ';
  InsertDados(QryOperacao, vSelect, vCampos, vValues);
  with QryOperacao do
    begin
      ParamByName('Cod_Lote_Num').AsInteger := vLote;
      ParamByName('Idade').AsInteger := vIdade;
      ParamByName('Dat_Inicio').AsDate := vData;
      ParamByName('Dat_Fim').AsDate := vDataFim;
      ExecSQL;
    end;
  vData := vDataFim + 1;
  vDataFim := vDataFim + 7;

  Inc(vIdade);
  with QryCadastraIdades do
    begin
      Close;

      sql.strings[10] := inttostr(vLote);
      sql.strings[13] := inttostr(vIdade);
      sql.strings[16] := inttostr(vIdadeFim);
      sql.strings[19] := ''''+formatdatetime('dd/mm/yyyy',vData)+'''';
      sql.strings[22] := ''''+formatdatetime('dd/mm/yyyy',vDataFim)+'''';  

      ExecSQL;
    end;
  Result := True;
end;

function TFLotes.AcertoCalculo(vLote: Integer; vMovimento, vCalculado: TDateTime): Boolean;
var
  vSelect : String;
  vWhere  : String;
  vCampos : String;
  vValues : String;
begin
  vSelect := 'Delete From avfsacl1 ';
  vWhere  := 'Where Cod_Lote_Num = ' + IntToStr(vLote);
  DeleteDados(QryOperacao, vSelect, vWhere);

  vSelect := 'Insert Into avfsacl1 ';
  vCampos := 'Cod_Lote_Num, Dat_Movimentacao, Dat_Calculada ';
  vValues := ':Cod_Lote_Num, :Dat_Movimentacao, :Dat_Calculada ';
  InsertDados(QryOperacao, vSelect, vCampos, vValues);
  with QryOperacao do
    begin
      ParamByName('Cod_Lote_Num').AsInteger := vLote;
      ParamByName('Dat_Movimentacao').AsDateTime := vMovimento;
      ParamByName('Dat_Calculada').AsDateTime := vCalculado;
      ExecSQL;
    end;
  Result := True;
end;

function TFLotes.AcertoSaldoInicial(vLote, vIdade, vMachos, vFemeas: Integer): Boolean;
var
  vSelect    : String;
  vCampos    : String;
  vValues    : String;
begin
  vSelect := 'Insert Into avfsaai1 ';
  vCampos := 'Idade_Inicio, Cod_Lote_Num, Idade_Fim, Qtd_Machos, Qtd_Femeas ';
  vValues := ':Idade_Inicio, :Cod_Lote_Num, :Idade_Fim, :Qtd_Machos, :Qtd_Femeas ';
  InsertDados(QryOperacao, vSelect, vCampos, vValues);
  with QryOperacao do
    begin
      ParamByName('Idade_Inicio').AsInteger := vIdade;
      ParamByName('Cod_Lote_Num').AsInteger := vLote;
      ParamByName('Idade_Fim').AsInteger    := 999;
      ParamByName('Qtd_Machos').AsInteger   := vMachos;
      ParamByName('Qtd_Femeas').AsInteger   := vFemeas;
      ExecSQL;
    end;
  Result := True;
end;

function TFLotes.AlojamentoAves(vLote, vAvesMachos, vAvesFemeas: Integer; vData, vNascMacho, vNascFemea: TDateTime; vPesoMacho, vPesoFemea: Real; vObs: String): Boolean;
var
  vSelect : String;
  vCampos : String;
  vValues : String;
begin
  vSelect := 'Insert Into avfsalo1 ';
  vCampos := 'Cod_Lote_Num, Dat_Aloj, Dat_Nasc_Mac, Peso_Aloj_Mac, Qtd_Machos, Dat_Nasc_Fem, Peso_Aloj_Fem, Qtd_Femeas, Obs_Origem ';
  vValues := ':Cod_Lote_Num, :Dat_Aloj, :Dat_Nasc_Mac, :Peso_Aloj_Mac, :Qtd_Machos, :Dat_Nasc_Fem, :Peso_Aloj_Fem, :Qtd_Femeas, :Obs_Origem ';
  InsertDados(QryOperacao, vSelect, vCampos, vValues);
  with QryOperacao do
    begin
      ParamByName('Cod_Lote_Num').AsInteger := vLote;
      ParamByName('Dat_Aloj').AsdateTime := vData;
      if vAvesMachos <= 0 then
        begin
          ParamByName('Peso_Aloj_Mac').AsFloat := 0;
          ParamByName('Qtd_Machos').AsInteger := 0;
          ParamByName('Dat_Nasc_Mac').AsDate := 2; // 2 = 01/01/1900
        end
      else
        begin
          ParamByName('Peso_Aloj_Mac').AsFloat := vPesoMacho;
          ParamByName('Qtd_Machos').AsInteger := vAvesMachos;
          ParamByName('Dat_Nasc_Mac').AsDate := vNascMacho;
        end;

      if vAvesFemeas <= 0 then
        begin
          ParamByName('Peso_Aloj_Fem').AsFloat := 0;
          ParamByName('Qtd_Femeas').AsInteger := 0;
          ParamByName('Dat_Nasc_Fem').AsDate := 2; // 2 = 01/01/1900
        end
      else
        begin
          ParamByName('Peso_Aloj_Fem').AsFloat := vPesoFemea;
          ParamByName('Qtd_Femeas').AsInteger := vAvesFemeas;
          ParamByName('Dat_Nasc_Fem').AsDate := vNascFemea;
        end;

      ParamByName('Obs_Origem').AsString := vObs;
      ExecSQL;
    end;
  Result := True;
end;

function TFLotes.SaldoDiarioBox(vLote: Integer; vData: TDateTime): Boolean;
var
  vSelect : String;
  vCampos : String;
  vValues : String;
begin
  vSelect := 'Insert Into avfssda1 ';
  vCampos := 'Nro_Seq, Data, Cod_Lote_Num, Nro_Box, Flg_Box, Qtd_Machos, Qtd_Femeas,Qtd_Mac, Qtd_Fem,Qtd_morte_Mac, Qtd_morte_Fem ';
  vValues := ':Nro_Seq, :Data, :Cod_Lote_Num, :Nro_Box, :Flg_Box, :Qtd_Machos, :Qtd_Femeas,:Qtd_Mac, :Qtd_Fem,:Qtd_morte_Mac, :Qtd_morte_Fem ';
  with FDistribuicaoBox.qrySaldos do
    begin
      First;
      while not eof do
        begin
          InsertDados(QryOperacao, vSelect, vCampos, vValues);
          with QryOperacao do
            begin
              ParamByName('Nro_Seq').AsInteger := 0;
              ParamByName('Data').AsdateTime := vData;
              ParamByName('Cod_Lote_Num').AsInteger := vLote;
              ParamByName('Nro_Box').AsInteger     := FDistribuicaoBox.qrySaldos.FieldByName('Nro_Box').AsInteger;
              ParamByName('Flg_Box').Asinteger     := 0;
              ParamByName('Qtd_Machos').AsInteger  := FDistribuicaoBox.qrySaldos.FieldByName('Qtd_Machos').AsInteger;
              ParamByName('Qtd_Femeas').AsInteger  := FDistribuicaoBox.qrySaldos.FieldByName('Qtd_Femeas').AsInteger;

              ParamByName('Qtd_Mac').AsInteger := FDistribuicaoBox.qrySaldos.FieldByName('Qtd_Mac').AsInteger;
              ParamByName('Qtd_Fem').AsInteger := FDistribuicaoBox.qrySaldos.FieldByName('Qtd_Fem').AsInteger;
              ParamByName('Qtd_morte_Mac').AsInteger := FDistribuicaoBox.qrySaldos.FieldByName('qtd_mort_mac').AsInteger;
              ParamByName('Qtd_morte_Fem').AsInteger := FDistribuicaoBox.qrySaldos.FieldByName('qtd_mort_fem').AsInteger;


              ExecSQL;
            end;
          Next;
        end;
    end;
  Result := True;
end;

function TFLotes.AcertoProducao(vLote, vIdade, vMachos, vFemeas: Integer): Boolean;
var
  vSelect    : String;
  vCampos    : String;
  vValues    : String;
begin
  vSelect := 'Insert Into avfsaap1 ';
  vCampos := 'Idade_Inicio, Cod_Lote_Num, Idade_Fim, Qtd_Machos, Qtd_Femeas ';
  vValues := ':Idade_Inicio, :Cod_Lote_Num, :Idade_Fim, :Qtd_Machos, :Qtd_Femeas ';
  InsertDados(QryOperacao, vSelect, vCampos, vValues);
  with QryOperacao do
    begin
      ParamByName('Idade_Inicio').AsInteger := vIdade;
      ParamByName('Cod_Lote_Num').AsInteger := vLote;
      ParamByName('Idade_Fim').AsInteger := 999;
      ParamByName('Qtd_Machos').AsInteger := vMachos;
      ParamByName('Qtd_Femeas').AsInteger := vFemeas;
      ExecSQL;
    end;
  Result := True;
end;

procedure TFLotes.AdicionarClick(Sender: TObject);
var
  vSelect : String;
  vLote   : Integer;
  vIdade  : Integer;
begin
  inherited;
  if edtIde_Espec.Text = '' then edtIde_Espec.Text := ' ';
  // verifica se os campos obrigatório foram todos preenchidos corretamentes
  if not (VerificaCampos) then Exit;

  try
    begin
      FMenu.dbsManejo.StartTransaction;

      // gera cadastro do lote
      CadastraLote;

      // busca o nro do lote que acabou se ser cadastrado
      vSelect := 'Select Max(Cod_Lote_Num) Cod_Lote_Num From avfslot1 ';
      BuscaRegistro(QryBusca, vSelect, '');
      vLote := QryBusca.FieldByName('Cod_Lote_Num').AsInteger;

      // Grava PML se Lote de Terceiros
      if not chbProprio.Checked then
         begin
            QryGravaPML.close;
            QryGravaPML.ParamByName('cod_lote_num').AsInteger         := vLote;
            QryGravaPML.ParamByName('Data_Nasc_Media').AsDate := detDat_Aloj_Inicial.Date;
            QryGravaPML.ParamByName('Ide_Ave').AsString       := edtIde_Ave.Text;
            QryGravaPML.ExecSQL;
         end;

      // gera endereçamento do Lote
      EnderecamentoLote(vLote, edtCod_Local.Text, edtCod_Granja.Text, edtCod_Grupo.Text, edtCod_Galinheiro.Text, detDat_Aloj_Inicial.Date);

      // gera as idades para o Lote
      BuscaRegistro(QryBusca, 'Select * From avfside1 ', 'Where Ide_Ave  = ''' + edtIde_Ave.Text + '''');
      vIdade := QryBusca.FieldByName('Idade_Final').AsInteger;
      CadastraIdades(vLote, vIdade, detDat_Aloj_Inicial.Date);

      // gera alojamento de aves inicial
      AlojamentoAves(vLote, 0, cedQtd_Inic_Fem.AsInteger, detDat_Aloj_Inicial.Date, 0, detNascFemea.Date, 0, cedPesoFemea.Value, memObs.Text);

      // gera acerto da saldo inicial de aves
      AcertoSaldoInicial(vLote, 0, 0, cedQtd_Inic_Fem.AsInteger);

      // gera saldo diário do lote
     if vGerarSaldo then
       begin
         // gera saldo diario inicial do lote
         FDistribuicaoBox.qrySaldos.Close;
         FDistribuicaoBox.qrySaldos.Open;
         InsereSaldoDiario(vLote, 0, cedQtd_Inic_Fem.AsInteger, detDat_Aloj_Inicial.Date, edtCod_Local.Text, edtCod_Granja.Text, edtCod_Grupo.Text, edtCod_Galinheiro.Text);
       end;
      SaldoDiarioBox(vLote, detDat_Aloj_Inicial.Date);

      // gera o registro de acerto de cálculo
      AcertoCalculo(vLote, detDat_Aloj_Inicial.Date, detDat_Aloj_Inicial.Date);

      CompletarGalpao(vLote);
      FMenu.dbsManejo.Commit;
      LimpaCampos;

    end;

  except
    on E: Exception do
      begin
        MessageDlg(Msg10003 + CHR(10) + '"' + E.Message + '".', mtError, [mbOk], 0);
        FMenu.dbsManejo.Rollback;
    end;
  end;

end;

procedure TFLotes.ModificarClick(Sender: TObject);
var
  vSelect : String;
  vCampos : String;
  vWhere  : String;
begin
  inherited;

  if edtIde_Espec.Text = '' then edtIde_Espec.Text := ' ';
  if not (VerificaCampos) then Exit;

  try
    begin
      FMenu.dbsManejo.StartTransaction;

      vSelect := 'Update avfslot1 ';
      vCampos := 'Cod_Lm = :Cod_Lm,dat_aloj_inicial=:dat_aloj_inicial , ordem=:ordem , flg_fase=:flg_fase ,Qtd_Inic_Mac=:Qtd_Inic_Mac,Qtd_Inic_Fem=:Qtd_Inic_Fem, Dat_Selecao=:Dat_Selecao,Nro_Lote=:Nro_Lote,Nro_Lote_complementar=:Nro_Lote_complementar,'+' Cod_Lf = :Cod_Lf,cod_parceiro=:cod_parceiro, Ide_Espec = :Ide_Espec, Dat_Prev_Desc = to_date(:Dat_Prev_Desc,''dd/mm/yyyy'') , ide_ave=:ide_ave , FLG_MOV_INC=:FLG_MOV_INC ,dat_acasalamento=:dat_acasalamento ';
      vWhere := 'Cod_Lote_Num = ' + IntToStr(cedCod_Lote_Num.AsInteger);


      UpdateDados(QryOperacao, vSelect, vCampos, vWhere);
      with QryOperacao do
        begin
          ParamByName('Dat_Aloj_Inicial').AsDate := detDat_Aloj_Inicial.Date;
          ParamByName('flg_fase').asstring := copy(cbxfase.text,1,1);
          Parambyname('ordem').asstring := edtOrdem.text;
          ParamByName('Cod_Lm').AsString    := edtCod_Lf.Text;
          ParamByName('Cod_Lf').AsString    := edtCod_Lf.Text;
          ParamByName('Ide_Espec').AsString := edtIde_Espec.Text;
          ParamByName('Ide_Ave').AsString   := edtIde_Ave.Text;
          parambyname('cod_parceiro').asinteger := 0;
          parambyname('FLG_MOV_INC').asinteger  := 0;
          ParamByName('Nro_Lote').AsString := edtNro_Lote.Text;
          ParamByName('Nro_Lote_complementar').AsString := edtNro_Lote.Text;
          // caso a data seja preenchida
          ParamByName('Dat_Prev_Desc').Asstring := '01/01/1900';
          ParamByName('Dat_Selecao').AsDate := DateEdit1.date;
          ParamByName('dat_acasalamento').AsDate := DateEdit2.date;
          ParamByName('Qtd_Inic_Mac').AsInteger := 0;
          ParamByName('Qtd_Inic_Fem').AsInteger := cedQtd_Inic_Fem.AsInteger;

          ExecSQL;
        end;


      vSelect := 'Update AVFSALO1 ';
      vCampos := 'DAT_ALOJ=:DATA ';
      vWhere := ' DAT_ALOJ = (SELECT MIN(X.DAT_ALOJ) FROM AVFSALO1 X WHERE X.COD_LOTE_NUM = AVFSALO1.COD_LOTE_NUM ) AND Cod_Lote_Num = ' + IntToStr(cedCod_Lote_Num.AsInteger);
      UpdateDados(QryOperacao, vSelect, vCampos, vWhere);
      with QryOperacao do
        begin
          ParamByName('DATA').AsDate := detDat_Aloj_Inicial.Date;
          ExecSQL;
        end;

      BuscaRegistro(QryBusca, 'Select * From avfside1 ', 'Where Ide_Ave  = ''' + edtIde_Ave.Text + '''');
      CadastraIdades(cedCod_Lote_Num.AsInteger, QryBusca.FieldByName('Idade_Final').AsInteger, detDat_Aloj_Inicial.Date);

      // gera endereçamento do Lote
      EnderecamentoLote(cedCod_Lote_Num.AsInteger, edtCod_Local.Text, edtCod_Granja.Text, edtCod_Grupo.Text, edtCod_Galinheiro.Text, detDat_Aloj_Inicial.Date);

      // gera o registro de acerto de cálculo
      AcertoCalculo(cedCod_Lote_Num.AsInteger, detDat_Aloj_Inicial.Date, detDat_Aloj_Inicial.Date);
      CompletarGalpao(cedCod_Lote_Num.AsInteger);


      FMenu.dbsManejo.Commit;
      LimpaCampos;
    end;
  except
    on E: EDatabaseError do
      begin
        MessageDlg(Msg10005, mtError, [mbOk], 0);
        FMenu.dbsManejo.Rollback;
        LimpaCampos;
      end;
    on E: Exception do
      begin
        MessageDlg(Msg10003 + CHR(10) + '"' + E.Message + '".', mtError, [mbOk], 0);
        FMenu.dbsManejo.Rollback;
    end;
  end;
end;

procedure TFLotes.LimpaCamposClick(Sender: TObject);
begin
  inherited;
  LimpaCampos;
end;

procedure TFLotes.ExcluirClick(Sender: TObject);
var
  vLote   : Integer;
begin
  inherited;
  vLote := QryConsulta.FieldByName('Cod_Lote_Num').AsInteger;

  // verifica se o lote está ativo
  if not VerificaLoteAtivo(QryBusca, vLote) then
    begin
      MessageDlg(Msg00383, mtInformation, [mbOK], 0);
      Exit;
    end;

  // verifica se não pertence a um lote agrupado
  if BuscaRegistro(QryBusca, 'Select * From avfscon1 ', 'Where Cod_Lote_Num = ' + IntToStr(vLote)) then
    begin
      MessageDlg(Msg00432, mtInformation, [mbOK], 0);
      Exit;
    end;

  // verifica se existe no incubatório
  if BuscaRegistro(QryBuscaIncubatorio, 'Select * From cifsrec1 ', 'Where Cod_Lote_Num = ' + IntToStr(vLote)) then
    begin
      MessageDlg(Msg00386, mtInformation, [mbOK], 0);
      Exit;
    end;

  // verifica se o parametro remover movtos é true
  if FMenu.Parametros.vRemoverMovtosLote then
    begin
      // verifica se existe registros na tabela aca1
      if BuscaRegistro(QryBusca, 'Select * From avfsaca1 ', 'Where Cod_Lote_Num = ' + IntToStr(vLote)) then
        begin
          MessageDlg(Format(Msg00433, ['Movimento de Acasalamento']), mtInformation, [mbOK], 0);
          Exit;
        end;

      // verifica se existe registros na tabela ape1
      if BuscaRegistro(QryBusca, 'Select * From avfsape1 ', 'Where Cod_Lote_Num = ' + IntToStr(vLote)) then
        begin
          MessageDlg(Format(Msg00433, ['Movimento de Pesagem de Aves(Amostra)']), mtInformation, [mbOK], 0);
          Exit;
        end;

      // verifica se existe registros na tabela deb1
      if BuscaRegistro(QryBusca, 'Select * From avfsdeb1 ', 'Where Cod_Lote_Num = ' + IntToStr(vLote)) then
        begin
          MessageDlg(Format(Msg00433, ['Movimento de Debicagem de Aves']), mtInformation, [mbOK], 0);
          Exit;
        end;

      // verifica se existe registros na tabela dpe1
      if BuscaRegistro(QryBusca, 'Select * From avfsdpe1 ', 'Where Cod_Lote_Num = ' + IntToStr(vLote)) then
        begin
          MessageDlg(Format(Msg00433, ['Movimento de Produção de Ovos(Peso Específico)']), mtInformation, [mbOK], 0);
          Exit;
        end;

      // verifica se existe registros na tabela dpo1
      if BuscaRegistro(QryBusca, 'Select * From avfsdpo1 ', 'Where Cod_Lote_Num = ' + IntToStr(vLote)) then
        begin
          MessageDlg(Format(Msg00433, ['Movimento de Produção de Ovos(Coleta)']), mtInformation, [mbOK], 0);
          Exit;
        end;

//      // verifica se existe registros na tabela dvi1
//      if BuscaRegistro(QryBusca, 'Select * From avfsdvi1 ', 'Where Cod_Lote_Num = ' + IntToStr(vLote)) then
//        begin
//          MessageDlg(Format(Msg00433, ['Movimento de Visita Técnica(Detalhes)']), mtInformation, [mbOK], 0);
//          Exit;
//        end;

//      // verifica se existe registros na tabela vis1
//      if BuscaRegistro(QryBusca, 'Select * From avfsvis1 ', 'Where Cod_Lote_Num = ' + IntToStr(vLote)) then
//        begin
//          MessageDlg(Format(Msg00433, ['Movimento de Visita Técnica']), mtInformation, [mbOK], 0);
//          Exit;
//        end;

      // verifica se existe registros na tabela mbo1
      if BuscaRegistro(QryBusca, 'Select * From avfsmbo1 ', 'Where Cod_Lote_Num = ' + IntToStr(vLote)) then
        begin
          MessageDlg(Format(Msg00433, ['Movimento de Box']), mtInformation, [mbOK], 0);
          Exit;
        end;

      // verifica se existe registros na tabela mca1
      if BuscaRegistro(QryBusca, 'Select * From avfsmca1 ', 'Where Cod_Lote_Num = ' + IntToStr(vLote)) then
        begin
          MessageDlg(Format(Msg00433, ['Movimento de Box(Causa e Ocorrência)']), mtInformation, [mbOK], 0);
          Exit;
        end;

      // verifica se existe registros na tabela mcr1
      if BuscaRegistro(QryBusca, 'Select * From avfsmcr1 ', 'Where Cod_Lote_Num = ' + IntToStr(vLote)) then
        begin
          MessageDlg(Format(Msg00433, ['Movimento de Consumo de Ração']), mtInformation, [mbOK], 0);
          Exit;
        end;

      // verifica se existe registros na tabela mer1
      if BuscaRegistro(QryBusca, 'Select * From avfsmer1 ', 'Where Cod_Lote_Num = ' + IntToStr(vLote)) then
        begin
          MessageDlg(Format(Msg00433, ['Movimento de Entrada de Ração']), mtInformation, [mbOK], 0);
          Exit;
        end;

      // verifica se existe registros na tabela mfa1
      if BuscaRegistro(QryBusca, 'Select * From avfsmfa1 ', 'Where Cod_Lote_Num = ' + IntToStr(vLote)) then
        begin
          MessageDlg(Format(Msg00433, ['Movimento de Falta de Água']), mtInformation, [mbOK], 0);
          Exit;
        end;

      // verifica se existe registros na tabela mfe1
      if BuscaRegistro(QryBusca, 'Select * From avfsmfe1 ', 'Where Cod_Lote_Num = ' + IntToStr(vLote)) then
        begin
          MessageDlg(Format(Msg00433, ['Movimento de Falta de Energia']), mtInformation, [mbOK], 0);
          Exit;
        end;

      // verifica se existe registros na tabela mme1
      if BuscaRegistro(QryBusca, 'Select * From avfsmme1 ', 'Where Cod_Lote_Num = ' + IntToStr(vLote)) then
        begin
          MessageDlg(Format(Msg00433, ['Movimento de Uso de Medicamentos']), mtInformation, [mbOK], 0);
          Exit;
        end;

      // verifica se existe registros na tabela mpb1
      if BuscaRegistro(QryBusca, 'Select * From avfsmpb1 ', 'Where Cod_Lote_Num = ' + IntToStr(vLote)) then
        begin
          MessageDlg(Format(Msg00433, ['Movimento de Pesagem de Aves(Box)']), mtInformation, [mbOK], 0);
          Exit;
        end;

      // verifica se existe registros na tabela mpe1
      if BuscaRegistro(QryBusca, 'Select * From avfsmpe1 ', 'Where Cod_Lote_Num = ' + IntToStr(vLote)) then
        begin
          MessageDlg(Format(Msg00433, ['Movimento de Pesagem de Aves(Galpão)']), mtInformation, [mbOK], 0);
          Exit;
        end;

      // verifica se existe registros na tabela mpo1
      if BuscaRegistro(QryBusca, 'Select * From avfsmpo1 ', 'Where Cod_Lote_Num = ' + IntToStr(vLote)) then
        begin
          MessageDlg(Format(Msg00433, ['Movimento de Produção de Ovos']), mtInformation, [mbOK], 0);
          Exit;
        end;

      // verifica se existe registros na tabela mta1
      if BuscaRegistro(QryBusca, 'Select * From avfsmta1 ', 'Where Cod_Lote_Num = ' + IntToStr(vLote)) then
        begin
          MessageDlg(Format(Msg00433, ['Movimento de Transferência de Aves']), mtInformation, [mbOK], 0);
          Exit;
        end;

      // verifica se existe registros na tabela mva1
      if BuscaRegistro(QryBusca, 'Select * From avfsmva1 ', 'Where Cod_Lote_Num = ' + IntToStr(vLote)) then
        begin
          MessageDlg(Format(Msg00433, ['Movimento de Uso de Vacinas']), mtInformation, [mbOK], 0);
          Exit;
        end;

      // verifica se existe registros na tabela per1
      if BuscaRegistro(QryBusca, 'Select * From avfsper1 ', 'Where Cod_Lote_Num = ' + IntToStr(vLote)) then
        begin
          MessageDlg(Format(Msg00433, ['Movimento de Producao de Ovos(Perda)']), mtInformation, [mbOK], 0);
          Exit;
        end;

      // verifica se existe registros na tabela rep1
      if BuscaRegistro(QryBusca, 'Select * From avfsrep1 ', 'Where Cod_Lote_Num = ' + IntToStr(vLote)) then
        begin
          MessageDlg(Format(Msg00433, ['Movimento de Resultado de Pulorose']), mtInformation, [mbOK], 0);
          Exit;
        end;

      // verifica se existe registros na tabela sel1
      if BuscaRegistro(QryBusca, 'Select * From avfssel1 ', 'Where Cod_Lote_Num = ' + IntToStr(vLote)) then
        begin
          MessageDlg(Format(Msg00433, ['Movimento de Seleção de Aves']), mtInformation, [mbOK], 0);
          Exit;
        end;

      // verifica se existe registros na tabela tbr1
      if BuscaRegistro(QryBusca, 'Select * From avfstbr1 ', 'Where Cod_Lote_Num = ' + IntToStr(vLote)) then
        begin
          MessageDlg(Format(Msg00433, ['Movimento de Arraçoamento de Lote']), mtInformation, [mbOK], 0);
          Exit;
        end;

      // verifica se existe registros na tabela tlo1
      if BuscaRegistro(QryBusca, 'Select * From avfstlo1 ', 'Where Cod_Lote_Num = ' + IntToStr(vLote)) then
        begin
          MessageDlg(Format(Msg00433, ['Movimento de Teste de Lote']), mtInformation, [mbOK], 0);
          Exit;
        end;

      // verifica se existe registros na tabela tul1
      if BuscaRegistro(QryBusca, 'Select * From avfstul1 ', 'Where Cod_Lote_Num = ' + IntToStr(vLote)) then
        begin
          MessageDlg(Format(Msg00433, ['Movimento de Temperatura / Umidade / Lubrificação']), mtInformation, [mbOK], 0);
          Exit;
        end;

      // verifica se existe registros na tabela pml1
      if BuscaRegistro(QryBusca, 'Select * From avfspml1 ', 'Where Cod_Lote_Num = ' + IntToStr(vLote)) then
        begin
          MessageDlg(Format(Msg00433, ['Programação de Manejo']), mtInformation, [mbOK], 0);
          Exit;
        end;
    end;
     
  if MessageDlg(Msg00141, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
       begin
        FMenu.dbsManejo.StartTransaction;
        with scrRemoveMovtos do
          begin
            ParamByName('Lote').AsInteger := vLote;
            ExecSQL;
          end;
        FMenu.dbsManejo.Commit;
       end;
      except
        on E: Exception do
          begin
            MessageDlg(Msg10003 + CHR(10) + '"' + E.Message + '".', mtError, [mbOk], 0);
            FMenu.dbsManejo.Rollback;
          end;
        end;
    end;
    ConsultaClick(Sender)
end;

procedure TFLotes.ConsultaClick(Sender: TObject);
var
  vWhere    : String;
  vOrder    : String;
  vNewOrder : String;
  vContador : Integer;
begin
  inherited;
  vContador := 1;
  try
    Screen.Cursor := crHourGlass;
    with QryConsulta do
    begin
      Close;
      SQL.Clear;
      {Parte fixa da query}
      SQL.Add('Select lot.Cod_Lote_Num, lot.Cod_Lm, lot.Cod_Lf, lot.Ide_Ave, lot.Nro_Est, lot.Nro_Lote, lot.Ide_Espec, lot.Cod_Linha, lot.*, emd.* From avfslot1 lot, avfsend1 emd ');
      {Parte variável da query}
      vWhere := 'Where lot.Cod_Lote_Num = emd.Cod_Lote_Num and emd.Dat_inicio = (SELECT MAX(X.Dat_inicio) FROM AVFSEND1 X WHERE X.COD_LOTE_NUM = lot.Cod_Lote_Num ) ';
      vWhere := vWhere + ' and ide_ave in (''PB'', ''PV'')';  //Filtar lote especifico
      if cedCod_lote_num.AsInteger > 0  then
      begin
        vWhere := vWhere + ' and lot.cod_lote_num = ' + cedCod_lote_num.Text;
      end;



      if edtCod_Lf.Text <> '' then
      begin
        vWhere := vWhere + ' and Cod_Lf = ''' + edtCod_Lf.Text + '''';
      end;

      if edtIde_Ave.Text <> '' then
      begin
        vWhere := vWhere + ' and Ide_Ave = ''' + edtIde_Ave.Text + '''';
      end;

      if edtNro_Est.Text <> '' then
      begin
        vWhere := vWhere + ' and Nro_Est = ''' + edtNro_Est.Text + '''';
      end;

      if edtNro_Lote.Text <> '' then
      begin
        vWhere := vWhere + ' and Nro_Lote = ''' + edtNro_Lote.Text + '''';
      end;



      if edtCod_Local.Text <> '' then
      begin
        vWhere := vWhere + ' and Cod_Local = ''' + edtCod_Local.Text + '''';
      end;

      if edtCod_Granja.Text <> '' then
      begin
        vWhere := vWhere + ' and Cod_Granja = ''' + edtCod_Granja.Text + '''';
      end;

      if edtCod_Grupo.Text <> '' then
      begin
        vWhere := vWhere + ' and Cod_Grupo = ''' + edtCod_Grupo.Text + '''';
      end;

      if edtCod_Galinheiro.Text <> '' then
      begin
        vWhere := vWhere + ' and Cod_Galinheiro = ''' + edtCod_Galinheiro.Text + '''';
      end;

      SQL.Add(vWhere);
      {
      // busca a ordem dos campos definida pelo usuário
      vOrder := Registro.ReadString('Ordem dos Campos', 'Alojamento de Lotes', '');
      if not (VerificaRegistro(Registro.ReadString('Ordem dos Campos', 'Alojamento de Lotes', ''), OrdemCamposAlojamentoLotes)) then
        begin
          vOrder := '';
          vOrder := MostraNomesLista(OrdemCamposAlojamentoLotes, 7);
        end;

      while vContador <= Length(vOrder) do
        begin
          if Copy(vOrder, vContador, 1) = '1' then
            begin
              vNewOrder := vNewOrder + Copy(vOrder, vContador, 1) + ' Desc';
            end
          else
            begin
              vNewOrder := vNewOrder + Copy(vOrder, vContador, 1);
            end;
          Inc(vContador);
        end;  }

      SQL.Add('Order By lot.nro_lote, lot.dat_aloj_inicial,emd.cod_granja,emd.cod_grupo,emd.cod_galinheiro'); //+ vNewOrder);

      {Tenta executar a query montada anteriormente}
      try
        Open;
        if BOF and EOF then
          begin
            MessageDlg(Msg10000, mtInformation, [mbOk], 0);
          end
        else
          begin
            if RecordCount >= 1 then
              begin
                ntbPaginas.PageIndex := 4;
                tstPrincipal.Visible := False;
                ModoInsert := False;
                ModoUpdate := False;
                ModoDelete := True;
                spiAjustarIdade.Enabled := true;
                VerificaBotoes(ModoInsert, ModoUpdate, ModoDelete);
                spiInformacao.Enabled := true;
              end;
          end;



      except
        on E: EDataBaseError do
        begin
          MessageDlg(Msg10001 + CHR(10) + '"' + E.Message + '".', mtError, [mbOk], 0);
        end;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFLotes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree; {Fecha o form}
  FLotes := nil;    {Libera o form da memória}
end;

procedure TFLotes.FormCreate(Sender: TObject);
begin
  inherited;
  SetBounds(0, 0, 609, 325); // Posição x, y e o Tamanho do Form
end;

procedure TFLotes.VoltarClick(Sender: TObject);
begin
  inherited;
  LimpaCampos;
end;

procedure TFLotes.tstPrincipalClick(Sender: TObject);
begin
  inherited;
  ntbPaginas.PageIndex := tstPrincipal.TabIndex;
end;

procedure TFLotes.dlcLinhagemMachoDropDown(Sender: TObject);
begin
  inherited;
  with QryLinhagemMacho do
    begin
      Close;
      Open;
    end;
end;

procedure TFLotes.edtCod_LmChange(Sender: TObject);
begin
  inherited;
  // Está função é usada para realizar o Skip quando o campor for Código
  // Não remover está função
  if Length(TEdit(Sender).Text) = (TEdit(Sender).MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFLotes.FormDestroy(Sender: TObject);
begin
  inherited;
  QryLinhagemMacho.Close;
  QryLinhagemFemea.Close;
  QryIdentificacao.Close;
  QryEstacao.Close;
  QryLocal.Close;
  QryGranja.Close;
  QryGrupo.Close;
  QryGalpao.Close;
end;

procedure TFLotes.dlcLinhagemFemeaCloseUp(Sender: TObject);
begin
  inherited;
  edtCod_Lf.Text := QryLinhagemFemea.FieldByName('Cod_Linhagem').AsString;
  edtCod_Lf.SetFocus;
end;

procedure TFLotes.dlcLinhagemFemeaDropDown(Sender: TObject);
begin
  inherited;
  with QryLinhagemFemea do
    begin
      Close;
      Open;
    end;
end;

procedure TFLotes.edtCod_LfChange(Sender: TObject);
begin
  inherited;
  // Está função é usada para realizar o Skip quando o campor for Código
  // Não remover está função
  if Length(TEdit(Sender).Text) = (TEdit(Sender).MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFLotes.edtCod_LfExit(Sender: TObject);
begin
  inherited;
  dlcLinhagemFemea.KeyValue := edtCod_Lf.Text;
end;

procedure TFLotes.dlcIdentificacaoCloseUp(Sender: TObject);
begin
  inherited;
  edtIde_Ave.Text := QryIdentificacao.FieldByName('Ide_Ave').AsString;
  edtIde_Ave.SetFocus;
end;

procedure TFLotes.dlcIdentificacaoDropDown(Sender: TObject);
begin
  inherited;
  with QryIdentificacao do
    begin
      Close;
      Open;
    end;
end;

procedure TFLotes.edtIde_AveChange(Sender: TObject);
begin
  inherited;
  // Está função é usada para realizar o Skip quando o campor for Código
  // Não remover está função
  if Length(TEdit(Sender).Text) = (TEdit(Sender).MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFLotes.edtIde_AveExit(Sender: TObject);
begin
  inherited;
  dlcIdentificacao.KeyValue := edtIde_Ave.Text;
end;

procedure TFLotes.dlcEstacaoCloseUp(Sender: TObject);
begin
  inherited;
  edtNro_Est.Text := QryEstacao.FieldByName('Nro_Est').AsString;
  edtNro_Est.SetFocus;
end;

procedure TFLotes.dlcEstacaoDropDown(Sender: TObject);
begin
  inherited;
  with QryEstacao do
    begin
      Close;
      Open;
    end;
end;

procedure TFLotes.edtNro_EstChange(Sender: TObject);
begin
  inherited;
  // Está função é usada para realizar o Skip quando o campor for Código
  // Não remover está função
  if Length(TEdit(Sender).Text) = (TEdit(Sender).MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFLotes.edtNro_EstExit(Sender: TObject);
begin
  inherited;
  dlcEstacao.KeyValue := edtNro_Est.Text;
end;

procedure TFLotes.dlcLocalCloseUp(Sender: TObject);
begin
  inherited;
  edtCod_Local.Text := QryLocal.FieldByName('Cod_Local').AsString;
  AtualizaEndereco;
  edtCod_Granja.SetFocus;
end;

procedure TFLotes.dlcLocalDropDown(Sender: TObject);
begin
  inherited;
  AtualizaEndereco;
end;

procedure TFLotes.edtCod_LocalChange(Sender: TObject);
begin
  inherited;
  // Está função é usada para realizar o Skip quando o campor for Código
  // Não remover está função
  if Length(TEdit(Sender).Text) = (TEdit(Sender).MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFLotes.edtCod_LocalExit(Sender: TObject);
begin
  inherited;
  dlcLocal.KeyValue := edtCod_Local.Text;
  AtualizaEndereco;
end;

procedure TFLotes.dlcGranjaCloseUp(Sender: TObject);
begin
  inherited;
  edtCod_Granja.Text := QryGranja.FieldByName('Cod_Granja').AsString;
  AtualizaEndereco;
  edtCod_Grupo.SetFocus;
end;

procedure TFLotes.dlcGranjaDropDown(Sender: TObject);
begin
  inherited;
  AtualizaEndereco;
end;

procedure TFLotes.edtCod_GranjaChange(Sender: TObject);
begin
  inherited;
  // Está função é usada para realizar o Skip quando o campor for Código
  // Não remover está função
  if Length(TEdit(Sender).Text) = (TEdit(Sender).MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFLotes.edtCod_GranjaExit(Sender: TObject);
begin
  inherited;
  dlcGranja.KeyValue := edtCod_Granja.Text;
  AtualizaEndereco;
end;

procedure TFLotes.dlcGrupoCloseUp(Sender: TObject);
begin
  inherited;
  edtCod_Grupo.Text := QryGrupo.FieldByName('Cod_Grupo').AsString;
  AtualizaEndereco;
  edtCod_Galinheiro.SetFocus;
end;

procedure TFLotes.dlcGrupoDropDown(Sender: TObject);
begin
  inherited;
  AtualizaEndereco;
end;

procedure TFLotes.edtCod_GrupoChange(Sender: TObject);
begin
  inherited;
  // Está função é usada para realizar o Skip quando o campor for Código
  // Não remover está função
  if Length(TEdit(Sender).Text) = (TEdit(Sender).MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFLotes.edtCod_GrupoExit(Sender: TObject);
begin
  inherited;
  dlcGrupo.KeyValue := edtCod_Grupo.Text;
  AtualizaEndereco;
end;

procedure TFLotes.dlcGalinheiroCloseUp(Sender: TObject);
begin
  inherited;
  edtCod_Galinheiro.Text := QryGalpao.FieldByName('Cod_Galinheiro').AsString;
  AtualizaEndereco;
  edtCod_Galinheiro.SetFocus;
end;

procedure TFLotes.dlcGalinheiroDropDown(Sender: TObject);
begin
  inherited;
  AtualizaEndereco;
end;

procedure TFLotes.edtCod_GalinheiroChange(Sender: TObject);
begin
  inherited;
  // Está função é usada para realizar o Skip quando o campor for Código
  // Não remover está função
  if Length(TEdit(Sender).Text) = (TEdit(Sender).MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFLotes.edtCod_GalinheiroExit(Sender: TObject);
begin
  inherited;
  dlcGalinheiro.KeyValue := edtCod_Galinheiro.Text;
  AtualizaEndereco;
end;

procedure TFLotes.cedQtd_Inic_MacExit(Sender: TObject);
begin
  inherited;
  // caso o saldo macho seja 0 remove o peso e a data macho

end;

procedure TFLotes.cedQtd_Inic_MacChange(Sender: TObject);
begin
  inherited;
  cedQtd_Inic_MacExit(Sender);
  vGerarSaldo := True;
end;

procedure TFLotes.cedQtd_Inic_FemExit(Sender: TObject);
begin
  inherited;
  // caso o saldo macho seja 0 remove o peso e a data macho
  if cedQtd_Inic_Fem.AsInteger <= 0 then
    begin
      cedPesoFemea.AsInteger := 0;
      detNascFemea.Date := 0;
    end;
end;

procedure TFLotes.edtNro_LoteChange(Sender: TObject);
begin
  inherited;
  // Está função é usada para realizar o Skip quando o campor for Código
  // Não remover está função
  if Length(TEdit(Sender).Text) = (TEdit(Sender).MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFLotes.edtIde_EspecChange(Sender: TObject);
begin
  inherited;
  // Está função é usada para realizar o Skip quando o campor for Código
  // Não remover está função
  if Length(TEdit(Sender).Text) = (TEdit(Sender).MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFLotes.dgrLoteDblClick(Sender: TObject);
begin
  inherited;
  cedCod_Lote_Num.AsInteger := QryConsulta.FieldByName('Cod_Lote_Num').AsInteger;
  BuscaCadastro;
  ntbPaginas.PageIndex := 0; // Página de Cadastro}
  tstPrincipal.TabIndex := ntbPaginas.PageIndex;
  tstPrincipal.Visible := True;
end;

procedure TFLotes.dgrLoteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    begin
      dgrLoteDblClick(Sender);
    end;
end;

procedure TFLotes.InsereSaldo(vLote, vNro_Box, vQtd_Femeas, vQtd_Machos: Integer; vData: TDateTime; vSexo: String);

function BuscaBox():Boolean;
begin
  Result := False;
  with FDistribuicaoBox.qrySaldos do
    begin
       First;
       while not Eof do
         begin
           Result := FieldByName('Nro_Box').AsInteger = vNro_Box;
           if Result = True then
              Break;
           Next;
         end;
    end;
end;

begin
  with FDistribuicaoBox.qrySaldos do
    begin
      if BuscaBox then
        begin
          Edit;
          if UpperCase(vSexo) = 'M' then
            FieldByName('Qtd_Machos').AsInteger := vQtd_Machos
          else
            FieldByName('Qtd_Femeas').AsInteger := vQtd_Femeas;
          Post;
        end
      else
        begin
          Insert;
          FieldByName('Nro_Seq').AsInteger := 0;
          FieldByName('Data').AsDateTime := vData;
          FieldByName('Cod_Lote_num').AsInteger := vLote;
          FieldByName('Nro_Box').AsInteger := vNro_Box;
          FieldByName('flg_Box').Asboolean := ConvertIntToBoo(0);
          if UpperCase(vSexo) = 'M' then
            begin
              FieldByName('Qtd_Machos').AsInteger := vQtd_Machos;
              FieldByName('Qtd_Femeas').AsInteger := 0;
            end
          else
            begin
              FieldByName('Qtd_Machos').AsInteger := 0;
              FieldByName('Qtd_Femeas').AsInteger := vQtd_Femeas;
            end;
          Post;
        end;
    end;
end;

function TFLotes.InsereSaldoDiario(vLote, Qtd_Machos, Qtd_Femeas: Integer; vData: TDateTime; vLocal, vGranja, vGrupo, vGalpao: String): Boolean;
var
  ContBoxM   : Integer;
  ContBoxF   : Integer;
  Qtd_Insere : Integer;
begin
  Result := True;

  // Busca as Qtde de Aves por box
  with QryAvesBox do
    begin
      Close;
      ParamByName('Local').AsString := vLocal;
      ParamByName('Granja').AsString := vGranja;
      ParamByName('Grupo').AsString := vGrupo;
      ParamByName('Galpao').AsString := vGalpao;
      Open;
    end;

  QryAvesBox.Filter := ' Machos > 0 ';
  ContBoxM := 0;
  QryAvesBox.First;

  // se nao existir box cadastrado para o galpao gera um box default
  with QryAvesBox do
    while not Eof do
      begin
        Inc(ContBoxM);
        if Qtd_Machos <= 0 then Break;
        if (ContBoxM <> RecordCount) and
           (Qtd_Machos > FieldByName('Machos').AsInteger)
           then Qtd_Insere := FieldByName('Machos').AsInteger
           else Qtd_Insere := Qtd_Machos;
        InsereSaldo(vLote, QryAvesBox.FieldByName('Nro_Box').AsInteger,  0,  Qtd_Insere, vData, 'M');
        Qtd_Machos := Qtd_Machos - Qtd_Insere;
        Next;
      end;

  QryAvesBox.Filter := ' Femeas > 0 ';
  ContBoxF := 0;
  QryAvesBox.First;
  with QryAvesBox do
    while not Eof do
      begin
        Inc(ContBoxF);
        if Qtd_Femeas <= 0 then Break;
        if  (ContBoxF <> RecordCount) and (Qtd_Femeas > FieldByName('Femeas').AsInteger)
            then Qtd_Insere := FieldByName('Femeas').AsInteger
            else Qtd_Insere := Qtd_Femeas;
        InsereSaldo(vLote, FieldByName('Nro_Box').AsInteger,  Qtd_Insere, 0, vData, 'F');
        Qtd_Femeas := Qtd_Femeas - Qtd_Insere;
        Next;
      end;

  // insere Aves que nao possuem box
  QryAvesBox.Filter := '';
  QryAvesBox.Last;
  with QryAvesBox do
    begin
      if RecordCount > 0 then
        begin
          if ContBoxM = 0 then InsereSaldo(vLote, FieldByName('Nro_Box').AsInteger,  0,  Qtd_Machos, vData, 'M');
          if ContBoxF = 0 then InsereSaldo(vLote, FieldByName('Nro_Box').AsInteger,  Qtd_Femeas, 0, vData, 'F');
        end
      else
        begin
          InsereSaldo(vLote, 1,  0,  Qtd_Machos, vData, 'M');
          InsereSaldo(vLote, 1,  Qtd_Femeas,  0, vData, 'F');
        end;
    end;
end;

procedure TFLotes.spdBoxClick(Sender: TObject);
begin
  inherited;
  case rdbTipoPesagem.ItemIndex of
    0 : begin
          // verifica se existe aves machos e fêmeas para distribuição


          // adiciona os saldos na tabela
          if vGerarSaldo then
            begin
              // gera saldo diario inicial do lote
              FDistribuicaoBox.qrySaldos.Close;
              FDistribuicaoBox.qrySaldos.Open;
              InsereSaldoDiario(0, 0, cedQtd_Inic_Fem.AsInteger, detDat_Aloj_Inicial.Date, edtCod_Local.Text, edtCod_Granja.Text, edtCod_Grupo.Text, edtCod_Galinheiro.Text);
            end;
        end;
    1 : begin
          // gera saldo diario inicial do lote
          if vGerarSaldo then
            begin
              FDistribuicaoBox.qrySaldos.Close;
              FDistribuicaoBox.qrySaldos.Open;

              FDistribuicaoBox.vInsert := true;

              FDistribuicaoBox.qryListaBox.close;
              FDistribuicaoBox.qryListaBox.ParamByName('cod_Local').AsString := edtCod_Local.Text;
              FDistribuicaoBox.qryListaBox.ParamByName('cod_Granja').AsString := edtCod_Granja.Text;
              FDistribuicaoBox.qryListaBox.ParamByName('cod_Grupo').AsString := edtCod_Grupo.Text;
              FDistribuicaoBox.qryListaBox.ParamByName('cod_galinheiro').AsString := edtCod_Galinheiro.Text;
              FDistribuicaoBox.qryListaBox.open;

              while not FDistribuicaoBox.qryListaBox.eof do
              begin
                 FDistribuicaoBox.qrySaldos.append;
                 FDistribuicaoBox.qrySaldosNRO_BOX.asinteger := FDistribuicaoBox.qryListaBox.fieldbyname('nro_box').asinteger;
                 FDistribuicaoBox.qrySaldos.post;

                 FDistribuicaoBox.qryListaBox.next;
              end;
              FDistribuicaoBox.qrySaldos.SortOnFields('NRO_BOX');
              FDistribuicaoBox.vInsert := false;

            end;
        end;
  end;
  if FDistribuicaoBox.ShowModal = mrOk then
    begin
      cedQtd_Inic_Fem.Text := FDistribuicaoBox.lblFemeas.Caption;

    end;
  vGerarSaldo := False;
end;

procedure TFLotes.cedQtd_Inic_FemChange(Sender: TObject);
begin
  inherited;
  cedQtd_Inic_FemExit(nil);
  vGerarSaldo := True;
end;

procedure TFLotes.cedcodParceiroChange(Sender: TObject);
begin
  inherited;
  if Length(TEdit(Sender).Text) = (TEdit(Sender).MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFLotes.spiAjustarIdadeClick(Sender: TObject);
begin
  inherited;
   try
      FMenu.dbsManejo.StartTransaction;

      with qryAjustarIdade do
  begin
     ParamByName('cod_Lote_num').AsInteger := QryConsultaCOD_LOTE_NUM.asinteger;
     ExecSQL;
  end;


      FMenu.dbsManejo.Commit;
      MessageDlg('Realize os Fechamentos Semanais!', mtInformation, [mbOK], 0);
  except
      FMenu.dbsManejo.Rollback;
      Application.HandleException(qryCopiaManPla);
  end;
  



end;

procedure TFLotes.PlanejarClick(Sender: TObject);
begin
  inherited;
  try
      FMenu.dbsManejo.StartTransaction;

      qryCopiaManPla.CLOSE;
      qryCopiaManPla.parambyname('cod_lote_num').asinteger := QryConsultaCOD_LOTE_NUM.asinteger;
      qryCopiaManPla.EXECSQL;


      FMenu.dbsManejo.Commit;
  except
      FMenu.dbsManejo.Rollback;
      Application.HandleException(qryCopiaManPla);
  end;
end;



Procedure TFLotes.CompletarGalpao(vLT : integer);
var
  vSelect , vCampos ,  vWhere : string;
begin

     vSelect := 'Update avfslot1 ';
     vCampos := ' IDADE_ALOJAMENTO = :IDADE_ALOJAMENTO ';
     vWhere  := 'Cod_Lote_Num = :Cod_Lote_Num ';
     UpdateDados(QryOperacao, vSelect, vCampos, vWhere);
     with QryOperacao do
      begin
       ParamByName('Cod_Lote_Num').AsInteger := vLT;
       ParamByName('IDADE_ALOJAMENTO').AsInteger        := cedIdadeAloj.asinteger;
       ExecSQL;
     end;

     vSelect := 'Update avfsdat1 ';
     vCampos := 'Idade = idade  + (:Idade - ( select min(x.idade) from avfsdat1 x where x.cod_lote_num = :cod_lote_num )   )  ';
     vWhere  := 'Cod_Lote_Num = :Cod_Lote_Num ';
     UpdateDados(QryOperacao, vSelect, vCampos, vWhere);
     with QryOperacao do
     begin
        ParamByName('Cod_Lote_Num').AsInteger := vLT;
        ParamByName('Idade').AsInteger        := cedIdadeAloj.asinteger;
        ExecSQL;
     end;

    

end;

procedure TFLotes.Button1Click(Sender: TObject);
begin
  inherited;
   with qryImportar do
  begin
     Close;
     sql.strings[6]  := ''''+edtNro_Lote.text+'''';
     sql.strings[10] := ''''+Edit1.text+'''';
     sql.strings[14] := inttostr(cedCod_Lote_Num.AsInteger);
     ExecSQL;
  end;
end;

end.

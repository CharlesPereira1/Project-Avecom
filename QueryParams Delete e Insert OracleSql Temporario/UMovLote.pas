{*******************************************************************************}
{                          Avecom Sistemas                                      }
{*******************************************************************************}
{                                                                               }
{ Programa:    UBox.pas                                                         }
{ Objetivo:    Permitir cadastrar os movimentos de box.                         }
{ Histórico de Alterações:                                                      }
{                                                                               }
{ Data         Descrição                                         Autor          }
{                                                                               }
{*******************************************************************************}
unit UMovLote;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPai, Menus, SpeedBar, ExtCtrls, StdCtrls, Mask, Db, DBTables, Grids,
  DBGrids, ToolEdit, CurrEdit, ComCtrls, RxGrdCpt, Tabs, DBCtrls, Buttons,
  RxMemDS,math;

type
  TListaColetas = Set of 1..255;
  TFMovLote = class(TForm)
    QryBusca: TQuery;
    QryOperacao: TQuery;
    QryLotes: TQuery;
    dtsQryLotes: TDataSource;
    QrySaldoLoteDataAnterior: TQuery;
    QryTransfAlojamento: TQuery;
    ntbPaginas: TNotebook;
    Panel1: TPanel;
    QryCausa: TQuery;
    dtsQryCausa: TDataSource;
    dtsOcorrencias: TDataSource;
    Label8: TLabel;
    Label1: TLabel;
    cedCod_Lote_Num: TCurrencyEdit;
    dlcLotes: TDBLookupComboBox;
    detDat_Movto: TDateEdit;
    btnBox: TBitBtn;
    dtsMacho: TDataSource;
    dtsFemea: TDataSource;
    qryOcoOriginal: TQuery;
    QryCorrigeSaldoDiarioPosteriores: TQuery;
    qryBoxOriginal: TQuery;
    qryBoxAtual: TQuery;
    ppmPrincipal: TPopupMenu;
    Adicionar1: TMenuItem;
    Modificar1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Informaes1: TMenuItem;
    Ajuda1: TMenuItem;
    Sada1: TMenuItem;
    dtsIdadeEndereco: TDataSource;
    QryIdadeEndereco: TQuery;
    Panel4: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label18: TLabel;
    DBText3: TDBText;
    qrySaldoOriginal: TQuery;
    qryOcoAtual: TQuery;
    RxFemea: TRxMemoryData;
    RxFemeaNRO_BOX: TIntegerField;
    RxFemeaCOD_LOTE_NUM: TIntegerField;
    RxFemeaDAT_MOVTO: TDateTimeField;
    RxFemeasexo_ave: TStringField;
    RxFemeaqtd_morte: TIntegerField;
    RxFemeaqtd_elimin: TIntegerField;
    RxFemeaqtd_refugo: TIntegerField;
    RxFemeaqtd_descarte: TIntegerField;
    RxFemeaqtd_transf: TIntegerField;
    RxFemeaqtd_difer: TIntegerField;
    RxFemeaqtd_saldo: TIntegerField;
    RxFemeaSaldo: TIntegerField;
    RxFemeaDiferenca: TIntegerField;
    RxOcorrencia: TRxMemoryData;
    RxOcorrenciaCOD_REGISTRO: TAutoIncField;
    RxOcorrenciaDAT_MOVTO: TDateTimeField;
    RxOcorrenciaCOD_LOTE_NUM: TIntegerField;
    RxOcorrenciaqtd_morte_macho: TIntegerField;
    RxOcorrenciaCOD_CAUSA: TIntegerField;
    RxOcorrenciaqtd_morte_femea: TIntegerField;
    RxOcorrenciaqtd_elimin_macho: TIntegerField;
    RxOcorrenciaqtd_elimin_femea: TIntegerField;
    RxOcorrenciaqtd_refugo_macho: TIntegerField;
    RxOcorrenciaqtd_refugo_femea: TIntegerField;
    RxOcorrenciaqtd_descarte_macho: TIntegerField;
    RxOcorrenciaqtd_descarte_femea: TIntegerField;
    RxAtualizaSda: TRxMemoryData;
    RxAtualizaSdaNRO_SEQ: TIntegerField;
    RxAtualizaSdaDATA: TDateTimeField;
    RxAtualizaSdaCOD_LOTE_NUM: TIntegerField;
    RxAtualizaSdaNRO_BOX: TIntegerField;
    RxAtualizaSdaflg_box: TBooleanField;
    RxAtualizaSdaqtd_machos: TIntegerField;
    RxAtualizaSdaqtd_femeas: TIntegerField;
    RxFemeapode_mudar_nro_box: TBooleanField;
    qryConsulta: TQuery;
    Consulta1: TMenuItem;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    dtsConsulta: TDataSource;
    qryConsultanro_box: TIntegerField;
    qryConsultacod_lote_num: TIntegerField;
    qryConsultadat_movto: TDateTimeField;
    qryConsultasexo_ave: TStringField;
    qryConsultaqtd_morte: TIntegerField;
    qryConsultaqtd_elimin: TIntegerField;
    qryConsultaqtd_refugo: TIntegerField;
    qryConsultaqtd_transf: TIntegerField;
    qryConsultaqtd_difer: TIntegerField;
    qryConsultaqtd_descarte: TIntegerField;
    DBGrid2: TDBGrid;
    qerSubConsulta: TQuery;
    dtsSubcons: TDataSource;
    BitBtn1: TBitBtn;
    Voltar1: TMenuItem;
    RxFemealado: TStringField;
    RxFemeaCATEGORIA: TStringField;
    RxAtualizaSdaCATEGORIA: TStringField;
    RxAtualizaSdalado: TStringField;
    QryTransfAlojamento2: TQuery;
    QryTransfAlojamento2COD_LOTE_NUM: TFloatField;
    QryTransfAlojamento2MACHOS: TFloatField;
    QryTransfAlojamento2FEMEAS: TFloatField;
    QryTransfAlojamentoCOD_LOTE_NUM: TIntegerField;
    QryTransfAlojamentoMACHOS: TFloatField;
    QryTransfAlojamentoFEMEAS: TFloatField;
    RxOcorrenciaCAUSA: TStringField;
    RxOcorrenciabox: TIntegerField;
    ntbPag: TPageControl;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    dlcCausa: TDBLookupComboBox;
    cedQtd_Morte_Femea: TCurrencyEdit;
    cedQtd_Elimin_Femea: TCurrencyEdit;
    cedQtd_Refugo_Femea: TCurrencyEdit;
    cedQtd_Descarte_Femea: TCurrencyEdit;
    btnAdicionar: TBitBtn;
    btnExcluir: TBitBtn;
    dgrOcorrencia: TDBGrid;
    cedBox: TCurrencyEdit;
    BitBtn3: TBitBtn;
    edtCausa: TEdit;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    lblSaldoFemeaAnterior: TLabel;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    lblFemea: TLabel;
    GroupBox2: TGroupBox;
    Label15: TLabel;
    lblSaldoFemea: TLabel;
    QryRacao: TQuery;
    dtsQryRacao: TDataSource;
    RxColeta: TRxMemoryData;
    RxColetaNRO_COLETA: TIntegerField;
    RxColetaCOD_LOTE_NUM: TIntegerField;
    RxColetaDAT_MOVTO: TDateTimeField;
    RxColetaqtd_ovos_coleta: TIntegerField;
    RxColetaqtd_ovos_amanhecidos: TIntegerField;
    RxColetaqtd_ovos_trincados: TIntegerField;
    RxColetaqtd_ovos_vazados: TIntegerField;
    RxColetaqtd_ovos_cama: TIntegerField;
    RxColetaqtd_ovos_defeituosos: TIntegerField;
    RxColetaqtd_ovos_ninho: TIntegerField;
    RxColetaqtd_ovos_pequenos: TIntegerField;
    RxColetaqtd_ovos_aprov: TIntegerField;
    RxColetaqtd_ovos_desc_cama: TIntegerField;
    RxColetaqtd_ovos_super: TIntegerField;
    RxColetahor_coleta: TDateTimeField;
    dtsQryColeta: TDataSource;
    RxColetapeso_ovo: TFloatField;
    btnConfirmar: TBitBtn;
    btnFechar: TBitBtn;
    QryBuscaSda: TQuery;
    QryBuscaPercentual: TQuery;
    QryAtualizaInicioProducao: TQuery;
    HeaderControl1: THeaderControl;
    dgrFemea: TDBGrid;
    RxColetacaixa_aprov: TIntegerField;
    RxColetaband_aprov: TIntegerField;
    RxColetaband_cama: TIntegerField;
    RxColetacaixa_cama: TIntegerField;
    RxColetaunid_aprov: TIntegerField;
    RxColetaunid_cama: TIntegerField;
    qryAtualizaSDA: TQuery;
    GroupBox4: TGroupBox;
    Label34: TLabel;
    Label36: TLabel;
    RxFemeaidade_info: TIntegerField;
    RxFemeadif_idade: TIntegerField;
    qryLimpaTabelaIdade: TQuery;
    qryGravaIdadeBox: TQuery;
    qryAjustar: TQuery;
    qryDiasAjustar: TQuery;
    qryDiasAjustarNRO_SEQ: TIntegerField;
    qryDiasAjustarDATA: TDateTimeField;
    qryDiasAjustarCOD_LOTE_NUM: TIntegerField;
    qryDiasAjustarNRO_BOX: TIntegerField;
    qryDiasAjustarFLG_BOX: TSmallintField;
    qryDiasAjustarQTD_MACHOS: TIntegerField;
    qryDiasAjustarQTD_FEMEAS: TIntegerField;
    qryDiasAjustarCATEGORIA: TStringField;
    qryDiasAjustarLADO: TStringField;
    qryDiasAjustarQTD_MAC: TFloatField;
    qryDiasAjustarQTD_FEM: TFloatField;
    qryDiasAjustarQTD_MORTE_MAC: TFloatField;
    qryDiasAjustarQTD_MORTE_FEM: TFloatField;
    BitBtn2: TBitBtn;
    qryLimpaSda: TQuery;
    qryLimpaSda2: TQuery;
    RxColetacaixa_Bl: TIntegerField;
    qryDistribuicao: TQuery;
    qryDistribuicaoDAT_MOVTO: TDateTimeField;
    qryDistribuicaoQTD_TRANSF_MACHO: TFloatField;
    qryDistribuicaoQTD_TRANSF_FEMEA: TFloatField;
    qryDistribuicaoQTD_DIST_MACHO: TFloatField;
    qryDistribuicaoQTD_DIST_FEMEA: TFloatField;
    TabSheet1: TTabSheet;
    Panel7: TPanel;
    Label5: TLabel;
    Label13: TLabel;
    Label20: TLabel;
    cedAmoPesoMedio: TCurrencyEdit;
    cedAmoUniformidade: TCurrencyEdit;
    cedAmoCV: TCurrencyEdit;
    gpbPesoAmostra: TGroupBox;
    Label22: TLabel;
    Label6: TLabel;
    Label25: TLabel;
    cedIntervalo: TCurrencyEdit;
    cedPesoFinal: TCurrencyEdit;
    cedPesoInicial: TCurrencyEdit;
    BitBtn6: TBitBtn;
    stgAmostra: TStringGrid;
    Panel8: TPanel;
    Label41: TLabel;
    spdBoxAdicionaPeso: TSpeedButton;
    spdBoxRemovePeso: TSpeedButton;
    cedPesoAmostra: TCurrencyEdit;
    Panel9: TPanel;
    Label42: TLabel;
    spdBoxAdicionaBox: TSpeedButton;
    spdBoxRemoveBox: TSpeedButton;
    cedBoxAmostra: TCurrencyEdit;
    BitBtn7: TBitBtn;
    qryBoxP: TQuery;
    cedCod_Racao: TCurrencyEdit;
    cedQtd_Cons_Femea: TCurrencyEdit;
    dlcRacao: TDBLookupComboBox;
    Label21: TLabel;
    dgrColeta: TDBGrid;
    resumoprdo: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    cedPeso_Ovo: TCurrencyEdit;
    cedTot_Ovos_Dia: TCurrencyEdit;
    BitBtn4: TBitBtn;
    Label30: TLabel;
    cedOvoCaixa: TCurrencyEdit;
    cedOvoBand: TCurrencyEdit;
    Label29: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cedCod_Lote_NumChange(Sender: TObject);
    procedure cedCod_Lote_NumExit(Sender: TObject);
    procedure dlcLotesCloseUp(Sender: TObject);
    procedure dlcLotesDropDown(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnBoxClick(Sender: TObject);
    procedure QryMovtosBeforeInsert(DataSet: TDataSet);
    procedure QryMovtosBeforeEdit(DataSet: TDataSet);
    procedure dlcCausaCloseUp(Sender: TObject);
    procedure dlcCausaDropDown(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure detDat_MovtoChange(Sender: TObject);
    procedure dgrFemeaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dgrOcorrenciaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Adicionar1Click(Sender: TObject);
    procedure Modificar1Click(Sender: TObject);
    procedure detDat_MovtoExit(Sender: TObject);
    procedure RxFemeaAfterClose(DataSet: TDataSet);
    procedure RxFemeaAfterDelete(DataSet: TDataSet);
    procedure RxFemeaAfterPost(DataSet: TDataSet);
    procedure RxFemeaBeforeDelete(DataSet: TDataSet);
    procedure RxFemeaBeforePost(DataSet: TDataSet);
    procedure RxFemeaCalcFields(DataSet: TDataSet);
    procedure RxFemeaNewRecord(DataSet: TDataSet);
    procedure RxMachoNewRecord(DataSet: TDataSet);
    procedure RxMachoAfterClose(DataSet: TDataSet);
    procedure RxMachoAfterDelete(DataSet: TDataSet);
    procedure RxMachoAfterPost(DataSet: TDataSet);
    procedure RxMachoBeforeDelete(DataSet: TDataSet);
    procedure RxMachoBeforePost(DataSet: TDataSet);
    procedure RxMachoCalcFields(DataSet: TDataSet);
    procedure RxAtualizaSdaNewRecord(DataSet: TDataSet);
    procedure RxFemeaNRO_BOXChange(Sender: TField);
    procedure RxFemeaNRO_BOXValidate(Sender: TField);
    procedure Consulta1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure edtCausaExit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure RxColetaBeforePost(DataSet: TDataSet);
    procedure RxColetaCalcFields(DataSet: TDataSet);
    procedure dlcRacaoCloseUp(Sender: TObject);
    procedure RxColetaAfterDelete(DataSet: TDataSet);
    procedure dlcRacaoMacCloseUp(Sender: TObject);
    procedure medHor_Fim_MKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure cedPesoInicialChange(Sender: TObject);
    procedure cedPesoFinalChange(Sender: TObject);
    procedure cedIntervaloChange(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure spdBoxAdicionaBoxClick(Sender: TObject);
    procedure spdBoxRemoveBoxClick(Sender: TObject);
    procedure spdBoxAdicionaPesoClick(Sender: TObject);
    procedure spdBoxRemovePesoClick(Sender: TObject);
    procedure cedCod_RacaoExit(Sender: TObject);
  private
    function LimpaCampos : Boolean;
    function SaldoLoteDataAnterior(vLote: Integer; vData: TDateTime): Boolean;
    function SaldoTransfAlojamento(vLote: Integer; vData: TDateTime): Boolean;
    function BuscaOcorrenciaCadastradas(vLote: Integer; vData: TDateTime): Boolean;
    function VerificaCampos: Boolean;
    function ExisteCausaTodasSaidas:Boolean;
    function ExisteSaldoNegativo:Boolean;
    function ExisteBoxIguais:Boolean;
    function OpcoesCausa(Morte, Eliminacao, Refugo, Descarte, Venda: Boolean; Sexo: String): Boolean;
    function AtualizaSaldoMovimentoPosteriores: Boolean;
    procedure DesativaTabela;
    procedure GravaDadosMovimentoBox;
    procedure GravaDadosSaldoDiariodeAves;
    procedure GravaDadosOcorrencias;
    procedure AtualizaSaldoDeTransferencia;
    procedure LimpaCamposDeOcorrencia;
    function VerificaCamposRacao: Boolean;

    function SomaTotalOvos(RxColeta : TRxMemoryData): Integer;
    function PesoOvos(RxColeta : TRxMemoryData): real;

    function BuscaMovimentoBoxExistente(vLote: integer; vDataMovimento: TDateTime):Boolean;
    function BuscaSaldoExistente(vLote: integer; vDataMovimento: TDateTime):boolean;    
    function VerificaAlteracao(vLote: integer; vDataMovimento: TDateTime):Boolean;
    procedure PreencheMovimento();
    procedure HabilitarControles(vTab:integer);
    function AdicionaMovto(vData : TDateTime; vLote : Integer; vOvos, vPeso : Integer; vFertilidade, vPeso_Espec : Real): Boolean;
    function AdicionaColetaOvos: Boolean;
    function BuscaSaldoDiario(vLote: Integer; vData: TDateTime): Boolean;
    function BuscaPercentual(vLote: Integer): Integer;
    function AcertoProducao(vLote, vIdade, vMachos, vFemeas: Integer): Boolean;
    function AtualizaInicioProducao(vLote: Integer): Boolean;
    function VerificaCamposProd: Boolean;
    function VerificaColetas: Boolean;
    { Private declarations }
  public
    { Public declarations }
    procedure Exibe;
    procedure GeraGridAmostra;
    procedure AtualizaCalculoGalpao;
    function ExisteAmostraBox(vBox : Integer):Integer;
    function ExisteAmostraPeso(vPeso : Currency):Integer;
    procedure CalculaDadosAmostra(var vPesoM, vUnif, vCV: Double; vFaixaUnif, vBox: Integer);
    function E_NumeroInteiro(vStr : String):Boolean;
    procedure MontaAmostra(Dat_Movto : TDateTime; Cod_Lote_Num : Integer; Sexo_Ave : String);
  end;

var
  FMovLote               : TFMovLote;
  vEsc_Balanca          : Double;
  vAvesTranMacho     : Integer;
  vAvesTranFemea     : Integer;
  ListaColetas           : TListaColetas;
  QryNegativo        : TQuery;
  vNroSeq            : Integer;
  vAvesFemeas ,vAvesMachos           : Integer;
  vPode    ,
  vDiaAberto          : boolean;
  vBxF,vBxM :integer;
  ModoUpdate            : Boolean;

    vExistePerda  ,vGridGerado         : Boolean;
    vAux                  : integer;

implementation

uses Funcoes, UMenu, UMensagens, USaldoNegativos;

{$R *.DFM}

procedure TFMovLote.Exibe;
begin
  Screen.Cursor := crHourGlass; // Cursor de Espera
  if FMovLote = nil then
      FMovLote := TFMovLote.Create(Self); // Cria o Formulario
      
  FMovLote.QryLotes.close;
  FMovLote.QryLotes.parambyname('usuario').asstring := FMenu.Empresa.Usuario;
  FMovLote.QryLotes.Open;

  FMovLote.QryCausa.Open;
  if FPai.VerificaOpcao(FMovLote.Tag, FMovLote) then // Verifica as Permissões
    begin
      FMovLote.LimpaCampos;
      FMovLote.Show;
      FMovLote.WindowState := wsMaximized;  {O form esta minimizado}
    end;
  Screen.Cursor := crDefault; // Cursor Normal
end;

// Função para Limpar todos os campos
function TFMovLote.LimpaCampos : Boolean;
begin
//  detDat_Movto.Date := FMenu.Parametros.vData;
//  cedCod_Lote_Num.AsInteger := FMenu.Parametros.vLote;
  DesativaTabela;
  cedCod_Lote_NumExit(FMovLote);
  OpcoesCausa(False, False, False, False, False, 'A');
  vDiaAberto := false;

  QryRacao.close;
  QryRacao.open;


  cedCod_Racao.Clear;
  dlcRacao.KeyValue := 0;



  cedQtd_Cons_Femea.Clear;



  cedTot_Ovos_Dia.Clear;

  cedPeso_Ovo.Clear;
  RxColeta.close;
  RxColeta.active := true;

  vPode := false;
  RxColeta.append;
  RxColetaNRO_COLETA.asinteger := 1;
  RxColeta.post;
  vPode := true;




  Result := True;
end;

procedure TFMovLote.LimpaCamposDeOcorrencia;
begin
  edtCausa.Clear;

  cedQtd_Morte_Femea.Clear;

  cedQtd_Elimin_Femea.Clear;

  cedQtd_Refugo_Femea.Clear;

  cedQtd_Descarte_Femea.Clear;
end;

function TFMovLote.SaldoLoteDataAnterior(vLote: Integer; vData: TDateTime): Boolean;
begin
  with QrySaldoLoteDataAnterior do
    begin
      Close;
      ParamByName('Lote').AsInteger := vLote;
      ParamByName('Data').AsDate := vData;
      Open;
      //lblSaldoMachoAnterior.Caption := IntToStr(FieldByName('SaldoMacho').AsInteger);
      lblSaldoFemeaAnterior.Caption := IntToStr(FieldByName('SaldoFemea').AsInteger);
      Close;
    end;
  Result := True;
end;

function TFMovLote.BuscaOcorrenciaCadastradas(vLote: Integer; vData: TDateTime): Boolean;
begin
  Result := False;
  // Busca os movimentos atuais do banco de dados
  RxOcorrencia.Close;
  RxOcorrencia.Open;
  with qryOcoOriginal do
    begin
      Close;
      ParamByName('Lote').AsInteger := vLote;
      ParamByName('Data').AsDate := vData;
      Open;
      while not Eof do
         begin
           RxOcorrencia.append;
           RxOcorrencia.edit;
           RxOcorrencia.FieldByName('cod_lote_num').AsInteger := FieldByName('cod_lote_num').AsInteger;
           RxOcorrencia.FieldByName('dat_movto').AsDateTime := FieldByName('dat_movto').AsDateTime;
           RxOcorrencia.FieldByName('cod_causa').AsInteger := FieldByName('cod_causa').AsInteger;
           RxOcorrencia.FieldByName('qtd_morte_macho').AsInteger := FieldByName('qtd_morte_macho').AsInteger;
           RxOcorrencia.FieldByName('qtd_morte_femea').AsInteger := FieldByName('qtd_morte_femea').AsInteger;
           RxOcorrencia.FieldByName('qtd_elimin_macho').AsInteger := FieldByName('qtd_elimin_macho').AsInteger;
           RxOcorrencia.FieldByName('qtd_elimin_femea').AsInteger := FieldByName('qtd_elimin_femea').AsInteger;
           RxOcorrencia.FieldByName('qtd_refugo_macho').AsInteger := FieldByName('qtd_refugo_macho').AsInteger;
           RxOcorrencia.FieldByName('qtd_refugo_femea').AsInteger := FieldByName('qtd_refugo_femea').AsInteger;
           RxOcorrencia.FieldByName('qtd_descarte_macho').AsInteger := FieldByName('qtd_descarte_macho').AsInteger;
           RxOcorrencia.FieldByName('qtd_descarte_femea').AsInteger := FieldByName('qtd_descarte_femea').AsInteger;
           RxOcorrenciaCAUSA.ASSTRING :=  FieldByName('CAUSA').AsSTRING;
           RxOcorrenciabox.ASinteger :=  FieldByName('nro_box').Asinteger;

           RxOcorrencia.Post;
           Next;
         end;
    end;
end;

function TFMovLote.SaldoTransfAlojamento(vLote: Integer; vData: TDateTime): Boolean;
begin
  with QryTransfAlojamento2 do
    begin
      Close;
      ParamByName('Lote').AsInteger := vLote;
      ParamByName('Data').AsDate := vData;
      Open;
    end;

  with QryTransfAlojamento do
    begin
      Close;
      ParamByName('Lote').AsInteger := vLote;
      ParamByName('Data').AsDate := vData;
      Open;
    end;


    //lblMacho.Caption := IntToStr(QryTransfAlojamento.FieldByName('Machos').AsInteger );
    lblFemea.Caption := IntToStr(QryTransfAlojamento.FieldByName('Femeas').AsInteger );

//    Label35.Caption := IntToStr(QryTransfAlojamento2.FieldByName('Machos').AsInteger);
    Label36.Caption := IntToStr(QryTransfAlojamento2.FieldByName('Femeas').AsInteger);


    vAvesTranMacho := QryTransfAlojamento.FieldByName('Machos').AsInteger ;
    vAvesTranFemea := QryTransfAlojamento.FieldByName('Femeas').AsInteger ;
  Result := True;
end;

// Função para verificar se os campos estão preenchidos
function TFMovLote.VerificaCampos: Boolean;
begin
  Result := False;

  // data do movimento e valida
  if VerificaData(detDat_Movto.Text) = 0 then
    begin
      MessageDlg(Msg00195, mtInformation, [mbOK], 0);
      if detDat_Movto.Enabled then detDat_Movto.SetFocus;
      Exit;
    end;

  if detDat_Movto.date > date  then
    begin
      MessageDlg(Msg00535, mtInformation, [mbOK], 0);
      try if detDat_Movto.Enabled then detDat_Movto.SetFocus; except end;
      Exit;
    end;

  // lote esta cadastrado
  if not(BuscaRegistro(QryBusca, 'Select * From avfslot1 ',
                                 'Where Cod_Lote_Num = ' + IntToStr(cedCod_Lote_Num.AsInteger)))
  then
    begin
      MessageDlg(Msg00122, mtInformation, [mbOK], 0);
      if cedCod_Lote_Num.Enabled then cedCod_Lote_Num.SetFocus;
      Exit;
    end;

  // lote esta ativo
  if QryBusca.FieldByName('Dat_Efet_Desc').AsDateTime <> StrToDate('01/01/1900') then
    begin
      MessageDlg(Msg00197, mtInformation, [mbOK], 0);
      if cedCod_Lote_Num.Enabled then cedCod_Lote_Num.SetFocus;
      Exit;
    end;

  // lote Agrupado
  if UpperCase(QryBusca.FieldByName('Ide_Espec').AsString) = 'J' then
    begin
      MessageDlg(Msg00381, mtInformation, [mbOK], 0);
      if cedCod_Lote_Num.Enabled then cedCod_Lote_Num.SetFocus;
      Exit;
    end;

  // verifica se o Lote é lote de terceiros
  if Not ConvertIntToBoo(QryBusca.FieldByName('lote_proprio').Asinteger)  then
    begin
      MessageDlg(Msg00502, mtInformation, [mbOK], 0);
      if cedCod_Lote_Num.Enabled then cedCod_Lote_Num.SetFocus;
      Exit;
    end;

 

  // data do movto >  data do alojamento do lote
  if (QryBusca.FieldByName('Dat_Nasc_Media').AsDateTime = strToDate('01/01/1900'))
     and (detDat_Movto.Date < QryBusca.FieldByName('Dat_Aloj_Inicial').AsDateTime) then
    begin
      MessageDlg(Msg00062, mtInformation, [mbOK], 0);
      if detDat_Movto.Enabled then detDat_Movto.SetFocus;
      Exit;
    end;

   // utilizado para inserir o sda
  vNroSeq := Trunc(detDat_Movto.Date - QryBusca.FieldByName('Dat_Aloj_Inicial').AsDateTime);

  // Existe idade para a data de movto
  if not VerificaExisteIdadeParaData ( QryBusca, cedCod_Lote_Num.AsInteger, detDat_Movto.Date) then
    begin
      MessageDlg(Msg00382, mtInformation, [mbOK], 0);
      if detDat_Movto.Enabled then detDat_Movto.SetFocus;
      Exit;
    end;

  Result := True;
end;

function TFMovLote.ExisteSaldoNegativo():Boolean;
begin
  Result:= False;



  if Result then
     begin
       MessageDlg(Format(Msg00442,['Macho']), mtInformation, [mbOK], 0);
       Exit;
     end;

  with RxFemea do
    begin
      First;
      while not Eof do
        begin
          Result := (Result) or (FieldByName('Saldo').AsInteger < 0);
          Next;
        end
    end;

  if Result then
     MessageDlg(Format(Msg00442,['Fêmea']), mtInformation, [mbOK], 0);
end;

function TFMovLote.ExisteBoxIguais:Boolean;
var
  Box, Contador : integer;
  BookVolta : TBookmark;
begin
  Result := True;



  with RxFemea do
    begin
      First;
      // procura por box iguais
      while not Eof do
        begin
          Box := FieldByName('Nro_Box').AsInteger;
          BookVolta := GetBookmark;
          First;
          Contador := 0;
          while not Eof do
            begin
              if Box = FieldByName('Nro_Box').AsInteger then
                 inc(Contador);
              Next
            end;
          if Contador > 1 then
             begin   // Dois ou mais registro para o mesmo box
               MessageDlg(Format(Msg00439,['Fêmea']), mtInformation, [mbOK], 0);
               if dgrFemea.Enabled then dgrFemea.SetFocus;
               GotoBookmark(BookVolta);
               Exit;
             end;
          GotoBookmark(BookVolta);
          Next;
        end;
    end;
  Result := False;
end;

function TFMovLote.ExisteCausaTodasSaidas():Boolean;
var
  vMorte, vOcoMorte,
  vElimin, vOcoElimin,
  vRefugo, vOcoRefugo,
  vDescarte, vOcoDescarte : Integer;

begin
  Result:= False;




  if RxOcorrencia.isempty then
  begin




    with RxOcorrencia do
    begin
      append;
      FieldByName('Dat_Movto').AsDateTime         := detDat_Movto.Date;
      FieldByName('Cod_Lote_Num').AsInteger       := cedCod_Lote_Num.AsInteger;
      FieldByName('Cod_Causa').AsInteger          := 27;

      vMorte := 0;
      vElimin := 0;
      vRefugo := 0;
      vDescarte := 0;

      FieldByName('Qtd_Morte_Macho').AsInteger    := vMorte   ;
      FieldByName('Qtd_Elimin_Macho').AsInteger   := vElimin  ;
      FieldByName('Qtd_Refugo_Macho').AsInteger   := vRefugo  ;
      FieldByName('Qtd_Descarte_Macho').AsInteger := vDescarte;


      vMorte := 0;
      vElimin := 0;
      vRefugo := 0;
      vDescarte := 0;
      RxFemea.First;
      while not RxFemea.Eof do
      begin
          vMorte    := vMorte    + RxFemea.FieldByName('Qtd_Morte').AsInteger;
          vElimin   := vElimin   + RxFemea.FieldByName('Qtd_Elimin').AsInteger;
          vRefugo   := vRefugo   + RxFemea.FieldByName('Qtd_Refugo').AsInteger;
          vDescarte := vDescarte + RxFemea.FieldByName('Qtd_Descarte').AsInteger;
          RxFemea.Next;
      end;
      FieldByName('Qtd_Morte_Femea').AsInteger    := vMorte    ;
      FieldByName('Qtd_Elimin_Femea').AsInteger   := vElimin   ;
      FieldByName('Qtd_Refugo_Femea').AsInteger   := vRefugo   ;
      FieldByName('Qtd_Descarte_Femea').AsInteger := vDescarte ;

      post;

    end;
  end;



  /// MACHOS
  vMorte := 0;
  vElimin := 0;
  vRefugo := 0;
  vDescarte := 0;
  vOcoMorte := 0;
  vOcoElimin := 0;
  vOcoRefugo := 0;
  vOcoDescarte := 0;


  with RxOcorrencia do
    begin
      First;
      while not Eof do
        begin
          vOcoMorte    := vOcoMorte    + FieldByName('Qtd_Morte_Macho').AsInteger;
          vOcoElimin   := vOcoElimin   + FieldByName('Qtd_Elimin_Macho').AsInteger;
          vOcoRefugo   := vOcoRefugo   + FieldByName('Qtd_Refugo_Macho').AsInteger;
          vOcoDescarte := vOcoDescarte + FieldByName('Qtd_Descarte_Macho').AsInteger;
          Next;
        end
    end;

  if vMorte <> vOcoMorte then
    begin
      MessageDlg(Format(Msg00434,['Mortes de Machos']), mtInformation, [mbOK], 0);
      Exit;
    end;
  if vElimin <> vOcoElimin then
    begin
      MessageDlg(Format(Msg00434,['Eliminações de Machos']), mtInformation, [mbOK], 0);
      Exit;
    end;
  if vRefugo <> vOcoRefugo then
    begin
      MessageDlg(Format(Msg00434,['Refugos de Machos']), mtInformation, [mbOK], 0);
      Exit;
    end;
  if vDescarte <> vOcoDescarte then
    begin
      MessageDlg(Format(Msg00434,['Descartes de Machos']), mtInformation, [mbOK], 0);
      Exit;
    end;

 /// FEMEAS
  vMorte := 0;
  vElimin := 0;
  vRefugo := 0;
  vDescarte := 0;
  vOcoMorte := 0;
  vOcoElimin := 0;
  vOcoRefugo := 0;
  vOcoDescarte := 0;
  with RxFemea do
    begin
      First;
      while not Eof do
        begin
          vMorte    := vMorte    + FieldByName('Qtd_Morte').AsInteger;
          vElimin   := vElimin   + FieldByName('Qtd_Elimin').AsInteger;
          vRefugo   := vRefugo   + FieldByName('Qtd_Refugo').AsInteger;
          vDescarte := vDescarte + FieldByName('Qtd_Descarte').AsInteger;
          Next;
        end
    end;

  with RxOcorrencia do
    begin
      First;
      while not Eof do
        begin
          vOcoMorte    := vOcoMorte    + FieldByName('Qtd_Morte_Femea').AsInteger;
          vOcoElimin   := vOcoElimin   + FieldByName('Qtd_Elimin_Femea').AsInteger;
          vOcoRefugo   := vOcoRefugo   + FieldByName('Qtd_Refugo_Femea').AsInteger;
          vOcoDescarte := vOcoDescarte + FieldByName('Qtd_Descarte_Femea').AsInteger;
          Next;
        end
    end;

  if vMorte <> vOcoMorte then
    begin
      MessageDlg(Format(Msg00434,['Mortes de Fêmeas']), mtInformation, [mbOK], 0);
      Exit;
    end;
  if vElimin <> vOcoElimin then
    begin
      MessageDlg(Format(Msg00434,['Eliminações de Fêmeas']), mtInformation, [mbOK], 0);
      Exit;
    end;
  if vRefugo <> vOcoRefugo then
    begin
      MessageDlg(Format(Msg00434,['Refugos de Fêmeas']), mtInformation, [mbOK], 0);
      Exit;
    end;
  if vDescarte <> vOcoDescarte then
    begin
      MessageDlg(Format(Msg00434,['Descartes de Fêmeas']), mtInformation, [mbOK], 0);
      Exit;
    end;

  Result := True;
end;

procedure TFMovLote.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if FSaldoNegativos <> nil then
       FSaldoNegativos.Close;
  Action := caFree;     {Fecha o form}
  FMovLote := nil; {Libera o form da memória}
end;

procedure TFMovLote.FormCreate(Sender: TObject);
begin
  inherited;
  SetBounds(0, 0, width, height); // Posição x, y e o Tamanho do Form
end;

procedure TFMovLote.cedCod_Lote_NumChange(Sender: TObject);
begin
  inherited;
  DesativaTabela;
  QryIdadeEndereco.Close;
  detDat_Movto.Date := 0;

  // Está função é usada para realizar o Skip quando o campor for Código
  // Não remover está função
  if Length(cedCod_Lote_Num.Text) = (cedCod_Lote_Num.MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;

end;

procedure TFMovLote.cedCod_Lote_NumExit(Sender: TObject);
begin
  inherited;
  dlcLotes.KeyValue := cedCod_Lote_Num.AsInteger;
  if (detDat_Movto.Date = 0) and (cedCod_Lote_Num.AsInteger > 0)
    then detDat_Movto.Date := BuscaIdadeUltimoMovimento(QryBusca,cedCod_Lote_Num.AsInteger, '', 'avfsmbo1', 'Dat_Movto')+1;
  detDat_MovtoExit(Nil);
end;

procedure TFMovLote.dlcLotesCloseUp(Sender: TObject);
begin
  inherited;
  cedCod_Lote_Num.AsInteger := QryLotes.FieldByName('Cod_Lote_Num').AsInteger;
  cedCod_Lote_Num.SetFocus;
  detDat_MovtoExit(Nil);
end;

procedure TFMovLote.dlcLotesDropDown(Sender: TObject);
begin
  inherited;
  with QryLotes do
    begin
      Close;
      parambyname('usuario').asstring := FMenu.Empresa.Usuario;
      Open;
    end;
end;

procedure TFMovLote.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFMovLote.QryMovtosBeforeInsert(DataSet: TDataSet);
begin
  if not(VerificaCampos) then Abort;
end;

procedure TFMovLote.QryMovtosBeforeEdit(DataSet: TDataSet);
begin
  if not(VerificaCampos) then Abort;
end;

procedure TFMovLote.dlcCausaCloseUp(Sender: TObject);
begin
  edtCausa.text := QryCausa.FieldByName('des_abrev').AsString;
  OpcoesCausa(ConvertIntToBoo(QryCausa.FieldByName('Flg_Morte').Asinteger),
              ConvertIntToBoo(QryCausa.FieldByName('Flg_Eliminacao').Asinteger),
              ConvertIntToBoo(QryCausa.FieldByName('Flg_Refugo').Asinteger),
              ConvertIntToBoo(QryCausa.FieldByName('Flg_Descarte').Asinteger),
              ConvertIntToBoo(QryCausa.FieldByName('Flg_Venda').Asinteger),
              QryCausa.FieldByName('Flg_Sexo').AsString);
  SelectNext(ActiveControl, True, True);
end;

procedure TFMovLote.dlcCausaDropDown(Sender: TObject);
begin
  with QryCausa do
    begin
      Close;
      Open;
    end;
end;

function TFMovLote.OpcoesCausa(Morte, Eliminacao, Refugo, Descarte, Venda: Boolean; Sexo: String): Boolean;
begin
 // cedQtd_Morte_Macho.Clear;
  cedQtd_Morte_Femea.Clear;
 // cedQtd_Morte_Macho.Enabled := (Morte) and ((Sexo = 'M') or (Sexo = 'A'));
  cedQtd_Morte_Femea.Enabled := (Morte) and ((Sexo = 'F') or (Sexo = 'A'));

 // cedQtd_Elimin_Macho.Clear;
  cedQtd_Elimin_Femea.Clear;
//  cedQtd_Elimin_Macho.Enabled := (Eliminacao) and ((Sexo = 'M') or (Sexo = 'A'));
  cedQtd_Elimin_Femea.Enabled := (Eliminacao) and ((Sexo = 'F') or (Sexo = 'A'));

 // cedQtd_Refugo_Macho.Clear;
  cedQtd_Refugo_Femea.Clear;
 // cedQtd_Refugo_Macho.Enabled := (Refugo) and ((Sexo = 'M') or (Sexo = 'A'));
  cedQtd_Refugo_Femea.Enabled := (Refugo) and ((Sexo = 'F') or (Sexo = 'A'));

 // cedQtd_Descarte_Macho.Clear;
  cedQtd_Descarte_Femea.Clear;
//  cedQtd_Descarte_Macho.Enabled := (Descarte) and ((Sexo = 'M') or (Sexo = 'A'));
  cedQtd_Descarte_Femea.Enabled := (Descarte) and ((Sexo = 'F') or (Sexo = 'A'));


 // if cedQtd_Morte_Macho.Enabled then cedQtd_Morte_Macho.setfocus;
  if cedQtd_Morte_Femea.Enabled then cedQtd_Morte_Femea.setfocus;

 // if cedQtd_Elimin_Macho.Enabled then cedQtd_Elimin_Macho.setfocus;
  if cedQtd_Elimin_Femea.Enabled then cedQtd_Elimin_Femea.setfocus;

//  if cedQtd_Refugo_Macho.Enabled then cedQtd_Refugo_Macho.setfocus;
  if cedQtd_Refugo_Femea.Enabled then cedQtd_Refugo_Femea.setfocus;

 // if cedQtd_Descarte_Macho.Enabled then cedQtd_Descarte_Macho.setfocus;
  if cedQtd_Descarte_Femea.Enabled then cedQtd_Descarte_Femea.setfocus;

  Result := True;
end;

procedure TFMovLote.btnAdicionarClick(Sender: TObject);
begin
  if not vDiaAberto then
  begin
    MessageDlg('Dia não aberto!', mtInformation, [mbOK], 0);
    ntbPaginas.PageIndex := 0;
    Exit;
  end;

  if
     (cedQtd_Morte_Femea.AsInteger <= 0) and

     (cedQtd_Elimin_Femea.AsInteger <= 0) and

     (cedQtd_Refugo_Femea.AsInteger <= 0) and

     (cedQtd_Descarte_Femea.AsInteger <= 0)
    then
  begin
    MessageDlg(Msg00268, mtInformation, [mbOK], 0);
    ntbPaginas.PageIndex := 0;
    Exit;
  end;

  with RxOcorrencia do
    begin
      append;
      edit;
      FieldByName('Dat_Movto').AsDateTime         := detDat_Movto.Date;
      FieldByName('Cod_Lote_Num').AsInteger       := cedCod_Lote_Num.AsInteger;
      FieldByName('Cod_Causa').AsInteger          := QryCausa.fieldbyname('cod_causa').AsInteger;
      FieldByName('Qtd_Morte_Macho').AsInteger    := 0;
      FieldByName('Qtd_Morte_Femea').AsInteger    := cedQtd_Morte_Femea.AsInteger;
      FieldByName('Qtd_Elimin_Macho').AsInteger   := 0;
      FieldByName('Qtd_Elimin_Femea').AsInteger   := cedQtd_Elimin_Femea.AsInteger;
      FieldByName('Qtd_Refugo_Macho').AsInteger   := 0;
      FieldByName('Qtd_Refugo_Femea').AsInteger   := cedQtd_Refugo_Femea.AsInteger;
      FieldByName('Qtd_Descarte_Macho').AsInteger := 0;
      FieldByName('Qtd_Descarte_Femea').AsInteger := cedQtd_Descarte_Femea.AsInteger;
      RxOcorrenciaCAUSA.ASSTRING := QryCausa.fieldbyname('des_abrev').Asstring;
      RxOcorrenciabox.asinteger := cedBox.asinteger;
      Post;
    end;
  LimpaCamposDeOcorrencia;
  cedBox.SetFocus;
end;

procedure TFMovLote.btnExcluirClick(Sender: TObject);
begin
  if RxOcorrencia.IsEmpty then
     Exit;

  if MessageDlg(Msg00308, mtConfirmation, [mbYes, mbNo], 0) = mrYes
     then RxOcorrencia.Delete;

end;


function TFMovLote.AtualizaSaldoMovimentoPosteriores: Boolean;
var
  Rec,
  RecCount,
  Progresso : integer;
begin

 Rec := 0;
 RecCount := 0;
 Progresso := FMenu.ggeProgresso.Progress;




 RxFemea.First;
 Rec := 0;
 RecCount := 0;
 Progresso := FMenu.ggeProgresso.Progress;
 while not RxFemea.Eof do
   begin
     inc(RecCount);
     RxFemea.Next;
   end;

 RxFemea.First;
 while not RxFemea.Eof do
   with QryCorrigeSaldoDiarioPosteriores do
     begin
       if RxFemea.FieldByName('Diferenca').AsInteger <> 0 then
          begin
            SQL.STRINGS[14] := INTTOSTR(cedCod_Lote_Num.AsInteger);
            SQL.STRINGS[17] := ''''+FORMATDATETIME('dd/mm/yyyy',detDat_Movto.Date+1)+'''';
            SQL.STRINGS[20] := INTTOSTR(RxFemea.FieldByName('Nro_Box').AsInteger);
            SQL.STRINGS[23] := ''''+'F'+'''';
            SQL.STRINGS[26] := INTTOSTR(RxFemea.FieldByName('Diferenca').AsInteger);
            {ParamByName('Lote').AsInteger    := cedCod_Lote_Num.AsInteger;
            ParamByName('Data').AsDateTime   := detDat_Movto.Date;
            ParamByName('Nro_Box').AsInteger := RxFemea.FieldByName('Nro_Box').AsInteger;
            ParamByName('Sexo_Ave').AsString   := 'F';
            ParamByName('Qtde_Aves').AsInteger := RxFemea.FieldByName('Diferenca').AsInteger; }
            ExecSQL;
          end;
       // há 10 unidades para o progresso desta rotina
       inc(Rec);
       FMenu.ggeProgresso.Progress := Progresso + trunc((Rec / RecCount) * 10);
       RxFemea.Next;
     end;
  Result := True;

  // Verifica se houve algum saldo negativo (exibe par ao usuario, cancela a operaçao, efetua um RollBack)
  if QryNegativo = nil then
     QryNegativo := QryBusca.Create(nil);
  if BuscaRegistro(QryBusca, ' Select Data, Nro_Box, Qtd_Machos, Qtd_Femeas From avfssda1 ',
                             ' Where Cod_Lote_Num = ' + IntToStr(cedCod_Lote_Num.AsInteger) +
                             ' and (qtd_machos < 0 or qtd_femeas < 0) Order by Data, Nro_Box ') then
     begin
       // este movimento deixara saldos negativos
       MessageDlg(Msg00444, mtInformation, [mbOK], 0);
       // exibe data em que saldo ficará negativo
       FSaldoNegativos.Exibe(QryNegativo);
       Result := False;
       Exit;
     end;
end;

function TFMovLote.VerificaAlteracao(vLote: integer; vDataMovimento: TDateTime):Boolean;
var
  vTest : Boolean;
begin
  Result := False;
  // Busca os movimentos atuais do banco de dados
  with qryBoxAtual do
    begin
      Close;
      ParamByName('Lote').AsInteger := vLote;
      ParamByName('Data').AsDate := vDataMovimento;
      Open;
    end;

// Testa se qryBoxOriginal =  qryBoxAtual
  qryBoxAtual.First;
  qryBoxOriginal.First;

  // Primeiro teste : se a quantidade de registros são diferentes já é suficiente para
  // determinar que ocorreu alterações
  if qryBoxOriginal.RecordCount <> qryBoxAtual.RecordCount then
     Exit;

  // Segundo Teste: verifica campo a campo
  vTest := True;
  if qryBoxOriginal.RecordCount > 0 then
     with qryBoxOriginal do
       while (not Eof) and (vTest) do
         begin
           vTest  := (FieldByName('nro_box').AsInteger = qryBoxAtual.FieldByName('nro_box').AsInteger) and
                     (FieldByName('sexo_ave').AsString = qryBoxAtual.FieldByName('sexo_ave').AsString) and
                     (FieldByName('qtd_morte').AsInteger = qryBoxAtual.FieldByName('qtd_morte').AsInteger) and
                     (FieldByName('qtd_elimin').AsInteger = qryBoxAtual.FieldByName('qtd_elimin').AsInteger) and
                     (FieldByName('qtd_refugo').AsInteger = qryBoxAtual.FieldByName('qtd_refugo').AsInteger) and
                     (FieldByName('qtd_transf').AsInteger = qryBoxAtual.FieldByName('qtd_transf').AsInteger) and
                     (FieldByName('qtd_difer').AsInteger = qryBoxAtual.FieldByName('qtd_difer').AsInteger) and
                     (FieldByName('qtd_saldo').AsInteger = qryBoxAtual.FieldByName('qtd_saldo').AsInteger) and
                     (FieldByName('qtd_descarte').AsInteger = qryBoxAtual.FieldByName('qtd_descarte').AsInteger);
           Next;
           qryBoxAtual.Next;
         end;

   Result := vTest;
end;

procedure TFMovLote.HabilitarControles(vTab:integer);
begin

  RxFemea.EnableControls;
  RxOcorrencia.EnableControls;
  FMenu.ggeProgresso.Visible := False;
end;


// Função para verificar se os campos estão preenchidos
function TFMovLote.VerificaCamposRacao: Boolean;
var
  vSelect : string;
  vWhere  : string;
begin
  Result := False;

  // verifica se o campo data foi preenchido ou se é uma data válida
  if VerificaData(detDat_Movto.Text) = 0 then
    begin
      MessageDlg(Msg00282, mtInformation, [mbOK], 0);
      if detDat_Movto.Enabled then detDat_Movto.SetFocus;
      Exit;
    end;

  if detDat_Movto.date > date  then
    begin
      MessageDlg(Msg00535, mtInformation, [mbOK], 0);
      try if detDat_Movto.Enabled then detDat_Movto.SetFocus; except end;
      Exit;
    end;    


  // verifica se o lote está cadastrado no banco de dados
  if not(BuscaRegistro(QryBusca, 'Select * From avfslot1 ',
                                 'Where Cod_Lote_Num = ' + IntToStr(cedCod_Lote_Num.AsInteger)))
  then
    begin
      MessageDlg(Msg00122, mtInformation, [mbOK], 0);
      if cedCod_Lote_Num.Enabled then cedCod_Lote_Num.SetFocus;
      Exit;
    end;

  // verifica se o Lote é um Lote Agrupado
  if UpperCase(QryBusca.FieldByName('Ide_Espec').AsString) = 'J' then
    begin
      MessageDlg(Msg00381, mtInformation, [mbOK], 0);
      if cedCod_Lote_Num.Enabled then cedCod_Lote_Num.SetFocus;
      Exit;
    end;

  // verifica se o Lote é lote de terceiros
  if Not ConvertIntToBoo(QryBusca.FieldByName('lote_proprio').Asinteger)  then
    begin
      MessageDlg(Msg00502, mtInformation, [mbOK], 0);
      if cedCod_Lote_Num.Enabled then cedCod_Lote_Num.SetFocus;
      Exit;
    end;

  // verifica se o Lote esta ativo
  if QryBusca.FieldByName('Dat_Efet_Desc').AsDateTime <> StrToDate('01/01/1900') then
    begin
      MessageDlg(Msg00197, mtInformation, [mbOK], 0);
      if cedCod_Lote_Num.Enabled then cedCod_Lote_Num.SetFocus;
      Exit;
    end;

  // data do movimento >= data media de nascimento do lote
  if detDat_Movto.Date < QryBusca.FieldByName('Dat_Aloj_Inicial').AsDateTime then
    begin
      MessageDlg(Msg00196, mtInformation, [mbOK], 0);
      if detDat_Movto.Enabled then detDat_Movto.SetFocus;
      Exit;
    end;

  // verifica se a Ração está cadastrada no banco de dados
  if not(BuscaRegistro(QryBusca, 'Select * From avfscra1 ',
                                 'Where Cod_Racao = ' + IntToStr(cedCod_Racao.AsInteger)))
  then
    begin
      MessageDlg(Msg00284, mtInformation, [mbOK], 0);
      if cedCod_Racao.Enabled then cedCod_Racao.SetFocus;
      Exit;
    end;


  // Existe idade para a data de movto
  if not VerificaExisteIdadeParaData(QryBusca, cedCod_Lote_Num.AsInteger, detDat_Movto.Date) then
    begin
      MessageDlg(Msg00382, mtInformation, [mbOK], 0);
      if detDat_Movto.Enabled then detDat_Movto.SetFocus;
      Exit;
    end;

  // verifica se a hora final é maior que a hora inicial



 Result := True;
end;

procedure TFMovLote.btnConfirmarClick(Sender: TObject);
var
   vSelect : string;
   vWhere,vcampos ,vvalues : string;
   vPercentual : Integer;
   vDataMovto  , vData: TDateTime;
   vIdade  ,vBox    : Integer;
     vDeletePeso    : String;
  vWherePeso     : String;
  vDeletePerdas  : String;
  vWherePerdas   : String;
  vDeleteColetas : String;
  vWhereColetas  : String;
  vDeleteMovto   : String;
  vWhereMovto    : String;
  vCV,
  vUnif,
  vPesoM,
  vPeso         : Double;
  vSexo         : String;
   vFaixaUnif,
  vI,
  vJ,
  vAmostra      : Integer;
  function ConvertFloat(vStr : String;Padrao:Double):Double;
  begin
     try
       Result := StrToFloat(vStr);
     except
       Result := Padrao;
     end;
  end;

begin
  BitBtn4.OnClick(self);
  vPode := false;


  qryDistribuicao.close;
  qryDistribuicao.ParamByName('Cod_Lote_Num').AsInteger  := cedCod_Lote_Num.AsInteger;
  qryDistribuicao.ParamByName('Dat_Movto').AsDateTime    := detDat_Movto.Date;
  qryDistribuicao.open;
  if not qryDistribuicao.isempty then
  begin
     MessageDlg('Falta Distribuir a Transferência do dia: '+formatdatetime('dd/mm/yy',qryDistribuicaoDAT_MOVTO.asdatetime), mtInformation, [mbOK], 0);
     exit;
  end;


  // verifica se campos básicos estão corretos para gravação
  if not VerificaCampos then
    begin
      HabilitarControles(0);
      Exit;
    end;

  try
    begin
      FMenu.dbsManejo.StartTransaction;


      vSelect := ' delete from avfsmer1 where Dat_Movto=:Dat_Movto and Cod_Lote_Num=:Cod_Lote_Num ';
      with QryOperacao do
      begin
          sql.text := vSelect;
          ParamByName('Dat_Movto').AsDateTime    := detDat_Movto.Date;
          ParamByName('Cod_Lote_Num').AsInteger  := cedCod_Lote_Num.AsInteger;
          execsql;
      end;

      vDeletePeso := 'Delete From avfsdpe1 ';
      vWherePeso := 'Where Dat_Movto = :Dat_Movto and Cod_Lote_Num = :Cod_Lote_Num ';

      // Remove todos os registros de Perdas relacionados com o Lote
      vDeletePerdas := 'Delete From avfsper1 ';
      vWherePerdas := 'Where Dat_Movto = :Dat_Movto and Cod_Lote_Num = :Cod_Lote_Num ';

      // Remove todos os registros de Coletas relacionados com o Lote
      vDeleteColetas := 'Delete From avfsdpo1 ';
      vWhereColetas := 'Where Dat_Movto = :Dat_Movto and Cod_Lote_Num = :Cod_Lote_Num ';

      // Remove todos os registros do Movimento relacionados com o Lote
      vDeleteMovto := 'Delete From avfsmpo1 ';
      vWhereMovto := 'Where Dat_Movto = :Dat_Movto and Cod_Lote_Num = :Cod_Lote_Num ';

          with QryOperacao do
            begin
              Close;
              SQL.Clear;
              SQL.Add(vDeletePeso);
              SQL.Add(vWherePeso);
              ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
              ParamByName('Dat_Movto').AsDate := detDat_Movto.Date;
              ExecSQL;

              Close;
              SQL.Clear;
              SQL.Add(vDeletePerdas);
              SQL.Add(vWherePerdas);
              ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
              ParamByName('Dat_Movto').AsDate := detDat_Movto.Date;
              ExecSQL;

              Close;
              SQL.Clear;
              SQL.Add(vDeleteColetas);
              SQL.Add(vWhereColetas);
              ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
              ParamByName('Dat_Movto').AsDate := detDat_Movto.Date;
              ExecSQL;

              Close;
              SQL.Clear;
              SQL.Add(vDeleteMovto);
              SQL.Add(vWhereMovto);
              ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
              ParamByName('Dat_Movto').AsDate := detDat_Movto.Date;
              ExecSQL;

            end;


      ///parte da ração
      if
         (cedQtd_Cons_Femea.value <> 0 )
      then
      begin

         if not (VerificaCamposRacao) then
         begin
            FMenu.dbsManejo.Rollback;
            Exit;
         end;
         {
         vSelect := ' delete from avfsmcr1 where Dat_Movto=:Dat_Movto and Cod_Lote_Num=:Cod_Lote_Num ';
         with QryOperacao do
         begin
             sql.text := vSelect;
             ParamByName('Dat_Movto').AsDateTime    := detDat_Movto.Date;
             ParamByName('Cod_Lote_Num').AsInteger  := cedCod_Lote_Num.AsInteger;
             execsql;
          end;        }


         if cedQtd_Cons_Femea.value <> 0 then
         begin

            vSelect := ' Insert Into avfsmer1 ';
            vCampos := ' cod_lote_num,dat_movto,cod_racao,qtd_entrada ';
            vValues := ' :cod_lote_num,:dat_movto,:cod_racao,:qtd_entrada ';

            InsertDados(QryOperacao, vSelect, vCampos, vValues);
            with QryOperacao do
            begin
                ParamByName('Dat_Movto').AsDateTime    := detDat_Movto.Date;
                ParamByName('Cod_Lote_Num').AsInteger  := cedCod_Lote_Num.AsInteger;
                ParamByName('Cod_Racao').AsInteger     := cedCod_Racao.AsInteger;
                ParamByName('qtd_entrada').AsFloat     := cedQtd_Cons_Femea.value;
                ExecSQL;
            end;
            
         end;



         AtualizaAcertoCalculo(cedCod_Lote_Num.AsInteger, detDat_Movto.Date);
         GeraSaldoDiario(cedCod_Lote_Num.AsInteger, detDat_Movto.Date);
      end;

      vSexo := 'F';
      vUnif := cedAmoUniformidade.Value;
      vPesoM := cedAmoPesoMedio.Value;
      vCV := cedAmoCV.Value;
      vData := detDat_Movto.date;

      vSelect := ' delete from avfsmpe1 where Dat_Movto=:Dat_Movto and Cod_Lote_Num=:Cod_Lote_Num AND Sexo_Ave=:Sexo_Ave'; //and Med_Peso_Lote = :Med_Peso_Lote  ';
          with QryOperacao do
          begin
              sql.text := vSelect;
              ParamByName('Dat_Movto').AsDateTime    := detDat_Movto.Date;
              ParamByName('Cod_Lote_Num').AsInteger  := cedCod_Lote_Num.AsInteger;
              ParamByName('Sexo_Ave').AsString       := vSexo;
              //ParamByName('Med_Peso_Lote').AsFloat   := vPesoM;
              execsql;
          end;

      if (cedAmoPesoMedio.Value <> 0)
       then
      begin


         vSexo := 'F';
         vUnif := cedAmoUniformidade.Value;
         vPesoM := cedAmoPesoMedio.Value;
         vCV := cedAmoCV.Value;
         vData := detDat_Movto.date;

         vSelect := ' delete from avfsape1 where Dat_Movto=:Dat_Movto and Cod_Lote_Num=:Cod_Lote_Num AND Sexo_Ave=:Sexo_Ave ';
          with QryOperacao do
          begin
              sql.text := vSelect;
              ParamByName('Dat_Movto').AsDateTime    := detDat_Movto.Date;
              ParamByName('Cod_Lote_Num').AsInteger  := cedCod_Lote_Num.AsInteger;
              ParamByName('Sexo_Ave').AsString      := vSexo;
              execsql;
          end;

          vSelect := ' delete from avfsmpb1 where Dat_Movto=:Dat_Movto and Cod_Lote_Num=:Cod_Lote_Num AND Sexo_Ave=:Sexo_Ave ';
          with QryOperacao do
          begin
              sql.text := vSelect;
              ParamByName('Dat_Movto').AsDateTime    := detDat_Movto.Date;
              ParamByName('Cod_Lote_Num').AsInteger  := cedCod_Lote_Num.AsInteger;
              ParamByName('Sexo_Ave').AsString      := vSexo;
              execsql;
          end;

         { vSelect := ' delete from avfsmpe1 where Dat_Movto=:Dat_Movto and Cod_Lote_Num=:Cod_Lote_Num AND Sexo_Ave=:Sexo_Ave'; //and Med_Peso_Lote = :Med_Peso_Lote  ';
          with QryOperacao do
          begin
              sql.text := vSelect;
              ParamByName('Dat_Movto').AsDateTime    := detDat_Movto.Date;
              ParamByName('Cod_Lote_Num').AsInteger  := cedCod_Lote_Num.AsInteger;
              ParamByName('Sexo_Ave').AsString       := vSexo;
              //ParamByName('Med_Peso_Lote').AsFloat   := vPesoM;
              execsql;
          end;      }
         

         vSelect := 'Insert Into avfsmpe1 ';
         vCampos := 'Dat_Movto,nom_digit, Sexo_Ave, Cod_Lote_Num, Cod_Atividade, Dat_Prevista, Med_Peso_Lote, Pct_Unif_Lote, Coef_Variacao, Tip_Pesagem '; //, esc_balanca';
         vValues := ':Dat_Movto,:nom_digit, :Sexo_Ave, :Cod_Lote_Num, :Cod_Atividade, :Dat_Prevista, :Med_Peso_Lote, :Pct_Unif_Lote, :Coef_Variacao, :Tip_Pesagem ';// , :esc_balanca ';
         InsertDados(QryOperacao, vSelect, vCampos, vValues);
         with QryOperacao do
         begin
            ParamByName('Dat_Movto').AsDateTime := vData;
            ParamByName('Sexo_Ave').AsString := vSexo;
            ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
            ParamByName('Tip_Pesagem').AsInteger := 1;
            ParamByName('Cod_Atividade').AsInteger := 0;
            ParamByName('Dat_Prevista').AsDate     := 0;
            ParamByName('Med_Peso_Lote').AsFloat := vPesoM;
            ParamByName('Pct_Unif_Lote').AsFloat := vUnif;
            ParamByName('Coef_Variacao').AsFloat := vCv;
            ParamByName('nom_digit').AsString := FMenu.Empresa.Usuario;
            ExecSQL;
         end;   


         vSelect := 'Insert Into avfsmpb1 ';
         vCampos := 'Nro_Box, Dat_Movto, Sexo_Ave, Cod_Lote_Num, Med_Peso, Pct_Unif, Coef_Variacao ';
         vValues := ':Nro_Box, :Dat_Movto, :Sexo_Ave, :Cod_Lote_Num, :Med_Peso, :Pct_Unif, :Coef_Variacao ';
         InsertDados(QryOperacao, vSelect, vCampos, vValues);
         for vBox := 1 to stgAmostra.RowCount - 1 do // amostra
            begin
              vFaixaUnif :=10;
              CalculaDadosAmostra(vPesoM,vUnif,vCV,vFaixaUnif,vBox);
              if (vPesoM <> 0) or (vUnif <> 0) or (vCV <> 0) then
                with QryOperacao do
                  begin
                   ParamByName('Nro_Box').AsInteger := StrToInt(stgAmostra.Cells[0,vBox]);
                   ParamByName('Dat_Movto').AsDate := vData;
                   ParamByName('Sexo_Ave').AsString := vSexo;
                   ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
                   ParamByName('Med_Peso').AsFloat := StrToFloat(FormatFloat('#,###0.000',vPesoM));
                   ParamByName('Pct_Unif').AsFloat := StrToFloat(FormatFloat('#,###0.000',vUnif));
                   ParamByName('Coef_Variacao').AsFloat := StrToFloat(FormatFloat('#,##0.00',vCV));
                   ExecSQL;
                  end;
            end ;


            
         vSelect := 'Insert Into avfsape1 ';
         vCampos := 'Peso, Nro_Box, Sexo_Ave, Dat_Movto, Cod_Lote_Num, Qtd_Aves ';
         vValues := ':Peso, :Nro_Box, :Sexo_Ave, :Dat_Movto, :Cod_Lote_Num, :Qtd_Aves ';
         InsertDados(QryOperacao, vSelect, vCampos, vValues);
         for vI := 1 to stgAmostra.RowCount - 1 do
             for vJ := 1 to stgAmostra.ColCount - 1 do
               if E_NumeroInteiro(stgAmostra.Cells[vJ,vI]) then
                 if StrToInt(stgAmostra.Cells[vJ,vI]) > 0 then
                   begin
                     vPeso := ConvertFloat(stgAmostra.Cells[vJ,0],0);
                     vAmostra := StrToInt(stgAmostra.Cells[vJ,vI]);
                     vBox := StrToInt(stgAmostra.Cells[0,vI]);
                     with QryOperacao do
                       begin
                         ParamByName('Peso').AsFloat := vPeso;
                         ParamByName('Nro_Box').AsInteger := vBox;
                         ParamByName('Sexo_Ave').AsString := vSexo;
                         ParamByName('Dat_Movto').AsDate := vData;
                         ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
                         ParamByName('Qtd_Aves').AsInteger := vAmostra;
                         ExecSQL;
                       end;
                   end

         //MIGRAR

      end;

      //parte postura
      if cedTot_Ovos_Dia.value <> 0 then
      begin

          if not (VerificaCamposProd) then
          begin
             FMenu.dbsManejo.Rollback;
             Exit;
          end;
           {
          vDeletePeso := 'Delete From avfsdpe1 ';
          vWherePeso := 'Where Dat_Movto = :Dat_Movto and Cod_Lote_Num = :Cod_Lote_Num ';

          // Remove todos os registros de Perdas relacionados com o Lote
          vDeletePerdas := 'Delete From avfsper1 ';
          vWherePerdas := 'Where Dat_Movto = :Dat_Movto and Cod_Lote_Num = :Cod_Lote_Num ';

          // Remove todos os registros de Coletas relacionados com o Lote
          vDeleteColetas := 'Delete From avfsdpo1 ';
          vWhereColetas := 'Where Dat_Movto = :Dat_Movto and Cod_Lote_Num = :Cod_Lote_Num ';

          // Remove todos os registros do Movimento relacionados com o Lote
          vDeleteMovto := 'Delete From avfsmpo1 ';
          vWhereMovto := 'Where Dat_Movto = :Dat_Movto and Cod_Lote_Num = :Cod_Lote_Num ';

          with QryOperacao do
            begin
              Close;
              SQL.Clear;
              SQL.Add(vDeletePeso);
              SQL.Add(vWherePeso);
              ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
              ParamByName('Dat_Movto').AsDate := detDat_Movto.Date;
              ExecSQL;

              Close;
              SQL.Clear;
              SQL.Add(vDeletePerdas);
              SQL.Add(vWherePerdas);
              ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
              ParamByName('Dat_Movto').AsDate := detDat_Movto.Date;
              ExecSQL;

              Close;
              SQL.Clear;
              SQL.Add(vDeleteColetas);
              SQL.Add(vWhereColetas);
              ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
              ParamByName('Dat_Movto').AsDate := detDat_Movto.Date;
              ExecSQL;

              Close;
              SQL.Clear;
              SQL.Add(vDeleteMovto);
              SQL.Add(vWhereMovto);
              ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
              ParamByName('Dat_Movto').AsDate := detDat_Movto.Date;
              ExecSQL;

            end;
                    }

          // gera saldo ate a data
          GeraSaldoDiario(cedCod_Lote_Num.AsInteger, detDat_Movto.Date);
          // adiciona os dados do movto
          AdicionaMovto(detDat_Movto.Date, cedCod_Lote_Num.AsInteger, cedTot_Ovos_Dia.AsInteger, cedPeso_Ovo.AsInteger, 0, 0);
          // adiciona os dados da coleta de ovos
          AdicionaColetaOvos;
          
          // verifica se o lote não está em produção
          if not(VerificaLoteProducao(QryBusca, cedCod_Lote_Num.AsInteger)) then
            begin
          
              // busca o saldo do lote pela data
              BuscaSaldoDiario(cedCod_Lote_Num.AsInteger, detDat_Movto.Date);
          
              // busca o percentual da indentificação do lote
              vPercentual := BuscaPercentual(cedCod_Lote_Num.AsInteger);
          
              // verifica se o percentual encontrado é maior ou igual ao desejado
              if AlojarProducao(cedTot_Ovos_Dia.AsInteger, vAvesFemeas, vPercentual) then
                begin
                  // muda a data para o proximo dia de fechamento
                  vDataMovto := ProximoDiaFechamento(detDat_Movto.Date);
          
                  // informa a idade do alojamento
                  vIdade := QryIdadeEndereco.fieldbyname('idade').asinteger;//Trunc((vDataMovto - vDataLote) / 7);
          
                  // adiciona o acerto de produção para o lote
                  AcertoProducao(cedCod_Lote_Num.AsInteger, vIdade, vAvesMachos, vAvesFemeas);
          
                  // atualiza os dados sobre a produção no lote
                  AtualizaLoteProducao(QryOperacao, cedCod_Lote_Num.AsInteger, vIdade, vAvesMachos, vAvesFemeas, vDataMovto);
          
                  // mensagem de informação sobre o lote já estar em produção
                  MessageDlg(Msg00458, mtInformation, [mbOK], 0);
                end;
            end;
          // atualiza a data inicial de produção do lote
          AtualizaInicioProducao(cedCod_Lote_Num.AsInteger);
          
          // atualiza acerto de calculo para fechamento semanal
          AtualizaAcertoCalculo(cedCod_Lote_Num.AsInteger, detDat_Movto.Date);
      end;

      if  RxFemea.Active then
      begin


          
         if not RxFemea.Active then
           begin
            MessageDlg(Format(Msg00440,['Fêmea']), mtInformation, [mbOK], 0);
            Exit
           end;
        
         if not RxOcorrencia.Active then
           begin
            MessageDlg(Format(Msg00440,['Ocorrências']), mtInformation, [mbOK], 0);
            Exit
           end;

         if RxFemea.State in [dsEdit, dsInsert]
            then RxFemea.post;
        
         if RxOcorrencia.State in [dsEdit, dsInsert]
            then RxOcorrencia.post;
        

         RxFemea.DisableControls;
         RxOcorrencia.DisableControls;



         qryLimpaTabelaIdade.close;
         qryLimpaTabelaIdade.parambyname('cod_lote_num').asinteger := cedCod_Lote_Num.asinteger;
         qryLimpaTabelaIdade.parambyname('dat_movto').asdatetime   := detDat_Movto.date;
         qryLimpaTabelaIdade.execsql;

         RxFemea.first;
         while not RxFemea.eof do
         begin

            if RxFemea.FieldByName('idade_info').AsInteger <> 0 then
            begin

               qryGravaIdadeBox.close;
               qryGravaIdadeBox.parambyname('cod_lote_num').asinteger := cedCod_Lote_Num.asinteger;
               qryGravaIdadeBox.parambyname('dat_movto').asdatetime   := detDat_Movto.date;
               qryGravaIdadeBox.parambyname('nro_box').asinteger      := RxFemea.FieldByName('Nro_Box').AsInteger;
               qryGravaIdadeBox.parambyname('IDADE_INF').asinteger    := RxFemea.FieldByName('idade_info').AsInteger;
               qryGravaIdadeBox.parambyname('DIF_IDADE').asinteger    := RxFemea.FieldByName('dif_idade').AsInteger;
               qryGravaIdadeBox.ParamByName('Sexo_Ave').AsString      := 'F';
               qryGravaIdadeBox.execsql;

            end;
            RxFemea.next;
         end;



       
          FMenu.ggeProgresso.MinValue := 0;
          FMenu.ggeProgresso.MaxValue := 100;
          FMenu.ggeProgresso.Progress := 0;
          FMenu.ggeProgresso.Visible := True;
       
          // atualiza o saldo de transferencia de aves (aloj + mov transf) antes de gravar
          SaldoTransfAlojamento(cedCod_Lote_Num.AsInteger, detDat_Movto.Date);
          AtualizaSaldoDeTransferencia;
       
          // atualiza o saldo do dia anterior
          SaldoLoteDataAnterior(cedCod_Lote_Num.AsInteger, detDat_Movto.Date - 1);
       
          // verifica se outro usuario efetuou alteraçoes em movimento data data
          if not VerificaAlteracao(cedCod_Lote_Num.AsInteger, detDat_Movto.Date) then
             begin
               FMenu.dbsManejo.Rollback;
               HabilitarControles(0);
               MessageDlg(Msg00063, mtInformation, [mbOK], 0);
               Exit;
             end;
          FMenu.ggeProgresso.Progress := 5;

          FMenu.ggeProgresso.Progress := 10;
       
          // existe transferencia de femeas para distribuição
          if StrToInt(lblFemea.Caption) <> 0 then
             begin
               FMenu.dbsManejo.Rollback;
               MessageDlg(Format(Msg00441,['Fêmeas']), mtInformation, [mbOK], 0);
               HabilitarControles(0);
               Exit;
             end;    
          FMenu.ggeProgresso.Progress := 15;
       
          // se todos os saldos são positivo
          if ExisteSaldoNegativo then
             begin
               FMenu.dbsManejo.Rollback;
               HabilitarControles(0);
               Exit;
             end;
          FMenu.ggeProgresso.Progress := 20;
       
          // Existe movimentos com box iguais
          if ExisteBoxIguais then
             begin
               HabilitarControles(1);
               FMenu.dbsManejo.Rollback;
               Exit;
             end;
          FMenu.ggeProgresso.Progress := 25;
       
           // existe causas para todas as saidas de aves
          if not ExisteCausaTodasSaidas then
             begin
               FMenu.dbsManejo.Rollback;
               HabilitarControles(1);
               Exit;
             end;
          FMenu.ggeProgresso.Progress := 30;
           
          // Grava os dados na tabela avfsmbo1
          GravaDadosMovimentoBox;
          FMenu.ggeProgresso.Progress := 40;
       
          // Atualiza o saldo até o dia anterior ao movimento
          GeraSaldoDiario(cedCod_Lote_Num.AsInteger, detDat_Movto.Date - 1);
          FMenu.ggeProgresso.Progress := 50;
       
          // Grava os dados na tabela avfssda1
          GravaDadosSaldoDiariodeAves;
          FMenu.ggeProgresso.Progress := 60;
       
          // Grava os dados na tabela avfsmca1
          GravaDadosOcorrencias;
          FMenu.ggeProgresso.Progress := 68;
       
          // Atuazlia a tabela de Acerto de Calculo
          AtualizaAcertoCalculo(cedCod_Lote_Num.AsInteger, detDat_Movto.Date);
          FMenu.ggeProgresso.Progress := 70;
       
          vSelect := 'Select cod_lote_num From avfssda1 ';
          vWhere  := ' Where Cod_Lote_num=:cod_lote_num and data=:data ';
          with qryBusca do
          begin
             Close;
             Sql.Text := vSelect;
             Sql.Add(vWhere);
             Parambyname('cod_lote_num').asinteger := cedCod_Lote_Num.AsInteger;
             Parambyname('data').asdatetime        :=  detDat_Movto.Date + 1;
             Open;
             if not IsEmpty then
             begin
                if not AtualizaSaldoMovimentoPosteriores then
                begin
                  if FMenu.dbsManejo.InTransaction then
                     FMenu.dbsManejo.Rollback;
                  HabilitarControles(0);
                  Exit
                end;
             end;
          end;
       
          FMenu.ggeProgresso.Progress := 90;
       
          // remove todas as tarefas para o lote e a data informados
          GeraTarefa(FMenu.QryGeraTarefa, cedCod_Lote_Num.AsInteger, detDat_Movto.Date, 0, 0, FMenu.Empresa.Usuario, 3);
      end;
      FMenu.ggeProgresso.Progress := 100;



      qryDiasAjustar.close;
      qryDiasAjustar.parambyname('cod_lote_num').asinteger := cedCod_Lote_Num.ASINTEGER;
      qryDiasAjustar.parambyname('data').asdatetime        := detDat_Movto.DATE - 1;
      qryDiasAjustar.open;

      while not qryDiasAjustar.eof do
      begin

         qryAjustar.close;
         qryAjustar.parambyname('cod_lote_num').asinteger := qryDiasAjustarCOD_LOTE_NUM.asinteger;
         qryAjustar.parambyname('nro_box').asinteger      := qryDiasAjustarnro_box.asinteger;
         qryAjustar.parambyname('data').asdatetime        := qryDiasAjustarDATA.asdatetime;
         qryAjustar.execsql;


         qryDiasAjustar.next;
      end;

      if FMenu.dbsManejo.InTransaction then
         FMenu.dbsManejo.Commit ;

      HabilitarControles(0);
      LimpaCampos;




      TRY detDat_Movto.SETFOCUS; EXCEPT END;
    end;
  except
    on E: Exception do
      begin
        MessageDlg(Msg10003 + CHR(10) + '"' + E.Message + '".', mtError, [mbOk], 0);
        if FMenu.dbsManejo.InTransaction then
           FMenu.dbsManejo.Rollback;
        HabilitarControles(0);
      end;
  end;
end;


procedure TFMovLote.GravaDadosMovimentoBox;
var
  vSelect,
  vWhere,
  vCampos,
  vValues :String;
begin

  // REMOVE TODOS OS MOVIMENTO PARA REINSERIR
  try
    vSelect := ' Delete avfsmbo1  ';
    vWhere  := ' Where Cod_Lote_Num=:cod_lote_num and Dat_Movto=:Dat_Movto ';
    with QryOperacao do
    begin
       Close;
       SQL.Clear;
       SQL.Add(vSelect);
       SQL.Add(vWhere);
       Parambyname('cod_lote_num').asinteger := cedCod_Lote_Num.AsInteger;
       Parambyname('dat_movto').asdatetime   := detDat_Movto.Date;
       ExecSql;
    end;
  except
    on E: EDataBaseError do
      begin
        MessageDlg('Ocorreu o seguinte erro durante a gravação no banco de dados: ' +
        CHR(10) + '"' + E.Message + '".', mtError, [mbOk], 0);
        exit;
      end;
  end;


  // INSERE OS REGISTROS DOS MOVIMENTO (MACHOS E FEMEAS)
  vSelect := 'Insert into avfsmbo1 ';
  vCampos := 'Dat_Movto, Cod_Lote_Num, Nro_Box, Sexo_Ave, Qtd_Morte, ' +
             'Qtd_Elimin, Qtd_Refugo, Qtd_Transf, Qtd_Difer, Qtd_Saldo, Qtd_Descarte, lado ,categoria ';
  vValues := ':Dat_Movto, :Cod_Lote_Num, :Nro_Box, :Sexo_Ave, :Qtd_Morte, ' +
             ':Qtd_Elimin,  :Qtd_Refugo, :Qtd_Transf, :Qtd_Difer,:Qtd_Saldo, :Qtd_Descarte, :lado,:categoria  ';
  InsertDados(QryOperacao, vSelect, vCampos, vValues);


  RxFemea.First;
  while not RxFemea.Eof do
     with QryOperacao do
      begin
        if ( RxFemea.FieldByName('Qtd_Morte').AsInteger > 0 ) or
           ( RxFemea.FieldByName('Qtd_Elimin').AsInteger > 0 ) or
           ( RxFemea.FieldByName('Qtd_Refugo').AsInteger > 0 ) or
           ( RxFemea.FieldByName('Qtd_Descarte').AsInteger > 0 ) or
           ( RxFemea.FieldByName('Qtd_Difer').AsInteger <> 0 ) or
           ( RxFemea.FieldByName('Qtd_Transf').AsInteger <> 0) then
           begin
             ParamByName('Dat_Movto').AsDateTime   := detDat_Movto.Date;
             ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger ;
             ParamByName('Nro_Box').AsInteger      := RxFemea.FieldByName('Nro_Box').AsInteger;
             ParamByName('Sexo_Ave').AsString      := RxFemea.FieldByName('Sexo_Ave').AsString;
             ParamByName('Qtd_Morte').AsInteger    := RxFemea.FieldByName('Qtd_Morte').AsInteger;
             ParamByName('Qtd_Elimin').AsInteger   := RxFemea.FieldByName('Qtd_Elimin').AsInteger;
             ParamByName('Qtd_Refugo').AsInteger   := RxFemea.FieldByName('Qtd_Refugo').AsInteger;
             ParamByName('Qtd_Descarte').AsInteger := RxFemea.FieldByName('Qtd_Descarte').AsInteger;
             ParamByName('Qtd_Saldo').AsInteger    := RxFemea.FieldByName('Saldo').AsInteger;
             ParamByName('Qtd_Difer').AsInteger    := RxFemea.FieldByName('Qtd_Difer').AsInteger;
             ParamByName('Qtd_Transf').AsInteger   := RxFemea.FieldByName('Qtd_Transf').AsInteger;
             ParamByName('lado').Asstring          := RxFemea.FieldByName('lado').Asstring;
             ParamByName('categoria').Asstring     := RxFemea.FieldByName('Categoria').Asstring;
             
             ExecSQL;
           end;
        RxFemea.Next;
      end;
end;

procedure TFMovLote.GravaDadosSaldoDiariodeAves;
var
  vSelect : string;
  vWhere  : string;
  vAchou  : boolean;
begin
  // remove os saldo existentes para aquela data, daquele lote
  try
    vSelect := ' Delete avfssda1  ';
    vWhere  := ' Where Cod_Lote_Num=:cod_lote_num and Data=:Data ';
    with QryOperacao do
    begin
       Close;
       SQL.Clear;
       SQL.Add(vSelect);
       SQL.Add(vWhere);
       Parambyname('cod_lote_num').asinteger := cedCod_Lote_Num.AsInteger;
       Parambyname('data').asdatetime        := detDat_Movto.Date;
       ExecSql;
    end;
  except
    on E: EDataBaseError do
      begin
        MessageDlg('Ocorreu o seguinte erro durante a gravação no banco de dados: ' +
        CHR(10) + '"' + E.Message + '".', mtError, [mbOk], 0);
        Exit;
      end;
  end;

  // INSERE OS REGISTROS DOS MOVIMENTO (MACHOS E FEMEAS)
 RxAtualizaSda.close;
 RxAtualizaSda.open;


 RxFemea.First;
 with RxFemea do
   while not Eof do
     begin

        RxAtualizaSda.first;
        vAchou := false;
        while (not RxAtualizaSda.eof) and (not vAchou) do
        begin
          if RxAtualizaSda.fieldbyname('Nro_Box').asinteger =  FieldByName('Nro_Box').Asinteger then
          begin
             RxAtualizaSda.Edit;
             RxAtualizaSda.FieldByName('flg_box').AsBoolean    := (RxAtualizaSda.FieldByName('flg_box').AsBoolean) ;
             RxAtualizaSda.FieldByName('qtd_femeas').AsInteger := FieldByName('Saldo').AsInteger;
             RxAtualizaSda.FieldByName('LADO').Asstring        := FieldByName('LADO').Asstring;
             RxAtualizaSda.FieldByName('categoria').Asstring   := FieldByName('categoria').Asstring;
             RxAtualizaSda.Post;
             vAchou := true;
          end;
          RxAtualizaSda.next;
        end;

        if not vAchou then
        begin
           RxAtualizaSda.Append;
           RxAtualizaSda.Edit;
           RxAtualizaSda.FieldByName('cod_lote_num').AsInteger := cedCod_Lote_Num.AsInteger;
           RxAtualizaSda.FieldByName('Data').AsDateTime        := detDat_Movto.Date;
           RxAtualizaSda.FieldByName('Nro_Box').AsInteger      := FieldByName('Nro_Box').AsInteger;
           RxAtualizaSda.FieldByName('flg_box').AsBoolean      := FieldByName('cod_lote_num').AsInteger <> FieldByName('saldo').AsInteger;
           RxAtualizaSda.FieldByName('qtd_femeas').AsInteger   := FieldByName('Saldo').AsInteger;
           RxAtualizaSda.FieldByName('LADO').Asstring          := FieldByName('LADO').Asstring;
           RxAtualizaSda.FieldByName('categoria').Asstring     := FieldByName('categoria').Asstring;
           RxAtualizaSda.Post;
        end;

       Next;
     end;

// insere os dados em sda
 InsertDados(QryOperacao,
             ' Insert into avfssda1 ',
             ' nro_seq, data, cod_lote_num, nro_box, flg_box, qtd_machos,LADO, qtd_femeas ,categoria',
             ' :nro_seq, :data, :cod_lote_num, :nro_box, :flg_box, :qtd_machos,:LADO, :qtd_femeas ,:categoria');
 RxAtualizaSda.First;
 with RxAtualizaSda do
   while not Eof do
     begin
       qryOperacao.ParamByName('nro_seq').AsInteger      := vNroSeq;
       qryOperacao.ParamByName('data').AsDate            := FieldByName('data').AsDateTime;
       qryOperacao.ParamByName('cod_lote_num').AsInteger := FieldByName('cod_lote_num').AsInteger;
       qryOperacao.ParamByName('nro_box').AsInteger    := FieldByName('nro_box').AsInteger;
       qryOperacao.ParamByName('flg_box').Asinteger    := ConvertBooToInt(FieldByName('flg_box').AsBoolean);
       qryOperacao.ParamByName('qtd_machos').AsInteger := FieldByName('qtd_machos').AsInteger;
       qryOperacao.ParamByName('qtd_femeas').AsInteger := FieldByName('qtd_femeas').AsInteger;
       qryOperacao.ParamByName('LADO').Asstring   := fieldbyname('LADO').asstring;
       qryOperacao.ParamByName('categoria').Asstring   := fieldbyname('categoria').asstring;
       qryOperacao.ExecSql;
       {

       with qryAtualizaSDA do
       begin
        close;
        Parambyname('data').asdatetime            := qryOperacao.ParamByName('data').AsDate;
        Parambyname('cod_lote_num').asinteger     := qryOperacao.ParamByName('cod_lote_num').AsInteger;
        ParamByName('nro_box').AsInteger          := qryOperacao.ParamByName('nro_box').AsInteger;
        ExecSQL;
       end;
        }

       Next;




     end;




end;


procedure TFMovLote.GravaDadosOcorrencias;
var
  vSelect : String;
  vWhere  : string;
  vCampos : String;
  vValues : String;
begin
  // remove as ocorrencias cadastradas
  try
    vSelect := ' Delete avfsmca1  ';
    vWhere  := ' Where Cod_Lote_Num=:cod_lote_num and Dat_Movto=:Dat_Movto ';
    with QryOperacao do
    begin
       Close;
       SQL.Clear;
       SQL.Add(vSelect);
       SQL.Add(vWhere);
       Parambyname('cod_lote_num').asinteger := cedCod_Lote_Num.AsInteger;
       Parambyname('dat_movto').asdatetime   := detDat_Movto.Date;

       ExecSql;
    end;
  except
      on E: EDataBaseError do
      begin
        MessageDlg('Ocorreu o seguinte erro durante a gravação no banco de dados: ' +
        CHR(10) + '"' + E.Message + '".', mtError, [mbOk], 0);
        exit;
      end;
  end;

  // adiciona as ocorrencia
  vSelect := 'Insert Into avfsmca1 ';
  vCampos := 'Dat_Movto, Cod_Lote_Num, Cod_Causa, Qtd_Morte_Macho, Qtd_Morte_Femea, ' +
             'Qtd_Elimin_Macho, Qtd_Elimin_Femea, Qtd_Refugo_Macho, Qtd_Refugo_Femea, ' +
             'Qtd_Descarte_Macho, Qtd_Descarte_Femea ,nro_box';
  vValues := ':Dat_Movto, :Cod_Lote_Num, :Cod_Causa, :Qtd_Morte_Macho, :Qtd_Morte_Femea, ' +
             ':Qtd_Elimin_Macho, :Qtd_Elimin_Femea, :Qtd_Refugo_Macho, :Qtd_Refugo_Femea, ' +
             ':Qtd_Descarte_Macho, :Qtd_Descarte_Femea ,:nro_box';
 InsertDados(QryOperacao, vSelect, vCampos, vValues);
 RxOcorrencia.First;
 while not RxOcorrencia.eof do
   begin

     if (RxOcorrencia.FieldByName('Qtd_Morte_Femea').AsInteger <> 0) or
        (RxOcorrencia.FieldByName('Qtd_Elimin_Femea').AsInteger <> 0) or
        (RxOcorrencia.FieldByName('Qtd_Refugo_Femea').AsInteger <> 0) or
        (RxOcorrencia.FieldByName('Qtd_Descarte_Femea').AsInteger <> 0)    then
     begin

     with QryOperacao do
       begin
         ParamByName('Dat_Movto').AsDateTime         := detDat_Movto.Date;
         ParamByName('Cod_Lote_Num').AsInteger       := cedCod_Lote_Num.AsInteger;
         ParamByName('Cod_Causa').AsInteger          := RxOcorrencia.FieldByName('Cod_Causa').AsInteger;
         ParamByName('nro_box').AsInteger            := RxOcorrencia.FieldByName('box').AsInteger;
         ParamByName('Qtd_Morte_Macho').AsInteger    := RxOcorrencia.FieldByName('Qtd_Morte_Macho').AsInteger;
         ParamByName('Qtd_Morte_Femea').AsInteger    := RxOcorrencia.FieldByName('Qtd_Morte_Femea').AsInteger;
         ParamByName('Qtd_Elimin_Macho').AsInteger   := RxOcorrencia.FieldByName('Qtd_Elimin_Macho').AsInteger;
         ParamByName('Qtd_Elimin_Femea').AsInteger   := RxOcorrencia.FieldByName('Qtd_Elimin_Femea').AsInteger;
         ParamByName('Qtd_Refugo_Macho').AsInteger   := RxOcorrencia.FieldByName('Qtd_Refugo_Macho').AsInteger;
         ParamByName('Qtd_Refugo_Femea').AsInteger   := RxOcorrencia.FieldByName('Qtd_Refugo_Femea').AsInteger;
         ParamByName('Qtd_Descarte_Macho').AsInteger := RxOcorrencia.FieldByName('Qtd_Descarte_Macho').AsInteger;
         ParamByName('Qtd_Descarte_Femea').AsInteger := RxOcorrencia.FieldByName('Qtd_Descarte_Femea').AsInteger;
         ExecSQL;
       end;
     end;


     RxOcorrencia.Next;
   end;
end;

procedure TFMovLote.PreencheMovimento();
var
  vAchou : boolean;
begin
   vPode := false;

  RxFemea.Close;

  RxFemea.Open;

  qryBoxOriginal.First;
  with qryBoxOriginal do
    while not Eof do
      begin

        if UpperCase(FieldByName('Sexo_Ave').AsString) = 'M' then
          begin

          end
         else
          begin
            RxFemea.Append;
            RxFemea.Edit;
            RxFemea.FieldByName('Nro_Box').AsInteger      := FieldByName('Nro_Box').AsInteger;
            RxFemea.FieldByName('Qtd_Morte').AsInteger    := FieldByName('Qtd_Morte').AsInteger;
            RxFemea.FieldByName('Qtd_Elimin').AsInteger   := FieldByName('Qtd_Elimin').AsInteger;
            RxFemea.FieldByName('Qtd_Refugo').AsInteger   := FieldByName('Qtd_Refugo').AsInteger;
            RxFemea.FieldByName('Qtd_Descarte').AsInteger := FieldByName('Qtd_Descarte').AsInteger;
            RxFemea.FieldByName('Qtd_Transf').AsInteger   := FieldByName('Qtd_Transf').AsInteger;
            RxFemea.FieldByName('Qtd_Difer').AsInteger    := FieldByName('Qtd_Difer').AsInteger;
            RxFemea.FieldByName('LADO').Asstring          := FieldByName('LADO').Asstring;
            RxFemea.FieldByName('Categoria').Asstring     := FieldByName('categoria').Asstring;
            RxFemea.FieldByName('idade_info').asinteger   := FieldByName('idade_inf_f').asinteger;
            RxFemea.FieldByName('pode_mudar_nro_box').AsBoolean := False;
            RxFemea.Post;
          end;
        Next;
      end;

  qrySaldoOriginal.First;
  with qrySaldoOriginal do
    while not Eof do
      begin

        //Procurar o registro


        {if tblMacho.FindFirst then
          begin
            tblMacho.Edit;
            tblMacho.FieldByName('qtd_saldo').AsInteger := FieldByName('qtd_machos').AsInteger
                                                           + tblMacho.FieldByName('Qtd_Morte').AsInteger
                                                           + tblMacho.FieldByName('Qtd_Elimin').AsInteger
                                                           + tblMacho.FieldByName('Qtd_Refugo').AsInteger
                                                           + tblMacho.FieldByName('Qtd_Descarte').AsInteger
                                                           - tblMacho.FieldByName('Qtd_Transf').AsInteger
                                                           - tblMacho.FieldByName('Qtd_Difer').AsInteger;
            // O campo cod_lote_num armazena o saldo armazenando no banco de dados
            tblMacho.FieldByName('Cod_Lote_Num').AsInteger := FieldByName('qtd_machos').AsInteger;
            tblMacho.Post;
          end
         else
          begin
            tblMacho.Insert;
            tblMacho.FieldByName('Nro_Box').AsInteger := FieldByName('Nro_Box').AsInteger;
            tblMacho.FieldByName('qtd_saldo').AsInteger := FieldByName('qtd_machos').AsInteger;
            // O campo cod_lote_num armazena o saldo armazenando no banco de dados
            tblMacho.FieldByName('Cod_Lote_Num').AsInteger := FieldByName('qtd_machos').AsInteger;
            tblMacho.Post;
          end;}


        //Procurar o registro
        RxFemea.first;
        vAchou := False;
        while (not RxFemea.Eof) and (not vAchou) do
        begin

           if RxFemea.fieldbyname('Nro_Box').asinteger =  FieldByName('Nro_Box').Asinteger then
           begin
              RxFemea.Edit;
              RxFemea.FieldByName('qtd_saldo').AsInteger := FieldByName('qtd_femeas').AsInteger
                                                           + RxFemea.FieldByName('Qtd_Morte').AsInteger
                                                           + RxFemea.FieldByName('Qtd_Elimin').AsInteger
                                                           + RxFemea.FieldByName('Qtd_Refugo').AsInteger
                                                           + RxFemea.FieldByName('Qtd_Descarte').AsInteger
                                                           - RxFemea.FieldByName('Qtd_Transf').AsInteger
                                                           - RxFemea.FieldByName('Qtd_Difer').AsInteger;
              RxFemea.FieldByName('Cod_Lote_Num').AsInteger := FieldByName('qtd_femeas').AsInteger;
              RxFemea.FieldByName('LADO').Asstring := FieldByName('LADO').Asstring;
              RxFemea.FieldByName('Categoria').Asstring := FieldByName('categoria').Asstring;
              RxFemea.FieldByName('idade_info').asinteger   := FieldByName('idade_inf_f').asinteger;
              RxFemea.Post;
              vAchou := True;
           end;
           RxFemea.Next;

        end;

        //Se nao achou o registro entao tem que inserir
        if not vAchou then
        begin
           RxFemea.append;
           RxFemea.edit;
           RxFemea.FieldByName('Nro_Box').AsInteger   := FieldByName('Nro_Box').AsInteger;
           RxFemea.FieldByName('qtd_saldo').AsInteger := FieldByName('qtd_femeas').AsInteger;
           RxFemea.FieldByName('pode_mudar_nro_box').AsBoolean := False;

           // O campo cod_lote_num armazena o saldo armazenando no banco de dados
           RxFemea.FieldByName('Cod_Lote_Num').AsInteger := FieldByName('qtd_femeas').AsInteger;
           RxFemea.FieldByName('LADO').Asstring          := FieldByName('LADO').Asstring;
           RxFemea.FieldByName('Categoria').Asstring     := FieldByName('categoria').Asstring;
           RxFemea.FieldByName('idade_info').asinteger   := FieldByName('idade_inf_f').asinteger;
           RxFemea.Post;

        end;

        {tblFemea.Filter := ' Nro_Box = ' + FieldByName('Nro_Box').AsString;

        if tblFemea.FindFirst then
          begin
            tblFemea.Edit;
            tblFemea.FieldByName('qtd_saldo').AsInteger := FieldByName('qtd_femeas').AsInteger
                                                           + tblFemea.FieldByName('Qtd_Morte').AsInteger
                                                           + tblFemea.FieldByName('Qtd_Elimin').AsInteger
                                                           + tblFemea.FieldByName('Qtd_Refugo').AsInteger
                                                           + tblFemea.FieldByName('Qtd_Descarte').AsInteger
                                                           - tblFemea.FieldByName('Qtd_Transf').AsInteger
                                                           - tblFemea.FieldByName('Qtd_Difer').AsInteger;
            // O campo cod_lote_num armazena o saldo armazenando no banco de dados
            tblFemea.FieldByName('Cod_Lote_Num').AsInteger := FieldByName('qtd_femeas').AsInteger;
            tblFemea.Post;
          end
         else
          begin
            tblFemea.Insert;
            tblFemea.FieldByName('Nro_Box').AsInteger := FieldByName('Nro_Box').AsInteger;
            tblFemea.FieldByName('qtd_saldo').AsInteger := FieldByName('qtd_femeas').AsInteger;
            // O campo cod_lote_num armazena o saldo armazenando no banco de dados
            tblFemea.FieldByName('Cod_Lote_Num').AsInteger := FieldByName('qtd_femeas').AsInteger;
            tblFemea.Post;
          end;}


        Next;
      end;
   RxFemea.first;
   RxFemea.SortOnFields('nro_box',true,false);
   RxFemea.first;

   vPode := true;
end;


procedure TFMovLote.AtualizaSaldoDeTransferencia();
var
  vTMacho , vSaldoMacho,
  vTFemea , vSaldoFemea :Integer;

  BookVoltaM, BookVoltaF : TBookmark;
begin
  vTMacho := vAvesTranMacho;
  vTFemea := vAvesTranFemea;
  vSaldoMacho := 0;
  vSaldoFemea := 0;
  RxFemea.DisableControls;
  // marca o registro corrente
 // BookVoltaM := RxMacho.GetBookmark;
  BookVoltaF := RxFemea.GetBookmark;

  try
    begin

      with RxFemea do
        begin
          First;
          while not Eof do
            begin
              vTFemea     := vTFemea - FieldByName('Qtd_Transf').AsInteger;
              vSaldoFemea := vSaldoFemea + FieldByName('Saldo').AsInteger;
              Next;
            end
       end;
     // lblMacho.Caption := IntToStr(vTMacho);
      lblFemea.Caption := IntToStr(vTFemea);
     // lblSaldoMacho.Caption := IntToStr(vSaldoMacho);
      lblSaldoFemea.Caption := IntToStr(vSaldoFemea);
    end;
  finally
    begin
     // RxMacho.EnableControls;
      RxFemea.EnableControls;
     // RxMacho.GotoBookmark(BookVoltaM);
      RxFemea.GotoBookmark(BookVoltaF);
     // RxMacho.FreeBookmark(BookVoltaM);
      RxFemea.FreeBookmark(BookVoltaF)
    end;
  end;
end;

procedure TFMovLote.detDat_MovtoChange(Sender: TObject);
begin
  DesativaTabela;
  QryIdadeEndereco.Close;
end;

procedure TFMovLote.DesativaTabela;
begin
 // RxMacho.Close;
  RxFemea.Close;
  RxOcorrencia.Close;
end;

function TFMovLote.BuscaMovimentoBoxExistente(vLote: integer; vDataMovimento: TDateTime):boolean;
begin
  Result := False;
  // Busca os movimentos atuais do banco de dados
  with qryBoxOriginal do
    begin
      Close;
      ParamByName('Lote').AsInteger := vLote;
      ParamByName('Data').AsDate := vDataMovimento;
      Open;
      Result := True;
    end;
end;

function TFMovLote.BuscaSaldoExistente(vLote: integer; vDataMovimento: TDateTime):boolean;
begin
  Result := False;
  // Busca os movimentos atuais do banco de dados
  with qrySaldoOriginal do
    begin
      Close;
      ParamByName('Lote').AsInteger := vLote;
      ParamByName('Data').AsDate := vDataMovimento;
      Open;
      Result := True;
    end;
end;


procedure TFMovLote.btnBoxClick(Sender: TObject);
var
  DataUltimoMovimento : TDateTime;
  vSelect,vwhere : string;

  procedure BuscaProd;
  begin

      vSelect := 'Select * From avfsmpo1 ';
      vWhere := 'Where Dat_Movto = :Dat_Movto and Cod_Lote_Num = :Cod_Lote_Num ';
      with QryBusca do
        begin
          SQL.Clear;
          SQL.Add(vSelect);
          SQL.Add(vWhere);
          ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
          ParamByName('Dat_Movto').AsDate := detDat_Movto.Date;
          Open;
          if RecordCount = 0
             then Exit;
      
          cedTot_Ovos_Dia.AsInteger := FieldByName('Tot_Ovos_Dia').AsInteger;

          cedPeso_Ovo.AsInteger     := FieldByName('Peso_Ovo').AsInteger;

        end;
      
      vSelect := 'Select * From avfsdpo1 ';
      vWhere := 'Where Dat_Movto = :Dat_Movto and Cod_Lote_Num = :Cod_Lote_Num ';
      with QryBusca do
        begin
          SQL.Clear;
          SQL.Add(vSelect);
          SQL.Add(vWhere);
          ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
          ParamByName('Dat_Movto').AsDate       := detDat_Movto.Date;
          Open;
          RxColeta.Close;
          RxColeta.Open;
          while not eof do
           begin
            RxColeta.append;
            RxColeta.edit;
            RxColeta.FieldByName('Nro_Coleta').AsInteger       := FieldByName('Nro_Coleta').AsInteger;
            RxColeta.FieldByName('qtd_ovos_aprov').AsInteger     := FieldByName('qtd_ovos_aprov').AsInteger;
            RxColeta.FieldByName('Dat_Movto').AsDateTime       := FieldByName('Dat_Movto').AsDateTime;
            RxColeta.FieldByName('Cod_Lote_Num').AsInteger     := FieldByName('Cod_Lote_Num').AsInteger;
            RxColeta.FieldByName('Qtd_Ovos_Amanhecidos').AsInteger := FieldByName('Qtd_Ovos_Amanhecidos').AsInteger ;
            RxColeta.FieldByName('Qtd_Ovos_Trincados').AsInteger   := FieldByName('Qtd_Ovos_Trincados').AsInteger;
            RxColeta.FieldByName('Qtd_Ovos_Vazados').AsInteger     := FieldByName('Qtd_Ovos_Vazados').AsInteger;
            RxColeta.FieldByName('Qtd_Ovos_Cama').AsInteger        := FieldByName('Qtd_Ovos_Cama').AsInteger;
            RxColeta.FieldByName('Peso_Ovo').AsInteger             := FieldByName('Peso_Ovo').AsInteger;
            RxColeta.FieldByName('Hor_Coleta').AsDateTime          := FieldByName('Hor_Coleta').AsDateTime;
            RxColeta.FieldByName('qtd_ovos_defeituosos').AsInteger := FieldByName('Qtd_Ovos_defeituosos').AsInteger;
            RxColeta.FieldByName('qtd_ovos_desc_cama').AsInteger   := FieldByName('Qtd_Ovos_desc_cama').AsInteger;
            RxColeta.FieldByName('qtd_ovos_ninho').AsInteger       := FieldByName('Qtd_Ovos_ninho').AsInteger;
            RxColeta.FieldByName('qtd_ovos_super').AsInteger       := FieldByName('Qtd_Ovos_super').AsInteger;
            RxColeta.FieldByName('qtd_ovos_pequenos').AsInteger    := FieldByName('Qtd_Ovos_pequenos').AsInteger;

            RxColeta.FieldByName('caixa_aprov').AsInteger := FieldByName('caixa_aprov').AsInteger     ;
            RxColeta.FieldByName('caixa_Bl').AsInteger := FieldByName('caixa_Bl').AsInteger     ;

            RxColeta.FieldByName('band_aprov').AsInteger  := FieldByName('band_aprov').AsInteger      ;
            RxColeta.FieldByName('unid_aprov').AsInteger  := FieldByName('unid_aprov').AsInteger      ;

            RxColeta.FieldByName('caixa_cama').AsInteger  := FieldByName('caixa_cama').AsInteger      ;
            RxColeta.FieldByName('band_cama').AsInteger   := FieldByName('band_cama').AsInteger       ;
            RxColeta.FieldByName('unid_cama').AsInteger   := FieldByName('unid_cama').AsInteger       ;

            RxColeta.Post;
      
            Next;
           end;
           RxColeta.Refresh;
        end;

  end;

  Procedure BuscaPeso;
  begin

     vSelect := 'Select m.* From avfsmpe1 m';
     vWhere := 'Where Dat_Movto = :Dat_Movto and Cod_Lote_Num = :Cod_Lote_Num  ';

     with QryBusca do
     begin
        SQL.Clear;
        SQL.Add(vSelect);
        SQL.Add(vWhere);
        ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
        ParamByName('Dat_Movto').AsDate := detDat_Movto.Date;
        Open;

        cedIntervalo.Value := 0;

        cedAmoPesoMedio.Value    := FieldByName('med_peso_lote').AsFloat;
        cedAmoUniformidade.Value := FieldByName('pct_unif_lote').AsFloat;
        cedAmoCV.Value           := FieldByName('coef_variacao').AsFloat;


        MontaAmostra(FieldByName('Dat_Movto').AsDateTime, FieldByName('Cod_Lote_Num').AsInteger, FieldByName('Sexo_Ave').AsString);
        vGridGerado := True;
       // gpbPesoAmostra.Visible := False;    

     end;

  end;

  Procedure BuscaRac;
  begin
     vSelect := 'Select m.*,r.des_abrev From avfsmer1 m, avfscra1 r';
     vWhere := 'Where Dat_Movto = :Dat_Movto and Cod_Lote_Num = :Cod_Lote_Num and m.cod_racao = r.cod_racao ';

     with QryBusca do
     begin
      SQL.Clear;
      SQL.Add(vSelect);
      SQL.Add(vWhere);
      ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
      ParamByName('Dat_Movto').AsDate := detDat_Movto.Date;
      Open;

      while not eof do
      begin

         if  FieldByName('qtd_entrada').AsFloat <> 0 then
         begin
           cedCod_Racao.AsInteger    := FieldByName('Cod_Racao').AsInteger;
           dlcRacao.keyvalue         := fieldbyname('Cod_Racao').asstring;
           cedQtd_Cons_Femea.Value   := FieldByName('qtd_entrada').AsFloat;
         end;


         next;
      end;
     end;

  end;


begin
  vDiaAberto := false;
  FMenu.ggeProgresso.MinValue := 0;
  FMenu.ggeProgresso.MaxValue := 100;
  FMenu.ggeProgresso.Progress := 0;
  FMenu.ggeProgresso.Visible := True;


  QryRacao.close;
  QryRacao.open;

  cedCod_Racao.Clear;
  dlcRacao.KeyValue := 0;
  cedQtd_Cons_Femea.Clear;

  cedTot_Ovos_Dia.Clear;

  cedPeso_Ovo.Clear;
  RxColeta.close;
  RxColeta.active := true;

  vPode := false;
  RxColeta.append;
  RxColetaNRO_COLETA.asinteger := 1;
  RxColeta.post;
  vPode := true;



  if not VerificaCampos then
     begin
       Exit;
       FMenu.ggeProgresso.Visible := False;
     end;

  FMenu.ggeProgresso.Progress := 10;

  RxFemea.DisableControls;
  RxOcorrencia.DisableControls;

  try
    begin

      FMenu.dbsManejo.StartTransaction;

      DataUltimoMovimento := GeraSaldoDiario(cedCod_Lote_Num.AsInteger, detDat_Movto.Date);
      FMenu.ggeProgresso.Progress := 20;

      BuscaMovimentoBoxExistente(cedCod_Lote_Num.AsInteger, detDat_Movto.Date);
      FMenu.ggeProgresso.Progress := 25;

      BuscaSaldoExistente(cedCod_Lote_Num.AsInteger, detDat_Movto.Date);
      FMenu.ggeProgresso.Progress := 30;

      PreencheMovimento;

      FMenu.ggeProgresso.Progress := 40;

      SaldoLoteDataAnterior(cedCod_Lote_Num.AsInteger, detDat_Movto.Date - 1);
      FMenu.ggeProgresso.Progress := 45;

      SaldoTransfAlojamento(cedCod_Lote_Num.AsInteger, detDat_Movto.Date);
      FMenu.ggeProgresso.Progress := 60;

      BuscaOcorrenciaCadastradas(cedCod_Lote_Num.AsInteger, detDat_Movto.Date);
      FMenu.ggeProgresso.Progress := 75;

      AtualizaSaldoDeTransferencia;
      FMenu.ggeProgresso.Progress := 100;

      // Faz com que os dados nao sejam alterados no banco de dados
      // até a CONFIMAÇÃO

      if FMenu.dbsManejo.InTransaction then
         FMenu.dbsManejo.Rollback;
///
      FMenu.ggeProgresso.Visible := False;
      RxFemea.EnableControls;
      RxOcorrencia.EnableControls;


      BuscaProd;
      BuscaPeso;
      BuscaRac;
       
    vDiaAberto := true;
    end;
  except
    on E: Exception do
      begin
        MessageDlg(Msg10003 + CHR(10) + '"' + E.Message + '".', mtError, [mbOk], 0);
        if FMenu.dbsManejo.InTransaction then
           FMenu.dbsManejo.Rollback;
        FMenu.ggeProgresso.Visible := False;
        RxFemea.EnableControls;
        RxOcorrencia.EnableControls;
      end;
  end;
end;

procedure TFMovLote.dgrFemeaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  try
   if (not RxFemea.IsEmpty) and
      (Shift = []) and
      (Key = 46)  and
      (MessageDlg(Msg00443, mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      RxFemea.Delete;
  except
  end;

end;

procedure TFMovLote.dgrOcorrenciaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  try
   if (not RxOcorrencia.IsEmpty) and
      (Shift = []) and
      (Key = 46) and
      (MessageDlg(Msg00443, mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      RxOcorrencia.Delete;
  except
  end;
end;


procedure TFMovLote.Adicionar1Click(Sender: TObject);
begin
  btnConfirmarClick(nil);
end;

procedure TFMovLote.Modificar1Click(Sender: TObject);
begin
   btnBoxClick(nil)
end;

procedure TFMovLote.detDat_MovtoExit(Sender: TObject);
begin
  if detDat_Movto.Date > 0 then
    with QryIdadeEndereco do
      begin
        ParamByName('Lote').AsInteger := cedCod_Lote_Num.AsInteger;
        ParamByName('Data').AsDate := detDat_Movto.Date;
        Open;
      end;

end;

procedure TFMovLote.RxFemeaAfterClose(DataSet: TDataSet);
begin
  // lblSaldoMachoAnterior.Caption := '0';
   lblSaldoFemeaAnterior.Caption := '0';
  // lblMacho.Caption := '0';
   lblFemea.Caption := '0';
  // lblSaldoMacho.Caption := '0';
   lblSaldoFemea.Caption := '0';
 //  Label35.Caption := '0';
   Label36.Caption := '0';
end;

procedure TFMovLote.RxFemeaAfterDelete(DataSet: TDataSet);
begin
   AtualizaSaldoDeTransferencia;
end;

procedure TFMovLote.RxFemeaAfterPost(DataSet: TDataSet);
begin
  AtualizaSaldoDeTransferencia;
end;

procedure TFMovLote.RxFemeaBeforeDelete(DataSet: TDataSet);
begin
    with DataSet do
    begin
      if (FieldByName('qtd_morte').AsInteger <> 0) or
         (FieldByName('qtd_elimin').AsInteger <> 0) or
         (FieldByName('qtd_refugo').AsInteger <> 0) or
         (FieldByName('qtd_descarte').AsInteger <> 0) or
         (FieldByName('qtd_difer').AsInteger <> 0) or
         (FieldByName('qtd_transf').AsInteger <> 0) or
         (FieldByName('saldo').AsInteger <> 0) then
        begin
         MessageDlg(Msg00493, mtInformation, [mbOK], 0);
         Abort;
         Exit;
        end

    end
end;

procedure TFMovLote.RxFemeaBeforePost(DataSet: TDataSet);
var
  Tabela :String;  // namea da tabela (macho ou femea)
begin
   if UpperCase(DataSet.Name) = 'RXMACHO'
      then Tabela := 'Machos'
      else Tabela := 'Fêmeas';

  // box deve ser informado no intervalo de [0 ... 999]
  if (DataSet.FieldByName('Nro_Box').AsInteger < 1) or
     (DataSet.FieldByName('Nro_Box').AsInteger > 999) then
     begin
       MessageDlg(Format(Msg00454,[Tabela]), mtInformation, [mbOK], 0);
       DataSet.FieldByName('Nro_Box').FocusControl;
       Abort;
       Exit;
     end;

{  // nenhum campo de movimentaçao foi informado
  if (ModoEntradaDeDados) and
     (DataSet.FieldByName('qtd_morte').AsInteger = 0 ) and
     (DataSet.FieldByName('qtd_elimin').AsInteger = 0) and
     (DataSet.FieldByName('qtd_refugo').AsInteger = 0) and
     (DataSet.FieldByName('qtd_descarte').AsInteger = 0) and
     (DataSet.FieldByName('qtd_difer').AsInteger = 0) and
     (DataSet.FieldByName('qtd_transf').AsInteger = 0) then
     begin
       MessageDlg(Msg00455, mtInformation, [mbOK], 0);
       DataSet.FieldByName('Qtd_Morte').FocusControl;
       Abort;
       Exit;
     end;
}

  // morte é um valor negativo
  if (DataSet.FieldByName('qtd_morte').AsInteger < 0) then
     begin
       MessageDlg(Format(Msg00456,['Morte',Tabela]), mtInformation, [mbOK], 0);
       DataSet.FieldByName('Qtd_Morte').FocusControl;
       Abort;
       Exit;
     end;

  // Eliminaçào é um valor negativo
  if (DataSet.FieldByName('qtd_elimin').AsInteger < 0) then
     begin
       MessageDlg(Format(Msg00456,['Elimin',Tabela]), mtInformation, [mbOK], 0);
       DataSet.FieldByName('qtd_elimin').FocusControl;
       Abort;
       Exit;
     end;

  // Refugo é um valor negativo
  if (DataSet.FieldByName('qtd_refugo').AsInteger < 0) then
     begin
       MessageDlg(Format(Msg00456,['Refugo',Tabela]), mtInformation, [mbOK], 0);
       DataSet.FieldByName('qtd_refugo').FocusControl;
       Abort;
       Exit;
     end;

  // Descarte é um valor negativo
  if (DataSet.FieldByName('qtd_descarte').AsInteger < 0) then
     begin
       MessageDlg(Format(Msg00456,['Descarte',Tabela]), mtInformation, [mbOK], 0);
       DataSet.FieldByName('qtd_descarte').FocusControl;
       Abort;
       Exit;
     end;
end;

procedure TFMovLote.RxFemeaCalcFields(DataSet: TDataSet);
begin
    with DataSet do
    begin
      // Atualiza o Saldo
      FieldByName('Saldo').AsInteger := (FieldByName('qtd_transf').AsInteger
                                         + FieldByName('qtd_difer').AsInteger
                                         + FieldByName('qtd_saldo').AsInteger)

                                         -
                                         (FieldByName('qtd_morte').AsInteger
                                         + FieldByName('qtd_elimin').AsInteger
                                         + FieldByName('qtd_refugo').AsInteger
                                         + FieldByName('qtd_descarte').AsInteger
                                         );
      FieldByName('Diferenca').AsInteger := FieldByName('Saldo').AsInteger -
                                            FieldByName('Cod_Lote_Num').AsInteger;
      if  FieldByName('idade_info').AsInteger <> 0 then
          FieldByName('dif_idade').AsInteger := FieldByName('idade_info').AsInteger - QryIdadeEndereco.fieldbyname('idade').asinteger
      else
          FieldByName('dif_idade').AsInteger := 0;


                                            // o campo Cod_Lote_Num sera usado para o Saldo Armazenado no banco de dados
    end;
end;

procedure TFMovLote.RxFemeaNewRecord(DataSet: TDataSet);
begin
   DataSet.FieldByName('DAT_MOVTO').asdatetime := 0;
   DataSet.FieldByName('sexo_ave').asstring    := 'F';
   DataSet.FieldByName('Saldo').asinteger        := 0 ;
   DataSet.FieldByName('Cod_Lote_Num').AsInteger := 0;
   DataSet.FieldByName('pode_mudar_nro_box').AsBoolean := True;
end;

procedure TFMovLote.RxMachoNewRecord(DataSet: TDataSet);
begin
   DataSet.FieldByName('DAT_MOVTO').asdatetime := 0;
   DataSet.FieldByName('sexo_ave').asstring    := 'M';
   DataSet.FieldByName('Saldo').asinteger        := 0 ;
   DataSet.FieldByName('Cod_Lote_Num').AsInteger := 0;
   DataSet.FieldByName('pode_mudar_nro_box').AsBoolean := True;
end;

procedure TFMovLote.RxMachoAfterClose(DataSet: TDataSet);
begin
 //  lblSaldoMachoAnterior.Caption := '0';
   lblSaldoFemeaAnterior.Caption := '0';
 // lblMacho.Caption := '0';
   lblFemea.Caption := '0';
  // lblSaldoMacho.Caption := '0';
   lblSaldoFemea.Caption := '0';

 //  Label35.Caption := '0';
   Label36.Caption := '0';

end;

procedure TFMovLote.RxMachoAfterDelete(DataSet: TDataSet);
begin
  AtualizaSaldoDeTransferencia;
end;

procedure TFMovLote.RxMachoAfterPost(DataSet: TDataSet);
begin
  AtualizaSaldoDeTransferencia;
end;

procedure TFMovLote.RxMachoBeforeDelete(DataSet: TDataSet);
begin
    with DataSet do
    begin
      if (FieldByName('qtd_morte').AsInteger <> 0) or
         (FieldByName('qtd_elimin').AsInteger <> 0) or
         (FieldByName('qtd_refugo').AsInteger <> 0) or
         (FieldByName('qtd_descarte').AsInteger <> 0) or
         (FieldByName('qtd_difer').AsInteger <> 0) or
         (FieldByName('qtd_transf').AsInteger <> 0) or
         (FieldByName('saldo').AsInteger <> 0) then
        begin
         MessageDlg(Msg00493, mtInformation, [mbOK], 0);
         Abort;
         Exit;
        end

    end
end;

procedure TFMovLote.RxMachoBeforePost(DataSet: TDataSet);
var
  Tabela :String;  // namea da tabela (macho ou femea)
begin
   if UpperCase(DataSet.Name) = 'TBLMACHO'
      then Tabela := 'Machos'
      else Tabela := 'Fêmeas';

  // box deve ser informado no intervalo de [0 ... 999]
  if (DataSet.FieldByName('Nro_Box').AsInteger < 1) or
     (DataSet.FieldByName('Nro_Box').AsInteger > 999) then
     begin
       MessageDlg(Format(Msg00454,[Tabela]), mtInformation, [mbOK], 0);
       DataSet.FieldByName('Nro_Box').FocusControl;
       Abort;
       Exit;
     end;

{  // nenhum campo de movimentaçao foi informado
  if (ModoEntradaDeDados) and
     (DataSet.FieldByName('qtd_morte').AsInteger = 0 ) and
     (DataSet.FieldByName('qtd_elimin').AsInteger = 0) and
     (DataSet.FieldByName('qtd_refugo').AsInteger = 0) and
     (DataSet.FieldByName('qtd_descarte').AsInteger = 0) and
     (DataSet.FieldByName('qtd_difer').AsInteger = 0) and
     (DataSet.FieldByName('qtd_transf').AsInteger = 0) then
     begin
       MessageDlg(Msg00455, mtInformation, [mbOK], 0);
       DataSet.FieldByName('Qtd_Morte').FocusControl;
       Abort;
       Exit;
     end;
}

  // morte é um valor negativo
  if (DataSet.FieldByName('qtd_morte').AsInteger < 0) then
     begin
       MessageDlg(Format(Msg00456,['Morte',Tabela]), mtInformation, [mbOK], 0);
       DataSet.FieldByName('Qtd_Morte').FocusControl;
       Abort;
       Exit;
     end;

  // Eliminaçào é um valor negativo
  if (DataSet.FieldByName('qtd_elimin').AsInteger < 0) then
     begin
       MessageDlg(Format(Msg00456,['Elimin',Tabela]), mtInformation, [mbOK], 0);
       DataSet.FieldByName('qtd_elimin').FocusControl;
       Abort;
       Exit;
     end;

  // Refugo é um valor negativo
  if (DataSet.FieldByName('qtd_refugo').AsInteger < 0) then
     begin
       MessageDlg(Format(Msg00456,['Refugo',Tabela]), mtInformation, [mbOK], 0);
       DataSet.FieldByName('qtd_refugo').FocusControl;
       Abort;
       Exit;
     end;

  // Descarte é um valor negativo
  if (DataSet.FieldByName('qtd_descarte').AsInteger < 0) then
     begin
       MessageDlg(Format(Msg00456,['Descarte',Tabela]), mtInformation, [mbOK], 0);
       DataSet.FieldByName('qtd_descarte').FocusControl;
       Abort;
       Exit;
     end;

end;

procedure TFMovLote.RxMachoCalcFields(DataSet: TDataSet);
begin
    with DataSet do
    begin
      // Atualiza o Saldo
      FieldByName('Saldo').AsInteger := (FieldByName('qtd_transf').AsInteger
                                         + FieldByName('qtd_difer').AsInteger
                                         + FieldByName('qtd_saldo').AsInteger)

                                         -
                                         (FieldByName('qtd_morte').AsInteger
                                         + FieldByName('qtd_elimin').AsInteger
                                         + FieldByName('qtd_refugo').AsInteger
                                         + FieldByName('qtd_descarte').AsInteger
                                         );
      FieldByName('Diferenca').AsInteger := FieldByName('Saldo').AsInteger -
                                            FieldByName('Cod_Lote_Num').AsInteger;

      if  FieldByName('idade_info').AsInteger <> 0 then
          FieldByName('dif_idade').AsInteger := FieldByName('idade_info').AsInteger - QryIdadeEndereco.fieldbyname('idade').asinteger
      else
          FieldByName('dif_idade').AsInteger := 0;
                                            // o campo Cod_Lote_Num sera usado para o Saldo Armazenado no banco de dados
    end;
end;

procedure TFMovLote.RxAtualizaSdaNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('Nro_Seq').AsInteger := 0;
end;

procedure TFMovLote.RxFemeaNRO_BOXChange(Sender: TField);
begin
//  if Not RxFemea.FieldByName('pode_mudar_nro_box').AsBoolean  then
//    RxFemea.FieldByName('nro_box').Value := RxFemea.FieldByName('nro_box').OldValue  ;
end;

procedure TFMovLote.RxFemeaNRO_BOXValidate(Sender: TField);
begin
  if not RxFemea.FieldByName('pode_mudar_nro_box').AsBoolean then
    begin
     MessageDlg(Msg00541, mtInformation, [mbOK], 0);
     abort;
    end
end;

procedure TFMovLote.Consulta1Click(Sender: TObject);
begin
   qryConsulta.close;
   qryConsulta.parambyname('cod_lote_num').asinteger := cedCod_Lote_Num.asinteger;
   qryConsulta.parambyname('data').asdatetime        := detDat_Movto.date;
   qryConsulta.open;
   if not qryConsulta.isempty then
   begin
      qerSubConsulta.close;
      qerSubConsulta.open;
      ntbPaginas.PageIndex := 2;
   end;
end;

procedure TFMovLote.BitBtn1Click(Sender: TObject);
begin
   qerSubConsulta.close;
   qryConsulta.close;   
   ntbPaginas.PageIndex := 0;
end;

procedure TFMovLote.BitBtn3Click(Sender: TObject);
begin


    RxFemea.first;
    while not RxFemea.eof do
    begin
       RxFemea.edit;

       RxFemeaqtd_morte.asinteger    := 0;
       RxFemeaqtd_elimin.asinteger   := 0;
       RxFemeaqtd_refugo.asinteger   := 0;
       RxFemeaqtd_descarte.asinteger := 0;

       RxFemea.post;
       RxFemea.next;
    end;





   RxOcorrencia.first;
   while not RxOcorrencia.eof do
   begin

      if (RxOcorrenciaqtd_morte_femea.asinteger <> 0) or
         (RxOcorrenciaqtd_elimin_femea.asinteger <> 0) or
         (RxOcorrenciaqtd_refugo_femea.asinteger <> 0) or
         (RxOcorrenciaqtd_descarte_femea.asinteger <> 0) then
      begin
        if RxFemea.Locate('NRO_BOX',RxOcorrenciabox.asinteger,[]) then
        begin
           RxFemea.edit;
           if (RxOcorrenciaqtd_morte_femea.asinteger <> 0)  then   RxFemeaqtd_morte.asinteger := RxFemeaqtd_morte.asinteger + RxOcorrenciaqtd_morte_femea.asinteger;
           if (RxOcorrenciaqtd_elimin_femea.asinteger <> 0) then   RxFemeaqtd_elimin.asinteger := RxFemeaqtd_elimin.asinteger + RxOcorrenciaqtd_elimin_femea.asinteger;
           if (RxOcorrenciaqtd_refugo_femea.asinteger <> 0) then   RxFemeaqtd_refugo.asinteger := RxFemeaqtd_refugo.asinteger + RxOcorrenciaqtd_refugo_femea.asinteger;
           if (RxOcorrenciaqtd_descarte_femea.asinteger <> 0) then RxFemeaqtd_descarte.asinteger := RxFemeaqtd_descarte.asinteger + RxOcorrenciaqtd_descarte_femea.asinteger;
           RxFemea.post;
        end;
      end;



      RxOcorrencia.next;
   end;
end;

procedure TFMovLote.edtCausaExit(Sender: TObject);
begin
   dlcCausa.keyvalue := edtCausa.text;
   if dlcCausa.Text = '' then
    begin
      OpcoesCausa(False, False, False, False, False, '');
    end
  else
    begin
      OpcoesCausa(ConvertIntToBoo(QryCausa.FieldByName('Flg_Morte').Asinteger),
              ConvertIntToBoo(QryCausa.FieldByName('Flg_Eliminacao').Asinteger),
              ConvertIntToBoo(QryCausa.FieldByName('Flg_Refugo').Asinteger),
              ConvertIntToBoo(QryCausa.FieldByName('Flg_Descarte').Asinteger),
              ConvertIntToBoo(QryCausa.FieldByName('Flg_Venda').Asinteger),
              QryCausa.FieldByName('Flg_Sexo').AsString);
    end;



end;

procedure TFMovLote.BitBtn4Click(Sender: TObject);
begin
   cedTot_Ovos_Dia.AsInteger      := 0;
   cedPeso_Ovo.value              := 0;


   cedTot_Ovos_Dia.AsInteger      := SomaTotalOvos(RxColeta);
   cedPeso_Ovo.value              := PesoOvos(RxColeta);
end;


function TFMovLote.SomaTotalOvos(RxColeta : TRxMemoryData): Integer;
var
  SomaOvos          : Integer;
  SomaOvosTrincados : Integer;
  SomaOvosVazados   : Integer;
  MarcaRegistro     : TBookmark;
begin
  SomaOvos := 0;
  SomaOvosTrincados := 0;
  SomaOvosVazados := 0;
  with RxColeta do
    begin
      MarcaRegistro := GetBookmark;
      First;
      DisableControls;
      while not eof do
        begin
          SomaOvos := SomaOvos + FieldByName('Qtd_Ovos_Coleta').AsInteger;
          SomaOvosTrincados := SomaOvosTrincados + FieldByName('Qtd_Ovos_Trincados').AsInteger;
          SomaOvosVazados := SomaOvosVazados + FieldByName('Qtd_Ovos_Vazados').AsInteger;
          
          Next;
        end;
      GotoBookmark(MarcaRegistro);
      FreeBookmark(MarcaRegistro);
      EnableControls;
    end;
  SomaTotalOvos := SomaOvos;
end;


function TFMovLote.PesoOvos(RxColeta : TRxMemoryData): real;
var
  SomaPesagem      : Integer;
  SomaPesos     : real;
  MarcaRegistro : TBookmark;
begin
  Result := 0;
  SomaPesagem := 0;
  SomaPesos := 0;
  with RxColeta do
    begin
      MarcaRegistro := GetBookmark;
      First;
      DisableControls;
      while not eof do
       if FieldByName('Peso_Ovo').asfloat > 0
         then
           begin
             SomaPesos := SomaPesos + FieldByName('Peso_Ovo').Asfloat;
             inc(SomaPesagem);
             Next;
           end
         else Next;

      GotoBookmark(MarcaRegistro);
      FreeBookmark(MarcaRegistro);
      EnableControls;
    end;
  if SomaPesagem > 0 then PesoOvos := (SomaPesos / SomaPesagem);
end;

procedure TFMovLote.RxColetaBeforePost(DataSet: TDataSet);
var SomaOvos : integer;
begin
   if vPode then
  begin

if (DataSet.FieldByName('Nro_Coleta').AsInteger <= 0) and
     (DataSet.FieldByName('qtd_ovos_amanhecidos').AsInteger <= 0) and
     (DataSet.FieldByName('qtd_ovos_trincados').AsInteger <= 0) and
     (DataSet.FieldByName('qtd_ovos_vazados').AsInteger <= 0) and
     (DataSet.FieldByName('qtd_ovos_cama').AsInteger <= 0) and
     (DataSet.FieldByName('qtd_ovos_defeituosos').AsInteger <= 0) and
     (DataSet.FieldByName('qtd_ovos_desc_cama').AsInteger <= 0) and
     (DataSet.FieldByName('qtd_ovos_ninho').AsInteger <= 0) and
     (DataSet.FieldByName('qtd_ovos_super').AsInteger <= 0) and
     (DataSet.FieldByName('qtd_ovos_pequenos').AsInteger <= 0) and
     (DataSet.FieldByName('qtd_ovos_aprov').AsInteger <= 0) and
     (DataSet.FieldByName('Qtd_Ovos_Coleta').AsInteger <= 0) and
     (DataSet.FieldByName('Peso_Ovo').AsInteger <= 0)
     then
    begin
      DataSet.Cancel;
      Abort;
    end;

  if DataSet.FieldByName('Nro_Coleta').AsInteger > 0 then
    begin
      DataSet.FieldByName('Dat_Movto').AsDateTime := detDat_Movto.Date;
      DataSet.FieldByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
    end
  else
    begin
      MessageDlg(Msg00322, mtInformation, [mbOK], 0);
      DataSet.FieldByName('Nro_Coleta').FocusControl;
      Abort;
    end;


  if DataSet.FieldByName('qtd_ovos_aprov').AsInteger < 0 then
    begin
      MessageDlg(Format(Msg00486,['Ovos Bons']), mtInformation, [mbOK], 0);
      DataSet.FieldByName('qtd_ovos_aprov').FocusControl;
      Abort;
    end;

  if DataSet.FieldByName('Qtd_Ovos_Cama').AsInteger < 0 then
    begin
      MessageDlg(Format(Msg00486,['Cama Incubáveis']), mtInformation, [mbOK], 0);
      DataSet.FieldByName('Qtd_Ovos_Cama').FocusControl;
      Abort;
    end;

  if DataSet.FieldByName('qtd_ovos_defeituosos').AsInteger < 0 then
    begin
      MessageDlg(Format(Msg00486,['Defeituosos']), mtInformation, [mbOK], 0);
      DataSet.FieldByName('qtd_ovos_defeituosos').FocusControl;
      Abort;
    end;

  if DataSet.FieldByName('qtd_ovos_desc_cama').AsInteger < 0 then
    begin
      MessageDlg(Format(Msg00486,['Descarte de Cama']), mtInformation, [mbOK], 0);
      DataSet.FieldByName('qtd_ovos_desc_cama').FocusControl;
      Abort;
    end;

  if DataSet.FieldByName('qtd_ovos_ninho').AsInteger < 0 then
    begin
      MessageDlg(Format(Msg00486,['Descarte dos Ninhos']), mtInformation, [mbOK], 0);
      DataSet.FieldByName('qtd_ovos_ninho').FocusControl;
      Abort;
    end;

  if DataSet.FieldByName('qtd_ovos_super').AsInteger < 0 then
    begin
      MessageDlg(Format(Msg00486,['Ovos Super']), mtInformation, [mbOK], 0);
      DataSet.FieldByName('qtd_ovos_super').FocusControl;
      Abort;
    end;

  if DataSet.FieldByName('qtd_ovos_pequenos').AsInteger < 0 then
    begin
      MessageDlg(Format(Msg00486,['Ovos Pequenos']), mtInformation, [mbOK], 0);
      DataSet.FieldByName('qtd_ovos_pequenos').FocusControl;
      Abort;
    end;

  if DataSet.FieldByName('Qtd_Ovos_Trincados').AsInteger < 0 then
    begin
      MessageDlg(Msg00470, mtInformation, [mbOK], 0);
      DataSet.FieldByName('Qtd_Ovos_Trincados').FocusControl;
      Abort;
    end;

  if DataSet.FieldByName('Qtd_Ovos_Vazados').AsInteger < 0 then
    begin
      MessageDlg(Format(Msg00486,['Ovos Quebrados']), mtInformation, [mbOK], 0);
      DataSet.FieldByName('Qtd_Ovos_Vazados').FocusControl;
      Abort;
    end;

  if DataSet.FieldByName('Qtd_Ovos_Amanhecidos').AsInteger < 0 then
    begin
      MessageDlg(Format(Msg00486,['Ovos Amanhecidos']), mtInformation, [mbOK], 0);
      DataSet.FieldByName('Qtd_Ovos_Amanhecidos').FocusControl;
      Abort;
    end;

 { if DataSet.FieldByName('Qtd_Ovos_Coleta').AsInteger <= 0 then
    begin
      MessageDlg(Format(Msg00486,['Total de Ovos']), mtInformation, [mbOK], 0);
      DataSet.FieldByName('Qtd_Ovos_Coleta').FocusControl;
      Abort;
    end;}

  // verifica se o valor é um valor maior que zero
  if DataSet.FieldByName('Peso_Ovo').AsInteger < 0 then
    begin
      MessageDlg(Format(Msg00486,['Peso Médio']), mtInformation, [mbOK], 0);
      DataSet.FieldByName('Peso_Ovo').FocusControl;
      Abort;
    end;

  SomaOvos := DataSet.FieldByName('qtd_ovos_amanhecidos').AsInteger +
              //DataSet.FieldByName('qtd_ovos_trincados').AsInteger +
              //DataSet.FieldByName('qtd_ovos_vazados').AsInteger +
              DataSet.FieldByName('qtd_ovos_cama').AsInteger +
              DataSet.FieldByName('qtd_ovos_defeituosos').AsInteger +
              DataSet.FieldByName('qtd_ovos_desc_cama').AsInteger +
              DataSet.FieldByName('qtd_ovos_ninho').AsInteger +
              //DataSet.FieldByName('qtd_ovos_super').AsInteger +
              DataSet.FieldByName('qtd_ovos_pequenos').AsInteger +
              DataSet.FieldByName('qtd_ovos_aprov').AsInteger              +
              (DataSet.FieldByName('caixa_Bl').asinteger *  cedOvoCaixa.asinteger)
              ;

  if DataSet.FieldByName('Qtd_Ovos_Coleta').AsInteger <> SomaOvos
     then
    begin
      MessageDlg(Msg00487, mtInformation, [mbOK], 0);
      DataSet.FieldByName('Qtd_Ovos_Coleta').FocusControl;
      Abort;
    end;

{  if DataSet.FieldByName('Hor_Coleta').AsDateTime = 0 then
    begin
      tstPrincipal.TabIndex := 1;
      ntbPaginas.PageIndex := tstPrincipal.TabIndex;
      MessageDlg(Msg00324, mtInformation, [mbOK], 0);
      DataSet.FieldByName('Hor_Coleta').FocusControl;
      Abort;
    end;
}
 end;
end;

procedure TFMovLote.RxColetaCalcFields(DataSet: TDataSet);
begin
 

   RxColetaqtd_ovos_coleta.asinteger :=
              RxColeta.FieldByName('qtd_ovos_amanhecidos').AsInteger +
              //RxColeta.FieldByName('qtd_ovos_trincados').AsInteger +
              //RxColeta.FieldByName('qtd_ovos_vazados').AsInteger +
              RxColeta.FieldByName('qtd_ovos_cama').AsInteger +
              RxColeta.FieldByName('qtd_ovos_defeituosos').AsInteger +
              RxColeta.FieldByName('qtd_ovos_desc_cama').AsInteger +
              RxColeta.FieldByName('qtd_ovos_ninho').AsInteger +
              //RxColeta.FieldByName('qtd_ovos_super').AsInteger +
              RxColeta.FieldByName('qtd_ovos_pequenos').AsInteger +
              RxColeta.FieldByName('qtd_ovos_aprov').AsInteger +
              (RxColeta.FieldByName('caixa_Bl').asinteger *  cedOvoCaixa.asinteger);


end;

procedure TFMovLote.dlcRacaoCloseUp(Sender: TObject);
begin
   cedCod_Racao.AsInteger := QryRacao.FieldByName('Cod_Racao').AsInteger;
   SelectNext(ActiveControl, True, True);
end;

procedure TFMovLote.RxColetaAfterDelete(DataSet: TDataSet);
begin
   cedTot_Ovos_Dia.AsInteger      := SomaTotalOvos(RxColeta);
   cedPeso_Ovo.value              := PesoOvos(RxColeta);
end;



// Função para Buscar o Cadastro de Coletas
function TFMovLote.AdicionaMovto(vData : TDateTime; vLote : Integer; vOvos, vPeso : Integer; vFertilidade, vPeso_Espec : Real): Boolean;
var
  vDeletePeso    : String;
  vWherePeso     : String;
  vDeletePerdas  : String;
  vWherePerdas   : String;
  vDeleteColetas : String;
  vWhereColetas  : String;
  vDeleteMovto   : String;
  vWhereMovto    : String;
  vSelect        : String;
  vCampos        : String;
  vValues        : String;
begin
  inherited;
  // Remove todos os registros de Peso Específico relacionados com o Lote
  vDeletePeso := 'Delete From avfsdpe1 ';
  vWherePeso := 'Where Dat_Movto = :Dat_Movto and Cod_Lote_Num = :Cod_Lote_Num ';
  with QryOperacao do
  begin
    close;
    sql.text := vDeletePeso+vWherePeso;
    ParamByName('Dat_Movto').AsDateTime := detDat_Movto.Date;
    ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
    ExecSQL;
  end;

  // Remove todos os registros de Perdas relacionados com o Lote
  vDeletePerdas := 'Delete From avfsper1 ';
  vWherePerdas := 'Where Dat_Movto = :Dat_Movto and Cod_Lote_Num = :Cod_Lote_Num ';
  with QryOperacao do
  begin
    close;
    sql.text := vDeletePerdas+vWherePerdas;
    ParamByName('Dat_Movto').AsDateTime := detDat_Movto.Date;
    ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
    ExecSQL;
  end;

  // Remove todos os registros de Coletas relacionados com o Lote
  vDeleteColetas := 'Delete From avfsdpo1 ';
  vWhereColetas := 'Where Dat_Movto = :Dat_Movto and Cod_Lote_Num = :Cod_Lote_Num ';
  with QryOperacao do
  begin
    close;
    sql.text := vDeleteColetas+vWhereColetas;
    ParamByName('Dat_Movto').AsDateTime := detDat_Movto.Date;
    ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
    ExecSQL;
  end;


  // Remove todos os registros do Movimento relacionados com o Lote
  vDeleteMovto := 'Delete From avfsmpo1 ';
  vWhereMovto := 'Where Dat_Movto = :Dat_Movto and Cod_Lote_Num = :Cod_Lote_Num ';
  with QryOperacao do
  begin
    close;
    sql.text := vDeleteMovto+vWhereMovto;
    ParamByName('Dat_Movto').AsDateTime := detDat_Movto.Date;
    ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
    ExecSQL;
  end;


  vSelect := 'Insert Into avfsmpo1 ';
  vCampos := 'Dat_Movto, Cod_Lote_Num, Tot_Ovos_Dia, Fertilidade, Peso_Ovo, Peso_Especifico_Medio ';
  vValues := ':Dat_Movto, :Cod_Lote_Num, :Tot_Ovos_Dia, :Fertilidade, :Peso_Ovo, :Peso_Especifico_Medio ';
    begin
      InsertDados(QryOperacao, vSelect, vCampos, vValues);


      with QryOperacao do
        begin
          ParamByName('Dat_Movto').AsDateTime   := detDat_Movto.Date;
          ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
          ParamByName('Tot_Ovos_Dia').AsInteger := cedTot_Ovos_Dia.AsInteger;
          ParamByName('Fertilidade').AsFloat    := 0;
          ParamByName('Peso_Ovo').AsInteger     := cedPeso_Ovo.AsInteger;
          ParamByName('Peso_Especifico_Medio').AsFloat := 0;
          ExecSQL;
        end;
      Result := True;
    end;
end;



function TFMovLote.AdicionaColetaOvos: Boolean;
var
  MarcaRegistro : TBookmark;
begin
  inherited;
  QryOperacao.SQL.Text := 'Insert Into avfsdpo1 ';
  QryOperacao.SQL.Add(' (nro_coleta,dat_movto,cod_lote_num,qtd_ovos_coleta,qtd_ovos_amanhecidos,qtd_ovos_trincados,qtd_ovos_vazados,qtd_ovos_cama,peso_ovo,hor_coleta,qtd_ovos_defeituosos,qtd_ovos_desc_cama,qtd_ovos_ninho,qtd_ovos_super,'+'qtd_ovos_pequenos,qtd_ovos_aprov,caixa_aprov,caixa_Bl,band_aprov,unid_aprov,caixa_cama,band_cama,unid_cama) ');
  QryOperacao.SQL.Add(' values (:nro_coleta,:dat_movto,:cod_lote_num,:qtd_ovos_coleta,:qtd_ovos_amanhecidos,:qtd_ovos_trincados,:qtd_ovos_vazados,:qtd_ovos_cama,:peso_ovo,:hor_coleta,:qtd_ovos_defeituosos,:qtd_ovos_desc_cama,:qtd_ovos_ninho,:qtd_ovos_super, ');
  QryOperacao.SQL.Add(' :qtd_ovos_pequenos,:qtd_ovos_aprov,:caixa_aprov,:caixa_Bl,:band_aprov,:unid_aprov,:caixa_cama,:band_cama,:unid_cama)');

      with RxColeta do
        begin
          MarcaRegistro := GetBookmark;
          First;
          DisableControls;
          while not eof do
            begin
              with QryOperacao do
                begin
                  ParamByName('Nro_Coleta').AsInteger           := RxColeta.FieldByName('Nro_Coleta').AsInteger;
                  ParamByName('Dat_Movto').AsDateTime           := detDat_Movto.Date;
                  ParamByName('Cod_Lote_Num').AsInteger         := cedCod_Lote_Num.AsInteger;
                  ParamByName('Qtd_Ovos_Coleta').AsInteger      := RxColeta.FieldByName('Qtd_Ovos_Coleta').AsInteger;
                  ParamByName('Qtd_Ovos_Amanhecidos').AsInteger := RxColeta.FieldByName('Qtd_Ovos_Amanhecidos').AsInteger;
                  ParamByName('Qtd_Ovos_Trincados').AsInteger   := RxColeta.FieldByName('Qtd_Ovos_Trincados').AsInteger;
                  ParamByName('Qtd_Ovos_Vazados').AsInteger     := RxColeta.FieldByName('Qtd_Ovos_Vazados').AsInteger;
                  ParamByName('Qtd_Ovos_Cama').AsInteger        := RxColeta.FieldByName('Qtd_Ovos_Cama').AsInteger;
                  ParamByName('Peso_Ovo').AsInteger             := RxColeta.FieldByName('Peso_Ovo').AsInteger;
                  ParamByName('Hor_Coleta').AsDateTime          := RxColeta.FieldByName('Hor_Coleta').AsDateTime;
                  ParamByName('qtd_ovos_defeituosos').AsInteger := RxColeta.FieldByName('Qtd_Ovos_defeituosos').AsInteger;
                  ParamByName('qtd_ovos_desc_cama').AsInteger   := RxColeta.FieldByName('Qtd_Ovos_desc_cama').AsInteger;
                  ParamByName('qtd_ovos_ninho').AsInteger       := RxColeta.FieldByName('Qtd_Ovos_ninho').AsInteger;
                  ParamByName('qtd_ovos_super').AsInteger       := RxColeta.FieldByName('Qtd_Ovos_super').AsInteger;
                  ParamByName('qtd_ovos_pequenos').AsInteger    := RxColeta.FieldByName('Qtd_Ovos_pequenos').AsInteger;
                  ParamByName('qtd_ovos_aprov').AsInteger       := RxColeta.FieldByName('Qtd_Ovos_aprov').AsInteger;
                  ParamByName('caixa_aprov').AsInteger          := RxColeta.FieldByName('caixa_aprov').AsInteger;
                  ParamByName('caixa_Bl').AsInteger             := RxColeta.FieldByName('caixa_Bl').AsInteger;
                  ParamByName('band_aprov').AsInteger           := RxColeta.FieldByName('band_aprov').AsInteger;
                  ParamByName('unid_aprov').AsInteger           := RxColeta.FieldByName('unid_aprov').AsInteger;
                  ParamByName('caixa_cama').AsInteger           := RxColeta.FieldByName('caixa_cama').AsInteger;
                  ParamByName('band_cama').AsInteger            := RxColeta.FieldByName('band_cama').AsInteger;
                  ParamByName('unid_cama').AsInteger            := RxColeta.FieldByName('unid_cama').AsInteger; 
                  ExecSQL;
                end;
              Next;
            end;
          GotoBookmark(MarcaRegistro);
          FreeBookmark(MarcaRegistro);
          EnableControls;
        end;
  Result := True;
end;


function TFMovLote.BuscaSaldoDiario(vLote: Integer; vData: TDateTime): Boolean;
begin
  with QryBuscaSda do
    begin
      Close;
      ParamByName('Lote').AsInteger := vLote;
      ParamByName('Data').AsDate := vData;
      Open;
      vAvesMachos := FieldByName('Machos').AsInteger;
      vAvesFemeas := FieldByName('Femeas').AsInteger;
      Result := True;
    end;
end;

function TFMovLote.BuscaPercentual(vLote: Integer): Integer;
begin
  with QryBuscaPercentual do
    begin
      Close;
      ParamByName('Lote').AsInteger := vLote;
      Open;
      Result := FieldByName('Pct_Producao').AsInteger;
    end;
end;



function TFMovLote.AcertoProducao(vLote, vIdade, vMachos, vFemeas: Integer): Boolean;
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



function TFMovLote.AtualizaInicioProducao(vLote: Integer): Boolean;
begin
  with QryAtualizaInicioProducao do
    begin
      Close;
      ParamByName('Lote').AsInteger := vLote;
      ExecSQL;
      Result := True;
    end;
end;



// Função para verificar se os campos estão preenchidos
function TFMovLote.VerificaCamposProd: Boolean;
var
  vSelect    : String;
  vWhere     : String;
  vTrincados : Integer;
  vVazados   : Integer;
  vPerdas    : Integer;
begin
  Result := False;
  cedTot_Ovos_Dia.AsInteger      := SomaTotalOvos(RxColeta);
  cedPeso_Ovo.value          := PesoOvos(RxColeta);

  // verifica se o campo data foi preenchido ou se é uma data válida
  if VerificaData(detDat_Movto.Text) = 0 then
    begin
      MessageDlg(Msg00321, mtInformation, [mbOK], 0);
      if detDat_Movto.Enabled then detDat_Movto.SetFocus;
      Exit;
    end;

  if detDat_Movto.date > date  then
    begin
      MessageDlg(Msg00535, mtInformation, [mbOK], 0);
      try if detDat_Movto.Enabled then detDat_Movto.SetFocus; except end;
      Exit;
    end;


  // verifica se o lote está cadastrado no banco de dados
  if not(BuscaRegistro(QryBusca, 'Select * From avfslot1 ',
                                 'Where Cod_Lote_Num = ' + IntToStr(cedCod_Lote_Num.AsInteger)))
  then
    begin
      MessageDlg(Msg00122, mtInformation, [mbOK], 0);
      if cedCod_Lote_Num.Enabled then cedCod_Lote_Num.SetFocus;
      Exit;
    end;

  // verifica se o Lote é um Lote Agrupado
  if UpperCase(QryBusca.FieldByName('Ide_Espec').AsString) = 'J' then
    begin
      MessageDlg(Msg00381, mtInformation, [mbOK], 0);
      if cedCod_Lote_Num.Enabled then cedCod_Lote_Num.SetFocus;
      Exit;
    end;

  // verifica se o Lote é lote de terceiros
  if Not ConvertIntToBoo(QryBusca.FieldByName('lote_proprio').Asinteger)  then
    begin
      MessageDlg(Msg00502, mtInformation, [mbOK], 0);
      if cedCod_Lote_Num.Enabled then cedCod_Lote_Num.SetFocus;
      Exit;
    end;


  // verifica se o Lote esta ativo
  if QryBusca.FieldByName('Dat_Efet_Desc').AsDateTime <> StrToDate('01/01/1900') then
    begin
      MessageDlg(Msg00197, mtInformation, [mbOK], 0);
      if cedCod_Lote_Num.Enabled then cedCod_Lote_Num.SetFocus;
      Exit;
    end;
            
  // data do movimento >= data media de nascimento do lote
  if detDat_Movto.Date < QryBusca.FieldByName('Dat_Aloj_Inicial').AsDateTime then
    begin
      MessageDlg(Msg00196, mtInformation, [mbOK], 0);
      if detDat_Movto.Enabled then detDat_Movto.SetFocus;
      Exit;
    end;

  // Existe idade para a data de movto
  if not VerificaExisteIdadeParaData(QryBusca, cedCod_Lote_Num.AsInteger, detDat_Movto.Date) then
    begin
      MessageDlg(Msg00382, mtInformation, [mbOK], 0);
      if detDat_Movto.Enabled then detDat_Movto.SetFocus;
      Exit;
    end;





  // verifica se existe ovos cadatrados para o movimento
  if cedTot_Ovos_Dia.AsInteger <= 0 then
    begin
      MessageDlg(Msg00464, mtInformation, [mbOK], 0);
      if cedTot_Ovos_Dia.Enabled then cedTot_Ovos_Dia.SetFocus;
      Exit;
    end;



  // verifica se existe coletas duplicadas
  if VerificaColetas then
    begin
      MessageDlg(Msg00468, mtInformation, [mbOK], 0);
      Exit;
    end;

 Result := True;
end;

function TFMovLote.VerificaColetas: Boolean;
var
  MarcaRegistro : TBookMark;
begin
  Result := False;
  // verifica se já existe uma perda cadastrada para o lote
  with RxColeta do
    begin
      MarcaRegistro := GetBookmark;
      First;
      DisableControls;
      ListaColetas := [];  // Define a variável Lista Telas como nulo(vazio)
      while not eof do
        begin
          if FieldByName('Nro_Coleta').AsInteger in ListaColetas then Result := True;
          ListaColetas := ListaColetas + [FieldByName('Nro_Coleta').AsInteger];
          Next;
        end;
      GotoBookmark(MarcaRegistro);
      FreeBookmark(MarcaRegistro);
      EnableControls;
    end;
end;

procedure TFMovLote.dlcRacaoMacCloseUp(Sender: TObject);
begin
   SelectNext(ActiveControl, True, True);
end;

procedure TFMovLote.medHor_Fim_MKeyPress(Sender: TObject; var Key: Char);
begin
   if uppercase(key) = 'B' then
   begin
     ntbPag.ActivePage := TabSheet2;
     cedBox.SetFocus;
   end;
end;

procedure TFMovLote.BitBtn2Click(Sender: TObject);
begin
   try
      FMenu.dbsManejo.StartTransaction;

      qryLimpaSda.close;
      qryLimpaSda.parambyname('cod_lote_num').asinteger := cedCod_Lote_Num.ASINTEGER;
      qryLimpaSda.parambyname('data').asdatetime        := detDat_Movto.DATE;
      qryLimpaSda.EXECSQL;

      qryLimpaSda2.close;
      qryLimpaSda2.parambyname('cod_lote_num').asinteger := cedCod_Lote_Num.ASINTEGER;
      qryLimpaSda2.parambyname('data').asdatetime        := detDat_Movto.DATE;
      qryLimpaSda2.EXECSQL;


      qryDiasAjustar.close;
      qryDiasAjustar.parambyname('cod_lote_num').asinteger := cedCod_Lote_Num.ASINTEGER;
      qryDiasAjustar.parambyname('data').asdatetime        := detDat_Movto.DATE;
      qryDiasAjustar.open;
      
      while not qryDiasAjustar.eof do
      begin
      
         qryAjustar.close;
         qryAjustar.parambyname('cod_lote_num').asinteger := qryDiasAjustarCOD_LOTE_NUM.asinteger;
         qryAjustar.parambyname('nro_box').asinteger      := qryDiasAjustarnro_box.asinteger;
         qryAjustar.parambyname('data').asdatetime        := qryDiasAjustarDATA.asdatetime;
         qryAjustar.execsql;
      
      
         qryDiasAjustar.next;
      end;
      MessageDlg('Saldo Atualizado!', mtInformation, [mbOK], 0);
      FMenu.dbsManejo.Commit;
   except
      FMenu.dbsManejo.Rollback;
      Application.HandleException(qryAjustar);
   end;
end;

procedure TFMovLote.BitBtn6Click(Sender: TObject);
begin
   if (Not vGridGerado) and (Not ModoUpdate) then
     GeraGridAmostra;
   vGridGerado := True;  
end;

procedure TFMovLote.cedPesoInicialChange(Sender: TObject);
begin
   vGridGerado := False;
end;

procedure TFMovLote.cedPesoFinalChange(Sender: TObject);
begin
   vGridGerado := False;
end;

procedure TFMovLote.cedIntervaloChange(Sender: TObject);
begin
   vGridGerado := False;
end;

procedure TFMovLote.BitBtn7Click(Sender: TObject);
begin
   AtualizaCalculoGalpao;
end;

procedure TFMovLote.spdBoxAdicionaBoxClick(Sender: TObject);
begin
if cedBoxAmostra.AsInteger <= 0 then
    begin
// erro
      Exit;
    end;

  if (ExisteAmostraBox(cedBoxAmostra.AsInteger)) = 0  // nao existe o box
    then
      begin
        stgAmostra.RowCount := stgAmostra.RowCount + 1;
        stgAmostra.Rows[stgAmostra.RowCount - 1].Clear;
        stgAmostra.Cells[0, stgAmostra.RowCount - 1] := IntToStr(cedBoxAmostra.AsInteger);
        cedBoxAmostra.AsInteger := 0;
      end
    else
      begin
        // erro
        Exit;
      end;
end;

procedure TFMovLote.spdBoxRemoveBoxClick(Sender: TObject);
var
  vI, vAuxLin, vLin : Integer;
  vTemp : TStringGrid;
begin
  inherited;

  vLin := ExisteAmostraBox(cedBoxAmostra.AsInteger);
  if vLin <> 0  // nao existe o box
    then
      begin
        vTemp := TStringGrid.Create(nil);
        vTemp.ColCount := stgAmostra.ColCount;
        vTemp.RowCount := stgAmostra.RowCount - 1;
        vAuxLin := 0;
        for vI := 0 to stgAmostra.RowCount - 1 do
         if vI <> vLin then
           begin
             vTemp.Rows[vAuxLin] := stgAmostra.Rows[vI];
             inc(vAuxLin);
           end;

        stgAmostra.ColCount := vTemp.ColCount;
        stgAmostra.RowCount := vTemp.RowCount;
        for vI := 0 to vTemp.RowCount - 1 do
             stgAmostra.Rows[vI] := vTemp.Rows[vI];
        cedBoxAmostra.AsInteger := 0;
      end
    else
      begin
// erro
        Exit;
      end;
end;

procedure TFMovLote.spdBoxAdicionaPesoClick(Sender: TObject);
begin
if cedPesoAmostra.Value <= 0 then
    begin
      Exit;
    end;  

  if (ExisteAmostraPeso(cedPesoAmostra.Value)) = 0  // nao existe o box
    then
      begin
        stgAmostra.ColCount := stgAmostra.ColCount + 1;
        stgAmostra.Rows[stgAmostra.ColCount - 1].Clear;
        stgAmostra.Cells[stgAmostra.ColCount - 1, 0 ] := FloatToStr(cedPesoAmostra.Value);
        cedPesoAmostra.AsInteger := 0;
      end
    else
      begin
// erro
        Exit;
      end;
end;

procedure TFMovLote.spdBoxRemovePesoClick(Sender: TObject);
var
  vJ, vAuxCol, vCol : Integer;
  vTemp : TStringGrid;
begin
  inherited;
  vCol := ExisteAmostraPeso(cedPesoAmostra.Value);
  if vCol <> 0  // nao existe o box
    then
      begin
        vTemp := TStringGrid.Create(nil);
        vTemp.ColCount := stgAmostra.ColCount - 1;
        vTemp.RowCount := stgAmostra.RowCount;
        vAuxCol := 0;
        for vJ := 0 to stgAmostra.ColCount - 1 do
         if vJ <> vCol then
           begin
             vTemp.Cols[vAuxCol] := stgAmostra.Cols[vJ];
             inc(vAuxCol);
           end;

        stgAmostra.ColCount := vTemp.ColCount;
        stgAmostra.RowCount := vTemp.RowCount;
        for vJ := 0 to vTemp.ColCount - 1 do
             stgAmostra.Cols[vJ] := vTemp.Cols[vJ];

        cedPesoAmostra.AsInteger := 0;
      end
    else
      begin
// erro
        Exit;
      end;
end;



procedure TFMovLote.AtualizaCalculoGalpao();
var
  vPesoM,
  vUnif,
  vCV        : Double;
  vFaixaUnif : Integer;




begin
  if vGridGerado then
    begin
      if cedIntervalo.Value = 0 then
        begin
          MessageDlg(Msg00501, mtInformation, [mbOK], 0);
          try cedIntervalo.SetFocus except; end;
          cedAmoPesoMedio.Text    := FormatFloat('#,###0.000',0);
          cedAmoUniformidade.Text := FormatFloat('#,##0.00',0);
          cedAmoCV.Text           := FormatFloat('#,##0.00',0);
          Exit;
        end;


      vFaixaUnif :=10;
      CalculaDadosAmostra(vPesoM, vUnif, vCV,vFaixaUnif,0);
      cedAmoPesoMedio.Text    := FormatFloat('#,###0.000',vPesoM);
      cedAmoUniformidade.Text := FormatFloat('#,##0.00',vUnif);
      cedAmoCV.Text           := FormatFloat('#,##0.00',vCV);
    end;
end;


function TFMovLote.ExisteAmostraPeso(vPeso : Currency):Integer;
var
  vJ :Integer;
begin
  Result := 0;
  if vGridGerado then
    for vJ := 1 to stgAmostra.ColCount - 1 do
      if StrToFloat(stgAmostra.Cells[vJ,0]) = vPeso then
        Result := vJ;
end;


function TFMovLote.ExisteAmostraBox(vBox : Integer):Integer;
var
  vI :Integer;
begin
  Result := 0;
  if vGridGerado then
    for vI := 1 to stgAmostra.RowCount - 1 do
      if StrToInt(stgAmostra.Cells[0,vI]) = vBox then
        Result := vI;
end;


function TFMovLote.E_NumeroInteiro(vStr : String):Boolean;
begin
  //  testa campos do grid
  Result := True;
  try
    strtoint(vStr);
  except
   Result := False;
  end;
end;

procedure TFMovLote.CalculaDadosAmostra(var vPesoM, vUnif, vCV: Double; vFaixaUnif, vBox: Integer);
  var
    vVetor : array of double;
    vCont, vI , vJ    : integer;
    vInf,vSup : Double;
  begin
    vEsc_Balanca := StrToFloat(cedIntervalo.Text);

    SetLength(vVetor,0);
    if vBox = 0  // todas as colunas e linhas (do galpao)
     then
       begin
         for vI := 1 to stgAmostra.RowCount - 1 do
           for vJ := 1 to stgAmostra.ColCount - 1 do
             if E_NumeroInteiro(stgAmostra.Cells[vJ,vI]) then
               for vAux := 1 to StrToInt(stgAmostra.Cells[vJ,vI]) do
                   begin
                     SetLength(vVetor,High(vVetor) + 2);
                     vVetor[High(vVetor)] := StrToFloat(stgAmostra.Cells[vJ,0]);
                   end;
       end
     else    // somente a linha do box informados
       begin
         for vJ := 1 to stgAmostra.ColCount - 1 do
           if E_NumeroInteiro(stgAmostra.Cells[vJ,vBox]) then
              for vAux := 1 to StrToInt(stgAmostra.Cells[vJ,vBox]) do
                 begin
                   SetLength(vVetor,High(vVetor) + 2);
                   vVetor[High(vVetor)] := StrToFloat(stgAmostra.Cells[vJ,0]);
                 end;
       end;
  
    vPesoM := 0;
    vUnif  := 0;
    vCV    := 0;
    
    if high(vVetor) <> -1  then // se existir elementos
      begin
        // tomando como peso um vetor V do tipo [x,y,z,..] onde x sao numero reais
        // peso medio = media(V), i.e Somatorio(V) / quantidade de elementos de V
        vPesoM := Mean(vVetor);
  
        // limite inferior = Peso Medio - ((Faix de Uniformidade(AVFSIDE) / 100) * Peso Medio)
        // limite superior = Peso Medio + ((Faix de Uniformidade(AVFSIDE) / 100) * Peso Medio)
        // logo temos [inferior ... aves uniformes ... superior]
        vInf := vPesoM - ((vFaixaUnif / 100) * vPesoM);
        vSup := vPesoM + ((vFaixaUnif / 100) * vPesoM);
  
  //      vInf := vInf - (vEsc_Balanca / 2);
  //      vSup := vSup + (vEsc_Balanca / 2);
  
        vCont := 0;
        for vAux := Low(vVetor) to High(vVetor) do
          if (vInf < vVetor[vAux]) and (vVetor[vAux] < vSup)
             then inc(vCont);
        vUnif := ( vCont / ( High( vVetor ) + 1) ) * 100;
  
        // Coef Variacao
        // CV = (Desvio Padrao * 100) / Peso Medio
        // Importante: desvio padra (stddev) com elementos iguais ou 1(um) elemento
        // provoca erro de ponto flutuante Ex: StdDev([x,x,x,x,x,x]) => Erro !!!
        try vCV := ( StdDev(vVetor) * 100 ) / vPesoM;
        except vCV := 0; end;
      end;
end;


procedure TFMovLote.MontaAmostra(Dat_Movto : TDateTime; Cod_Lote_Num : Integer; Sexo_Ave : String);
var
  vI, vJ          : Integer;
  x,vSelect, vWhere : String;

begin
  with QryBusca do
    begin
      // Peso
      Close;
      vSelect := 'Select Distinct Peso From avfsape1 ';
      vWhere := 'Where Dat_Movto = :Dat_Movto and Cod_Lote_Num = :Cod_Lote_Num and Sexo_Ave = :Sexo_Ave';
      SQL.Clear;
      SQL.Add(vSelect);
      SQL.Add(vWhere);
      ParamByName('Dat_Movto').AsDate := Dat_Movto;
      ParamByName('Cod_Lote_Num').AsInteger := Cod_Lote_Num;
      ParamByName('Sexo_Ave').AsString:= Sexo_Ave;
      Open;
      stgAmostra.ColCount := 1 + RecordCount;
      vJ := 1;
      while Not Eof do
        begin
          stgAmostra.Cells[vJ,0] := FloatToStr(FieldByName('Peso').AsFloat);
          inc(vJ);
          Next;
        end;

      // Box
      Close;
      vSelect := 'Select Distinct Nro_Box From avfsape1 ';
      vWhere := 'Where Dat_Movto = :Dat_Movto and Cod_Lote_Num = :Cod_Lote_Num and Sexo_Ave = :Sexo_Ave';
      SQL.Clear;
      SQL.Add(vSelect);
      SQL.Add(vWhere);
      ParamByName('Dat_Movto').AsDate := Dat_Movto;
      ParamByName('Cod_Lote_Num').AsInteger := Cod_Lote_Num;
      ParamByName('Sexo_Ave').AsString:= Sexo_Ave;
      Open;
      stgAmostra.RowCount := 1 + RecordCount;
      // limpa Grid
      for vI := 1 to stgAmostra.RowCount - 1 do
        for vJ := 1 to stgAmostra.ColCount - 1 do
           stgAmostra.Cells[vJ,vI] := '';
      vI := 1;
      while Not Eof do
        begin
          stgAmostra.Cells[0,vI] := FloatToStr(FieldByName('Nro_Box').AsFloat);
          inc(vI);
          Next;
        end;

      // Amostra
      Close;
      vSelect := 'Select Peso, Nro_Box, Qtd_Aves From avfsape1 ';
      vWhere := 'Where Dat_Movto = :Dat_Movto and Cod_Lote_Num = :Cod_Lote_Num and Sexo_Ave = :Sexo_Ave order by Peso ';
      SQL.Clear;
      SQL.Add(vSelect);
      SQL.Add(vWhere);
      ParamByName('Dat_Movto').AsDate := Dat_Movto;
      ParamByName('Cod_Lote_Num').AsInteger := Cod_Lote_Num;
      ParamByName('Sexo_Ave').AsString:= Sexo_Ave;
      Open;
      first;
      cedPesoInicial.value :=   FieldByName('Peso').AsFloat;
      next;
      cedIntervalo.value :=  (FieldByName('Peso').AsFloat)  - cedPesoInicial.value;
      last;
      cedPesoFinal.value :=   FieldByName('Peso').AsFloat;
      first;


      for vI := 1 to stgAmostra.RowCount - 1 do
        for vJ := 1 to stgAmostra.ColCount - 1 do
          begin


            Close;
            vSelect := 'Select Peso, Nro_Box, Qtd_Aves From avfsape1 ';
            vWhere := 'Where Dat_Movto = :Dat_Movto and Cod_Lote_Num = :Cod_Lote_Num and Sexo_Ave = :Sexo_Ave and Peso=:Peso and Nro_Box=:Nro_Box ';
            SQL.Clear;
            SQL.Add(vSelect);
            SQL.Add(vWhere);
            ParamByName('Dat_Movto').AsDate       := Dat_Movto;
            ParamByName('Cod_Lote_Num').AsInteger := Cod_Lote_Num;
            ParamByName('Sexo_Ave').AsString      := Sexo_Ave;
            ParamByName('Peso').asfloat           := strtofloat(stgAmostra.Cells[vJ,0]);
            ParamByName('Nro_Box').asinteger      := strtointdef(stgAmostra.Cells[0,vI],0);
            Open;

            
            if RecordCount = 1
              then stgAmostra.Cells[vJ,vI] := FloatToStr(FieldByName('Qtd_Aves').AsFloat);
          end;

    end;
end;


procedure TFMovLote.GeraGridAmostra;
var
   vJ, vI, vLinha, vColuna : Integer;
   vTeste          : Double;
begin
  inherited;
  if cedPesoInicial.Value > cedPesoFinal.Value then
     begin
       ntbPaginas.PageIndex := 1;
       MessageDlg(Msg00500, mtInformation, [mbOK], 0);
       Exit;
     end;

  // busca box
  with QryBoxP do
    begin
      ParamByName('Lote').AsInteger := cedCod_Lote_Num.AsInteger;
      ParamByName('Data').AsDate := detDat_Movto.Date;
      Close;
      Open;
    end;

  if cedIntervalo.Value = 0 then
    begin
      if QryBoxP.RecordCount = 0
         then vLinha := 2                       // para a primeira linha não ser editável
         else vLinha := 1 + QryBoxP.RecordCount; // primeira linha 'fixa' = pesos
      stgAmostra.RowCount := vLinha;

      vColuna := 3; // primeira coluna 'fixa' = nro do box
      stgAmostra.ColCount := vColuna;
      // limpa Grid
      for vI := 0 to stgAmostra.RowCount - 1 do
        for vJ := 0 to stgAmostra.ColCount - 1 do
          stgAmostra.Cells[vJ,vI] := '';

      stgAmostra.Cells[1,0] := FloatToStr(cedPesoInicial.value);
      stgAmostra.Cells[2,0] := FloatToStr(cedPesoFinal.value);




      qryboxP.First;
      vAux := 1;
      while not qryboxP.Eof do
        begin
          stgAmostra.Cells[0,vAux] := IntToStr(strtointdef(qryBoxP.FieldByName('Nro_Box').asstring,1));
          qryboxP.Next;
          inc(vAux);
        end;
      if QryBoxP.RecordCount > 0 then
          vGridGerado := True;


      Exit;  // Grid de amostra sem intervalo de pesagem
   end;

  // determina a quantidade de linha
  vColuna := Trunc((cedPesoFinal.Value - cedPesoInicial.Value) / cedIntervalo.Value);
  vTeste := (cedPesoFinal.Value - cedPesoInicial.Value) / cedIntervalo.Value;
  // corrige o numero de colunas para que na ultima apareça o pesos final
  if vColuna <> vTeste
     then Inc(vColuna);

  // acrescenta coluna para o peso inicial
  Inc(vColuna);

  // acrescenta uma coluna para o numero do box
  Inc(vColuna);

  // determina a quantidade de coluna
  if QryBoxP.RecordCount = 0
     then vLinha := 2                       // para a primeira linha não ser editável
     else vLinha := 1 + QryBoxP.RecordCount; // primeira linha 'fixa' = pesos

  stgAmostra.RowCount := vLinha;
  stgAmostra.ColCount := vColuna;
  // limpa Grid
  for vI := 0 to stgAmostra.RowCount - 1 do
    for vJ := 0 to stgAmostra.ColCount - 1 do
      stgAmostra.Cells[vJ,vI] := '';

  for vAux := 1 to vColuna - 2 do
     stgAmostra.Cells[vAux,0] := FloatToStr(cedPesoInicial.Value + ((vAux - 1) * cedIntervalo.Value));
  stgAmostra.Cells[vColuna -1 ,0] := FloatToStr(cedPesoFinal.Value);

  qryboxP.First;
  vAux := 1;
  while not qryboxP.Eof do
     begin
       stgAmostra.Cells[0,vAux] := IntToStr(strtointdef(qryBoxP.FieldByName('Nro_Box').asstring,1));
       qryboxP.Next;
       inc(vAux);
     end;
  if QryBoxP.RecordCount > 0
    then vGridGerado := True;
end;

procedure TFMovLote.cedCod_RacaoExit(Sender: TObject);
begin
   dlcRacao.keyvalue := cedCod_Racao.AsInteger ;   
end;

end.



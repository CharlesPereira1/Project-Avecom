{mudar QryIdadeEndereco para view}




{*******************************************************************************}
{                          Avecom Sistemas                                      }
{*******************************************************************************}
{                                                                               }
{ Programa:    UMenu.pas                                                        }
{ Objetivo:    Menu do Sistema de Poedeiras de Aves                             }
{              A maioria dos formularios e chamada por este Menu                }
{ Histórico de Alterações:                                                      }
{                                                                               }
{ Data         Descrição                                         Autor          }
{                                                                               }
{*******************************************************************************}
unit UMenu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, Menus, SpeedBar, StdCtrls, Db, Grids, Registry,
  DBGrids, DBTables, RxGrdCpt, RXCtrls, IniFiles, Gauges, Calendar, RxCalc,
  QRExport, QuickRpt,  QRPrntr,
  RXShell, Mask, DBCtrls, AppEvent, ToolEdit, CurrEdit, RxMemDS;


type TEmpresa = record
     Empresa    : String[100]; // Nome da Empresa
     Usuario    : String[20];  // Usuário Logado no Sistema
     Senha      : String[15];  // Senha do Usuário
     Sistema    : String[6];   // Código do Sistema "AV1"
  end;

var
  vCaminhoImagem : string;  

type TParametros = record
//     vLote              : Integer;   // Código Reduzido do Lote
//     vData              : TDateTime; // Data Atual do Sistema ou a Data que o Usuário informar
     vTipoPesagem          : Integer;   // Tipo da Pesagem padrão para o Movto. Pesagem de Aves
     vUnidadePeso          : Integer;   // Tipo de Peso utilizado 0 = Kilo / 1 = Libra
     vOrbrigarPerda        : Boolean;   // Obrigar com que o Usuário preencha os registros da Perda
     vIdadeFinal           : Integer;   // Idade Final Padrão (Default)
     vUniformidade         : Integer;   // Faixa de Uniformidade Padrão
     vPivo                 : Integer;   // Pivor Semana
     vDiaSemana            : Integer;   // Dia do Fechamento do Mês
     vPrimeiroDiaSemana    : Integer;
     vTipoAlojamento       : Integer;   // Tipo de Alojamento de Lote 0 = Galpão / 1 = Box's
     vRemoverMovtosLote    : Boolean;   // True = Obriga o Usuário a remover Movto por Movto / False = Remove todos os Movtos do Lote
     vPerc_Inicio_Producao : Integer;   // Percentual padrão para a Produção de Ovos
     vVersao               : Double;    // Ultima Versao do programa que ja foi executado no ambiente
     vVersaoDeskTop        : Double;
     vTipoVersao           : Integer;
     vQtd_Saco_Maq         : Double;
     vQtd_Saco_Man         : Double;
     vPeso_Saco_Maq        : Integer;
     vPeso_Saco_Man        : Integer;
     vEmpresa              : String[20]; // Utilizado para alterar alguns detalhes em tempo de execucao
  end;

type
  //////////////////  //////////////////  //////////////////  //////////////////
  TQVisualizador = class(TQRPreviewInterface)
   public
     function Show(AQRPrinter : TQRPrinter) : TWinControl; override;
     function ShowModal(AQRPrinter : TQRPrinter): TWinControl; override;
   end;


type
  TListaTelas = Set of 1..255; // Lista onde contem as Janelas que o Usuário possui acesso
  TFMenu = class(TForm)
    mnmPrincipal: TMainMenu;
    StbMessage: TStatusBar;
    tmrStatus: TTimer;
    Cadastros2: TMenuItem;
    Sada2: TMenuItem;
    N3: TMenuItem;
    Panel2: TPanel;
    Bevel1: TBevel;
    QryAcessos: TQuery;
    dbsAcessos: TDatabase;
    QryEmpresa: TQuery;
    dbsManejo: TDatabase;
    Janelas1: TMenuItem;
    Ajuda1: TMenuItem;
    Cascata1: TMenuItem;
    LadoaLadoHorizontal1: TMenuItem;
    LadoaLadoVertical1: TMenuItem;
    N5: TMenuItem;
    Organizarcones1: TMenuItem;
    MinimizarTodas1: TMenuItem;
    SobreoSistema1: TMenuItem;
    AjudadoSistema1: TMenuItem;
    Utilitrios1: TMenuItem;
    UsandooSistema1: TMenuItem;
    N6: TMenuItem;
    Configuraes1: TMenuItem;
    Calculadora1: TMenuItem;
    calCalculadora: TRxCalculator;
    spbFerramentas: TSpeedBar;
    SpeedbarSection5: TSpeedbarSection;
    spiSaida: TSpeedItem;
    Movimentos1: TMenuItem;
    dbsGeral: TDatabase;
    Lote1: TMenuItem;
    Geral1: TMenuItem;
    LinhagemdeAves1: TMenuItem;
    IdentificaodeAves1: TMenuItem;
    N2: TMenuItem;
    Causas2: TMenuItem;
    Ocorrncias2: TMenuItem;
    FatordeAvaliaoTcnica1: TMenuItem;
    N4: TMenuItem;
    Laboratrio1: TMenuItem;
    MtodosdeAplicao1: TMenuItem;
    VacinaseMedicamentos2: TMenuItem;
    N7: TMenuItem;
    FasesdeCriao2: TMenuItem;
    TiposdeRao2: TMenuItem;
    Rao1: TMenuItem;
    VacinaseMedicamentosdaRao1: TMenuItem;
    N8: TMenuItem;
    Atividades1: TMenuItem;
    ProgramaoBsicadeAtividades1: TMenuItem;
    AlojamentodeLote1: TMenuItem;
    AlojamentodeAves1: TMenuItem;
    Padres1: TMenuItem;
    ggeProgresso: TGauge;
    N1: TMenuItem;
    ProgramaodeManejo1: TMenuItem;
    AgrupamentodeLote1: TMenuItem;
    AvaliaoTcnica1: TMenuItem;
    AcertodeSaldo1: TMenuItem;
    Faltadegua1: TMenuItem;
    FaltadeEnergia1: TMenuItem;
    UsodeVacinas1: TMenuItem;
    Debicagem1: TMenuItem;
    Seleo1: TMenuItem;
    Pulorose1: TMenuItem;
    Acasalamento1: TMenuItem;
    Pesagem1: TMenuItem;
    FechamentoSemanal1: TMenuItem;
    FechamentodoLote1: TMenuItem;
    MudanadeEndereo1: TMenuItem;
    TranfernciadeAves1: TMenuItem;
    EntradadeRao1: TMenuItem;
    TestedeLote1: TMenuItem;
    RegistrodeTemperaturaUmidadeLubrificao1: TMenuItem;
    QryGeraSaldo: TQuery;
    PesoEspecfico1: TMenuItem;
    N9: TMenuItem;
    CompletarIdades1: TMenuItem;
    SistemadeArraoamento1: TMenuItem;
    QryGeraTarefa: TQuery;
    N10: TMenuItem;
    DesvincularLotesAgrupados1: TMenuItem;
    EncerrarPadro1: TMenuItem;
    N11: TMenuItem;
    QryDadosLote: TQuery;
    QryBuscaIdade: TQuery;
    QryEnderecoDisponivel: TQuery;
    QryExisteEndereco: TQuery;
    QryExisteLoteData: TQuery;
    QryBusca: TQuery;
    AcertodeSaldoProduo1: TMenuItem;
    MonitordeMovimentos1: TMenuItem;
    Perdas1: TMenuItem;
    Alojamento: TSpeedItem;
    Programacao: TSpeedItem;
    Padroes: TSpeedItem;
    SpeedbarSection1: TSpeedbarSection;
    Avaliacao: TSpeedItem;
    Box: TSpeedItem;
    Consumo: TSpeedItem;
    Producao: TSpeedItem;
    Pesagem: TSpeedItem;
    QryBuscaData: TQuery;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    Responsvel1: TMenuItem;
    Funo1: TMenuItem;
    dbsIncubatorio: TDatabase;
    Relatrio1: TMenuItem;
    mnuRelDiario: TMenuItem;
    mnuContProd: TMenuItem;
    mnuRelacao: TMenuItem;
    mnuPos: TMenuItem;
    mnuAnalProd: TMenuItem;
    mnuGrafico: TMenuItem;
    mnuDesempenho: TMenuItem;
    mnuPesagem: TMenuItem;
    mnuResumoPesagem: TMenuItem;
    mnuCriaRecria: TMenuItem;
    mnuFichaFechamento: TMenuItem;
    AcertodeAvesnosBoxes1: TMenuItem;
    ControledeEstoque1: TMenuItem;
    GruposdeAvaliaoTcnica1: TMenuItem;
    SaldodeAves1: TMenuItem;
    SubGruposdeAvaliaoTcnica1: TMenuItem;
    AvaliaoTcnica2: TMenuItem;
    Planilha1: TMenuItem;
    N17: TMenuItem;
    ArraoamentoRecria1: TMenuItem;
    Eventos1: TMenuItem;
    Eventos2: TMenuItem;
    RelatriodeArraoamento1: TMenuItem;
    ProduoSemanal1: TMenuItem;
    ComparativodeDesempenho1: TMenuItem;
    ProduoXRecebimento1: TMenuItem;
    ProgramaLuz1: TMenuItem;
    AcompanhamentodeEcloso1: TMenuItem;
    HistricodeAlojamentos1: TMenuItem;
    ComparaodaProduo1: TMenuItem;
    EstatsticodePlantelProduo1: TMenuItem;
    ResumodePesagemProv: TMenuItem;
    PesagemdeAvesProvisria1: TMenuItem;
    qryGravaUsuario: TQuery;
    qryApagaUsuario: TQuery;
    ConsultaMovimentos1: TMenuItem;
    Programao1: TMenuItem;
    AproveitamentodeOvos1: TMenuItem;
    FechamentoRecria1: TMenuItem;
    FechamentoProduo1: TMenuItem;
    Gerencial1: TMenuItem;
    Dirio1: TMenuItem;
    Mortalidade1: TMenuItem;
    RomaneiodeOvosTransfernciaDoaoVenda1: TMenuItem;
    SadadeOvos1: TMenuItem;
    RomaneiodeAves1: TMenuItem;
    AcessoGranja1: TMenuItem;
    SaldodeMatrizes1: TMenuItem;
    ParmetrosdeCusto1: TMenuItem;
    qryBuscaImagem: TQuery;
    qryBuscaImagemEND_IMAGEM: TStringField;
    CriticadeProduodeOvos1: TMenuItem;
    TransfernciaentreLotes1: TMenuItem;
    ConsumodeRao2: TMenuItem;
    Alojamentos1: TMenuItem;
    ResumoContbil1: TMenuItem;
    RelaodeIdades1: TMenuItem;
    PedidodeRao1: TMenuItem;
    PedidodeRao2: TMenuItem;
    MovimentaodeOvos1: TMenuItem;
    RomaneiodeAves2: TMenuItem;
    ConsumodeRao3: TMenuItem;
    RelaodeVacinas1: TMenuItem;
    ProgramaodeManejo2: TMenuItem;
    AcompanhamentoTcnicoMensal1: TMenuItem;
    QryFechaAlojamento: TQuery;
    ImportaodeRao1: TMenuItem;
    QRCompositeReport1: TQRCompositeReport;
    QRHTMLFilter1: TQRHTMLFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    ReceberdadosdoMobile1: TMenuItem;
    procedure tmrStatusTimer(Sender: TObject);
    procedure InfoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure spiSaidaClick(Sender: TObject);
    procedure Sada2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Cascata1Click(Sender: TObject);
    procedure LadoaLadoHorizontal1Click(Sender: TObject);
    procedure LadoaLadoVertical1Click(Sender: TObject);
    procedure Organizarcones1Click(Sender: TObject);
    procedure MinimizarTodas1Click(Sender: TObject);
    procedure SobreoSistema1Click(Sender: TObject);
    procedure AjudadoSistema1Click(Sender: TObject);
    procedure UsandooSistema1Click(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure LinhagemdeAves1Click(Sender: TObject);
    procedure IdentificaodeAves1Click(Sender: TObject);
    procedure MtodosdeAplicao1Click(Sender: TObject);
    procedure VacinaseMedicamentos2Click(Sender: TObject);
    procedure FasesdeCriao2Click(Sender: TObject);
    procedure TiposdeRao2Click(Sender: TObject);
    procedure Rao1Click(Sender: TObject);
    procedure Ocorrncias2Click(Sender: TObject);
    procedure Laboratrio1Click(Sender: TObject);
    procedure FatordeAvaliaoTcnica1Click(Sender: TObject);
    procedure Causas2Click(Sender: TObject);
    procedure Padres1Click(Sender: TObject);
    procedure VacinaseMedicamentosdaRao1Click(Sender: TObject);
    procedure Atividades1Click(Sender: TObject);
    procedure AlojamentodeAves1Click(Sender: TObject);
    procedure CompletarGalpo1Click(Sender: TObject);
    procedure AlojamentodeLote1Click(Sender: TObject);
    procedure ProgramaoBsicadeAtividades1Click(Sender: TObject);
    procedure ProgramaodeManejo1Click(Sender: TObject);
    procedure AgrupamentodeLote1Click(Sender: TObject);
    procedure AvaliaoTcnica1Click(Sender: TObject);
    procedure AcertodeSaldo1Click(Sender: TObject);
    procedure Faltadegua1Click(Sender: TObject);
    procedure FaltadeEnergia1Click(Sender: TObject);
    procedure UsodeVacinas1Click(Sender: TObject);
    procedure Debicagem1Click(Sender: TObject);
    procedure Seleo1Click(Sender: TObject);
    procedure Pulorose1Click(Sender: TObject);
    procedure Acasalamento1Click(Sender: TObject);
    procedure EntradadeRao1Click(Sender: TObject);
    procedure RegistrodeTemperaturaUmidadeLubrificao1Click(
      Sender: TObject);
    procedure UsodeMedicamentos1Click(Sender: TObject);
    procedure TestedeLote1Click(Sender: TObject);
    procedure TranfernciadeAves1Click(Sender: TObject);
    procedure ConsumodeRao1Click(Sender: TObject);
    procedure MudanadeEndereo1Click(Sender: TObject);
    procedure Box1Click(Sender: TObject);
    procedure Pesagem1Click(Sender: TObject);
    procedure ProduodeOvos1Click(Sender: TObject);
    procedure PesoEspecfico1Click(Sender: TObject);
    procedure SistemadeArraoamento1Click(Sender: TObject);
    procedure CompletarIdades1Click(Sender: TObject);
    procedure DesvincularLotesAgrupados1Click(Sender: TObject);
    procedure EncerrarPadro1Click(Sender: TObject);
    procedure AcertodeSaldoProduo1Click(Sender: TObject);
    procedure MonitordeMovimentos1Click(Sender: TObject);
    procedure Perdas1Click(Sender: TObject);
    procedure FechamentoSemanal1Click(Sender: TObject);
    procedure Funo1Click(Sender: TObject);
    procedure Responsvel1Click(Sender: TObject);
    procedure mnuRelDiarioClick(Sender: TObject);
    procedure mnuContProdClick(Sender: TObject);
    procedure mnuRelacaoClick(Sender: TObject);
    procedure mnuPosClick(Sender: TObject);
    procedure mnuAnalProdClick(Sender: TObject);
    procedure mnuDesempenhoClick(Sender: TObject);
    procedure mnuPesagemClick(Sender: TObject);
    procedure mnuResumoPesagemClick(Sender: TObject);
    procedure FechamentodoLote1Click(Sender: TObject);
    procedure mnuCriaRecriaClick(Sender: TObject);
    procedure mnuFichaFechamentoClick(Sender: TObject);
    procedure AcertodeAvesnosBoxes1Click(Sender: TObject);
    procedure ControledeEstoque1Click(Sender: TObject);
    procedure GruposdeAvaliaoTcnica1Click(Sender: TObject);
    procedure SaldodeAves1Click(Sender: TObject);
    procedure SubGruposdeAvaliaoTcnica1Click(Sender: TObject);
    procedure Planilha1Click(Sender: TObject);
    procedure Eventos1Click(Sender: TObject);
    procedure Eventos2Click(Sender: TObject);
    procedure ArraoamentoMachoFmeasJuntos1Click(Sender: TObject);
    procedure ArraoamentoMachoFmeasJuntos2Click(Sender: TObject);
    procedure ArraoamentoMachoFmeasAvs1Click(Sender: TObject);
    procedure ArraoamentoRecria1Click(Sender: TObject);
    procedure RelatriodeArraoamento1Click(Sender: TObject);
    procedure ProduoSemanal1Click(Sender: TObject);
    procedure ComparativodeDesempenho1Click(Sender: TObject);
    procedure ProduoXRecebimento1Click(Sender: TObject);
    procedure ProgramaLuz1Click(Sender: TObject);
    procedure AcompanhamentodeEcloso1Click(Sender: TObject);
    procedure HistricodeAlojamentos1Click(Sender: TObject);
    procedure ComparaodaProduo1Click(Sender: TObject);
    procedure EstatsticodePlantelProduo1Click(Sender: TObject);
    procedure PesagemProvisria1Click(Sender: TObject);
    procedure ResumodePesagemProvClick(Sender: TObject);
    procedure PesagemdeAvesProvisria1Click(Sender: TObject);
    procedure FechamentoLote1Click(Sender: TObject);
    procedure ConsultaMovimentos1Click(Sender: TObject);
    procedure ClassificaodeOvos1Click(Sender: TObject);
    procedure Programao1Click(Sender: TObject);
    procedure AproveitamentodeOvos1Click(Sender: TObject);
    procedure FechamentoRecria1Click(Sender: TObject);
    procedure FechamentoProduo1Click(Sender: TObject);
    procedure Gerencial1Click(Sender: TObject);
    procedure Dirio1Click(Sender: TObject);
    procedure Mortalidade1Click(Sender: TObject);
    procedure RomaneiodeOvosTransfernciaDoaoVenda1Click(Sender: TObject);
    procedure SadadeOvos1Click(Sender: TObject);
    procedure RomaneiodeAves1Click(Sender: TObject);
    procedure AcessoGranja1Click(Sender: TObject);
    procedure SaldodeMatrizes1Click(Sender: TObject);
    procedure ParmetrosdeCusto1Click(Sender: TObject);
    procedure CriticadeProduodeOvos1Click(Sender: TObject);
    procedure TransfernciaentreLotes1Click(Sender: TObject);
    procedure ConsumodeRao2Click(Sender: TObject);
    procedure Alojamentos1Click(Sender: TObject);
    procedure ResumoContbil1Click(Sender: TObject);
    procedure RelaodeIdades1Click(Sender: TObject);
    procedure PedidodeRao1Click(Sender: TObject);
    procedure PedidodeRao2Click(Sender: TObject);
    procedure MovimentaodeOvos1Click(Sender: TObject);
    procedure RomaneiodeAves2Click(Sender: TObject);
    procedure ConsumodeRao3Click(Sender: TObject);
    procedure RelaodeVacinas1Click(Sender: TObject);
    procedure ProgramaodeManejo2Click(Sender: TObject);
    procedure AcompanhamentoTcnicoMensal1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ImportaodeRao1Click(Sender: TObject);
    procedure ReceberdadosdoMobile1Click(Sender: TObject);
  private
    { Private declarations }
    // Funções que não podem ser removidas
    procedure VerificaAcessoMenu;
    procedure CarregaParametros();
    procedure GravaDadosParametros();

  public
    { Public declarations }
    Empresa       : TEmpresa;    // Dados da Empresa
    Parametros    : TParametros; // Dados do Lote Padrão usado no Sistema
    TagRelatorios : Integer;     // Virável para controle dos Relatórios
    ListaTelas    : TListaTelas; // Lista da Janelas que o Usuário possui Acesso
  end;

var
  FMenu : TFMenu;
  //Flag do tipo de entrada de dados
  vOperacao : integer;

  //Caso de erro em algum registro na importacao
  vOcorreuErros : boolean;

  vPosicao : integer;

  NPedido, NSequencia, NParcela: integer;
  vEmail,
  vAssunto,
  vMensagem ,vEmitente: string;



Const
  //Tipos de Movimentos para importar do Coletor
  vConsumoRacao = 4;
  vPesagem      = 8;
  vPostura      = 1;
  vVacinacao    = 9;
  vMedicacao    = 11;


  //Situaçoes de entrada de dados
  vImportacao   = 0;
  vNormal       = 1;

implementation

uses Funcoes, UMensagens, USobre, // Não remover estas Unit's
     UConfiguracoes, UVacinasMedicamentos, UMetodoVacinasMedicamentos,
     UFasesCriacao, UTipoRacao, URacao, UOcorrencias, ULinhagem,
     UIdentificacao, ULaboratorios, UFatorAvaliacao, UCausas, UPadrao,
     UDetalhesRacao, UAtividades, UAlojamentoAves, UCompletarGalpao,
     UProgramacaoAtividades, UProgramacaoManejo, UAgrupamentoLotes,
     UAvaliacaoTecnica, UAcertoSaldo, UAlojamentoProducao, UEntradaRacao,
     URegistroTemperatura, UFaltaAgua, UFaltaEnergia, UUsoVacinas,
     UDebicagem, USelecao, UPulorose, UAcasalamento, UUsoMedicamentos,
     UTesteLote, UTransferenciaAves, UConsumoRacao,
     UMudancaEndereco, UProducaoOvos, UPesoEspecifico,
     USistemaArracoamento, UComplementarIdades, UDesvincularLote,
     UEncerrarPadroes, ULotes, UBox, UMonitorMovimentos, UPerdas,
  UFechamentoSemanal, UResponsavel, UFuncao, UPesagem, URelatDiario,
  URelatContProd, URelatRelacao, URelatPosicao, URelatAnalProd,
  uGrafDesempenho, URelatPesagem, URelatResumoPesagem, UDescarteFinal,
  URelatCriaRecria, URelatFechamento, URelatDistribBox, URelatContEstoque,
  UGrupoAvaliacao,USubGrupoAvaliacao, URelatSaldoAves, URelatPlaAvaliacao,
  UCadastroEvento, UEventos, UArracoamentoJuntos, UArracoamentoSeparados,
  UArracoamentoAvos, UArracoamentoRecria, URelatArracoamento, URelatComparaProducao,
  URelatProdSemanal,
  URelatCompaDese,UConsultaProdRec, UProgramaLuz, URelatAcompEclosao,URelatAlojamentos,
  URelatEstatistica, UPesagemProv, URelatResumoPesagemProv,
  URelatPesagemProv, UFechamentoLote, UConsultaMovtoSemana,
  UClassificacaoOvos, URelatProgAtividades, URelatAproveitamentoOvo,
  URelatFechamentoRecriaF, URelatFechamentoProdF, URGerencialLoteF,
  UMovLote, URelatMortalidade, UExpedicaoOvos, URelatRomaneioF,
  UExpedicaoAves, UAcesso, URelatSaldo, UParSaldoMatrizes,
  URelatCriticaProducao, URelatTransfAvesFiltro, URelatConsumoRacaoFiltro,
  URelatLotesAloj, URelatResumoContabil, URelatIdade, UPedidoRacao,
  URelatPedidoRacao, URelatMovOvoFiltro, URelatRomaneioAvesF,
  URelatConsumoRacaoLote, URelatRelacaoVacinas, URelatProgramaVacinas,
  URelatAcompTecnicoMensal, UIntegracaoInsumos,uvisualizado, uPalm;

{$R *.DFM}

procedure TFMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MessageDlg(Msg00000, mtConfirmation, [mbYes, mbNo], 0) = mrNo then
  begin
    qryApagaUsuario.close;
    qryApagaUsuario.ParamByName('Usuario').AsString := Empresa.Usuario;              // Usuário ID
    qryApagaUsuario.ParamByName('Sistema').AsString := 'Manejo';
    qryApagaUsuario.execsql;

    Action := caNone;
  end;
end;

procedure TFMenu.tmrStatusTimer(Sender: TObject);
const
 DiaSemana : array[1..7] of String[7] = ('Domingo', 'Segunda','Terça','Quarta','Quinta', 'Sexta','Sábado');
begin
 StbMessage.Panels[0].Text := Application.Hint;
 StbMessage.Panels[1].Text := Empresa.Usuario;
 StbMessage.Panels[2].Text := DiaSemana[DayOfWeek(Date)] + ', ' + DatetoStr(Date);
 StbMessage.Panels[3].Text := TimeToStr(Time);
 StbMessage.Panels[4].Text := Empresa.Empresa;
end;

procedure TFMenu.InfoClick(Sender: TObject);
begin
  AbreSobre;
end;


procedure TFMenu.GravaDadosParametros();
var
  vSelect,
  vCampos,
  vValues : String;
begin
  vSelect := 'Insert Into avfspar1 ';
  vCampos := 'PIVO_SEMANA, IDADE_FINAL, FAIXA_UNIFORMIDADE, PERC_INICIO_PRODUCAO, OBRIGAR_PERDA_OVOS, REMOVER_MOVTO_AUTOMATICO, TIPO_PESAGEM, TIPO_ALOJAMENTO, UNIDADE_PESO ';
  vValues := ':PIVO_SEMANA, :IDADE_FINAL, :FAIXA_UNIFORMIDADE, :PERC_INICIO_PRODUCAO, :OBRIGAR_PERDA_OVOS, :REMOVER_MOVTO_AUTOMATICO, :TIPO_PESAGEM, :TIPO_ALOJAMENTO, :UNIDADE_PESO ';

  InsertDados(QryBusca, vSelect, vCampos, vValues);
  with QryBusca do
    begin
      ParamByName('PIVO_SEMANA').AsInteger := Parametros.vPivo;
      ParamByName('IDADE_FINAL').AsInteger := Parametros.vIdadeFinal;
      ParamByName('FAIXA_UNIFORMIDADE').AsInteger := Parametros.vUniformidade;
      ParamByName('PERC_INICIO_PRODUCAO').AsInteger := Parametros.vPerc_Inicio_Producao;
      ParamByName('OBRIGAR_PERDA_OVOS').AsBoolean := Parametros.vOrbrigarPerda;
      ParamByName('REMOVER_MOVTO_AUTOMATICO').AsBoolean := Parametros.vRemoverMovtosLote;
      ParamByName('TIPO_PESAGEM').AsInteger := Parametros.vTipoPesagem;
      ParamByName('TIPO_ALOJAMENTO').AsInteger := Parametros.vTipoAlojamento;
      ParamByName('UNIDADE_PESO').AsInteger := Parametros.vUnidadePeso;
      ExecSQL;
    end;
end;

procedure TFMenu.CarregaParametros();
begin
  BuscaRegistro(QryBusca, 'Select * from avfspar1','');
  with QryBusca do
   begin
     if RecordCount > 0 then
       begin
         try Parametros.vTipoPesagem          := FieldByName('Tipo_Pesagem').AsInteger;             except Parametros.vTipoPesagem          := 1;     end;
         try Parametros.vOrbrigarPerda        := FieldByName('Obrigar_Perda_Ovos').AsBoolean;       except Parametros.vOrbrigarPerda        := true; end;
         try Parametros.vIdadeFinal           := FieldByName('Idade_Final').AsInteger;              except Parametros.vIdadeFinal           := 60;     end;
         try Parametros.vUniformidade         := FieldByName('Faixa_Uniformidade').AsInteger;       except Parametros.vUniformidade         := 100;     end;
         try Parametros.vPivo                 := FieldByName('Pivo_Semana').AsInteger;              except Parametros.vPivo                 := 3;     end;
         try Parametros.vUnidadePeso          := FieldByName('Unidade_Peso').AsInteger;             except Parametros.vUnidadePeso          := 0;     end;
         try Parametros.vTipoAlojamento       := FieldByName('Tipo_Alojamento').AsInteger;          except Parametros.vTipoAlojamento       := 0;     end;
         try Parametros.vRemoverMovtosLote    := FieldByName('Remover_Movto_Automatico').AsBoolean; except Parametros.vRemoverMovtosLote    := false; end;
         try Parametros.vPerc_Inicio_Producao := FieldByName('Perc_Inicio_Producao').AsInteger;     except Parametros.vPerc_Inicio_Producao := 5      end;
         try Parametros.vVersao               := FieldByName('Versao').AsFloat;                     except Parametros.vVersao               := 0      end;
         try Parametros.vVersaoDeskTop        := FieldByName('VersaoDeskTop').AsFloat;              except Parametros.vVersaoDeskTop        := 0;     end;
         try Parametros.vTipoVersao           := FieldByName('TipoVersao').AsInteger;               except Parametros.vTipoVersao           := 1;     end;
         try Parametros.vEmpresa              := UpperCase(FieldByName('Empresa').AsString);        except Parametros.vEmpresa              := '';    end;
         try Parametros.vQtd_Saco_Maq         := FieldByName('qtd_saco_maq').AsFloat;               except Parametros.vQtd_Saco_Maq         := 0;     end;
         try Parametros.vQtd_Saco_Man         := FieldByName('qtd_saco_man').AsFloat;               except Parametros.vQtd_Saco_Man         := 0;     end;
         try Parametros.vPeso_Saco_Maq        := FieldByName('peso_saco_maq').AsInteger;            except Parametros.vPeso_Saco_Maq        := 0;     end;
         try Parametros.vPeso_Saco_Man        := FieldByName('peso_saco_man').AsInteger;            except Parametros.vPeso_Saco_Man        := 0;     end;

       end
      else
       begin
         // default
         Parametros.vTipoPesagem := 1;
         Parametros.vOrbrigarPerda := True;
         Parametros.vIdadeFinal := 60;
         Parametros.vUniformidade := 100;
         Parametros.vPivo := 3;
         Parametros.vUnidadePeso := 0;
         Parametros.vTipoAlojamento := 0;
         Parametros.vRemoverMovtosLote := False;
         Parametros.vPerc_Inicio_Producao := 5;
         Parametros.vTipoVersao := 1;
         Parametros.vVersao := 0;
         Parametros.vVersaoDeskTop := 0;
         Parametros.vEmpresa := '';
         GravaDadosParametros;
       end;
   end;
end;

procedure TFMenu.FormCreate(Sender: TObject);
begin
  // Cria o registro do Sistema quando o Usuário Acessa o Sistema
  Registro := TRegIniFile.Create('Manejo');

  // busca dados da tabela avfspar1
  CarregaParametros;

  RegisterPreviewClass(TQVisualizador);


  FMenu.qryBuscaImagem.close;
  FMenu.qryBuscaImagem.open;
  vCaminhoImagem := FMenu.qryBuscaImagemEND_IMAGEM.asstring;

  try
    dbsManejo.close;
    dbsManejo.Connected := True;


    if Parametros.vTipoVersao = 1  then // server
       begin
         if Not VersaoValidaDoSistema(QryBusca, Parametros.vVersao) then
            begin
              MessageDlg(Msg00065, mtError, [mbOk], 0);
              Halt;
            end
       end
      else  // versao desktop
       begin
         if Not VersaoValidaDoSistema(QryBusca, Parametros.vVersaoDeskTop) then
            begin
              MessageDlg(Msg00065, mtError, [mbOk], 0);
              Halt;
            end;

         Caption := Caption + ' - DeskTop ';
       end;

    // Verifica permissoes de acesso do menu
    VerificaAcessoMenu;
   { qryGravaUsuario.close;
    qryGravaUsuario.ParamByName('Usuario').AsString := Empresa.Usuario;              // Usuário ID
    qryGravaUsuario.ParamByName('Sistema').AsString := 'Manejo';
    qryGravaUsuario.execsql;  }
  except
    on E: Exception do
      begin
        MessageDlg(Msg10003 + #10#13 + '"' + E.Message + '".'
                   + #10#13 + Msg00004 , mtError, [mbOk], 0);
        Halt;
      end;
  end;

  vPosicao := 0;

end;

{*******************************************************************************}
{ Procedimento que Verifica se o Usuário tem Acesso ao Sistema e Verifica também}
{ em quais a Telas do Sistema que ele poderá ter Acesso.                        }
{*******************************************************************************}
procedure TFMenu.VerificaAcessoMenu;
var
  Contador,
  Item,
  SubItem,
  SubItem2  : SmallInt;
  Flag,
  FlagSub,
  FlagSub2  : Boolean;
begin
//  dbsManejo.Connected := True;
//  dbsGeral.Connected := True;
//  dbsIncubatorio.Connected := True;

  // Informa os Dados do Lote Padrão
  //  Parametros.vLote := 0;
  //  Parametros.vData := Date();

  // Busca o nome do Usuário e o Código do Sistema
  Empresa.Usuario := ParamStr(1);
  Empresa.Senha   := ParamStr(2);
  Empresa.Empresa := ParamStr(3);
  Empresa.Sistema := DesCriptografar(ParamStr(4),8);
  if (ParamStr(1) = '') or (ParamStr(2) = '') or (ParamStr(3) = '') then
    begin
      MessageDlg(Msg00003, mtInformation, [mbOk], 0);
      Halt;
    end;

  // Consulta Empresa Cadastrada no Banco de Dados Geral
  QryEmpresa.Open;
  if QryEmpresa.RecordCount = 0 then
    begin

      // Caso a Empresa não esteja Cadastrada envia mensagens ao Usuario
      MessageDlg(Msg00001, mtInformation, [mbOk], 0);
      // Sai do Sistema
      Halt;
    end
  else
    begin
      // Attribui o Dia do Fechamento para a variável Global (usado em todo
      // o programa) vDiaSemana
      Parametros.vDiaSemana := QryEmpresa.FieldByName('Dia_Fechamento').AsInteger;
      if Parametros.vDiaSemana + 1 > 7
        then Parametros.vPrimeiroDiaSemana := 1 // domingo
        else Parametros.vPrimeiroDiaSemana := FMenu.Parametros.vDiaSemana + 1 // demais dias
    end;

  // Busca todas as permissões do Usuário e joga as opções dentro de um array
  with QryAcessos do
    begin
      dbsAcessos.Connected := True;
      ParamByName('Usuario').AsString := Empresa.Usuario;              // Usuário ID
      ParamByName('Senha').AsString := Criptografar(Empresa.Senha, 8); // Senha do Usuário
      ParamByName('Sistema').AsString := Empresa.Sistema;              // Codigo do Sistema
      Open;
      if RecordCount = 0 then
        begin
          MessageDlg(Msg00002, mtInformation, [mbOk], 0);
          Halt;
        end;
      First;
      ListaTelas := [];  // Define a variável Lista Telas como nulo(vazio)
      ListaTelas := [0]; // O indice zero e usado em todos os Tag´s que não
                         // precisam de permissões
      while not eof do
        begin
          // Acrescenta cada permissão a ListaTelas da Tabela Permissões
          ListaTelas := ListaTelas + [FieldByName('Cod_Tela').AsInteger];
          Next;
        end;
      dbsAcessos.Connected := True;
    end;

  // Verifica no Menu as opções que serão mostradas para o Usuario
  for Contador := 0 to mnmPrincipal.Items.Count - 1 do
    begin
      Flag := False;
      for Item := 0 to mnmPrincipal.Items[Contador].count - 1 do
        begin
          // Procura o Item do Menu dentro da variavel ListaTelas
          if (mnmPrincipal.Items[Contador].items[Item].Tag in ListaTelas) then
            begin
              Flag := True;
              mnmPrincipal.Items[Contador].items[Item].Visible := True;
            end
          else mnmPrincipal.Items[Contador].items[Item].Visible := False;

          FlagSub := False;
          for SubItem := 0 to mnmPrincipal.Items[Contador].Items[Item].Count - 1 do
            begin
              // Procura o Item do Menu dentro da variavel ListaTelas
              if (mnmPrincipal.Items[Contador].Items[Item].Items[SubItem].Tag in ListaTelas) then
                begin
                  Flag := True;
                  FlagSub := True;
                  mnmPrincipal.Items[Contador].Items[Item].Items[SubItem].Visible := True;
                end
              else mnmPrincipal.Items[Contador].Items[Item].Items[SubItem].Visible := False;

              FlagSub2 := False;
              for SubItem2 := 0 to mnmPrincipal.Items[Contador].Items[Item].Items[SubItem].Count - 1 do
                begin
                  // Procura o Item do Menu dentro da variavel ListaTelas
                  if (mnmPrincipal.Items[Contador].Items[Item].Items[SubItem].Items[SubItem2].Tag in ListaTelas) then
                    begin
                      Flag := True;
                      FlagSub := True;
                      FlagSub2 := True;
                      mnmPrincipal.Items[Contador].Items[Item].Items[SubItem].Items[SubItem2].Visible := True;
                    end
                  else mnmPrincipal.Items[Contador].Items[Item].Items[SubItem].Items[SubItem2].Visible := False;
                end;
              if mnmPrincipal.Items[Contador].Items[Item].Items[SubItem].Count > 0 then
                 mnmPrincipal.Items[Contador].Items[Item].Items[SubItem].Visible := FlagSub2;
            end;
          if mnmPrincipal.Items[Contador].Items[Item].Count > 0 then
            mnmPrincipal.Items[Contador].Items[Item].Visible := FlagSub;
        end;
      if mnmPrincipal.Items[Contador].Count > 0 then
         mnmPrincipal.Items[Contador].Visible := Flag;
    end;

  // Verifica na Barra de Tarefas as opções que serão mostradas para o Usuario
  for Contador := 0 to spbFerramentas.SectionCount - 1 do
    begin
      for Item := 0 to spbFerramentas.ItemsCount(Contador) - 1 do
        begin
          // Procura o Item da SpeedBar do Menu dentro da variavel ListaTelas
          if (spbFerramentas.Sections[Contador].Items[Item].Tag in ListaTelas) then
            begin
              spbFerramentas.Sections[Contador].Items[Item].Visible := True;
            end
          else
            begin
              spbFerramentas.Sections[Contador].Items[Item].Visible := False;
            end;
        end;
    end;
end;

procedure TFMenu.spiSaidaClick(Sender: TObject);
begin
  FMenu.dbsGeral.StartTransaction;
  qryApagaUsuario.close;
  qryApagaUsuario.ParamByName('Usuario').AsString := Empresa.Usuario;              // Usuário ID
  qryApagaUsuario.ParamByName('Sistema').AsString := 'Manejo';
  qryApagaUsuario.execsql;
  FMenu.dbsGeral.Commit;
  Close;
end;

procedure TFMenu.Sada2Click(Sender: TObject);
begin
  Close;
end;


function TQVisualizador.Show(AQRPrinter : TQRPrinter) : TWinControl;
begin
  ////////////////////////////
  Result := TFVisualizado.CreatePreview(Application, AQRPrinter);
  TFVisualizado(Result).Show;
end;

function TQVisualizador.ShowModal(AQRPrinter : TQRPrinter): TWinControl;
begin
  ////////////////////////////
  Result := TFVisualizado.CreatePreview(Application, AQRPrinter);
  TFVisualizado(Result).ShowModal;
end;

procedure TFMenu.FormDestroy(Sender: TObject);
begin
  dbsGeral.Connected := False;
  dbsManejo.Connected := False;
  dbsIncubatorio.Connected := False;
end;

procedure TFMenu.Cascata1Click(Sender: TObject);
begin
  // Mostra as Janelas em Cascata
  Cascade;
end;

procedure TFMenu.LadoaLadoHorizontal1Click(Sender: TObject);
begin
  // Mostra as Janelas lado a lado Horizontal
  TileMode := tbHorizontal;
  Tile;
end;

procedure TFMenu.LadoaLadoVertical1Click(Sender: TObject);
begin
  // Mostra as Janelas lado a lado Verticalmente
  TileMode := tbVertical;
  Tile;
end;

procedure TFMenu.Organizarcones1Click(Sender: TObject);
begin
  // Organiza os Ícones
  ArrangeIcons;
end;

procedure TFMenu.MinimizarTodas1Click(Sender: TObject);
var
  I: Integer;
begin
  // Fecha todas a janelas que estão abertas
  for I := MDIChildCount - 1 downto 0 do
    MDIChildren[I].WindowState := wsMinimized;
end;

procedure TFMenu.SobreoSistema1Click(Sender: TObject);
begin
  // Mostra a Janela Sobre o Sistema
  AbreSobre;
end;

procedure TFMenu.AjudadoSistema1Click(Sender: TObject);
begin
  // Chama o Help do Planejamento
  Application.HelpJump('Tabelas_do_Banco_de_Dados_no_Sistema');

end;

procedure TFMenu.UsandooSistema1Click(Sender: TObject);
begin
  // Chama o Help do Menu Principal

end;

procedure TFMenu.Configuraes1Click(Sender: TObject);
begin
  FConfiguracoes.Exibe;
end;

procedure TFMenu.Calculadora1Click(Sender: TObject);
begin
  calCalculadora.Execute;
end;

procedure TFMenu.LinhagemdeAves1Click(Sender: TObject);
begin
  FLinhagem.Exibe;
end;

procedure TFMenu.IdentificaodeAves1Click(Sender: TObject);
begin
  FIdentificacao.Exibe;
end;

procedure TFMenu.MtodosdeAplicao1Click(Sender: TObject);
begin
  FMetodoVacinasMedicamentos.Exibe;
end;

procedure TFMenu.VacinaseMedicamentos2Click(Sender: TObject);
begin
  FVacinasMedicamentos.Exibe;
end;

procedure TFMenu.FasesdeCriao2Click(Sender: TObject);
begin
  FFasesCriacao.Exibe;
end;

procedure TFMenu.TiposdeRao2Click(Sender: TObject);
begin
  FTipoRacao.Exibe;
end;

procedure TFMenu.Rao1Click(Sender: TObject);
begin
  FRacao.Exibe;
end;

procedure TFMenu.Ocorrncias2Click(Sender: TObject);
begin
  FOcorrencias.Exibe;
end;

procedure TFMenu.Laboratrio1Click(Sender: TObject);
begin
  FLaboratorios.Exibe;
end;

procedure TFMenu.FatordeAvaliaoTcnica1Click(Sender: TObject);
begin
  FFatorAvaliacao.Exibe;
end;

procedure TFMenu.Causas2Click(Sender: TObject);
begin
  FCausa.Exibe;
end;

procedure TFMenu.Padres1Click(Sender: TObject);
begin
  FPadrao.Exibe;
end;

procedure TFMenu.VacinaseMedicamentosdaRao1Click(Sender: TObject);
begin
  FDetalhesRacao.Exibe;
end;

procedure TFMenu.Atividades1Click(Sender: TObject);
begin
  FAtividades.Exibe;
end;

procedure TFMenu.AlojamentodeAves1Click(Sender: TObject);
begin
  FAlojamentoAves.Exibe;
end;

procedure TFMenu.CompletarGalpo1Click(Sender: TObject);
begin
  FCompletarGalpao.Exibe;
end;

procedure TFMenu.AlojamentodeLote1Click(Sender: TObject);
begin
  FLotes.Exibe;
end;

procedure TFMenu.ProgramaoBsicadeAtividades1Click(Sender: TObject);
begin
  FProgramacaoAtividades.Exibe;
end;

procedure TFMenu.ProgramaodeManejo1Click(Sender: TObject);
begin
  FProgramacaoManejo.Exibe;
end;

procedure TFMenu.AgrupamentodeLote1Click(Sender: TObject);
begin
  FAgrupamentoLotes.Exibe;
end;

procedure TFMenu.AvaliaoTcnica1Click(Sender: TObject);
begin
  FAvaliacaoTecnica.Exibe;
end;

procedure TFMenu.AcertodeSaldo1Click(Sender: TObject);
begin
  FAcertoSaldo.Exibe;
end;

procedure TFMenu.Faltadegua1Click(Sender: TObject);
begin
  FMovimentoFaltaAgua.Exibe;
end;

procedure TFMenu.FaltadeEnergia1Click(Sender: TObject);
begin
  FMovimentoFaltaEnergia.Exibe;
end;

procedure TFMenu.UsodeVacinas1Click(Sender: TObject);
begin
  FMovimentoUsoVacinas.Exibe;
end;

procedure TFMenu.Debicagem1Click(Sender: TObject);
begin
  FMovimentoDebicagem.Exibe;
end;

procedure TFMenu.Seleo1Click(Sender: TObject);
begin
  FMovimentoSelecao.Exibe;
end;

procedure TFMenu.Pulorose1Click(Sender: TObject);
begin
  FMovimentoPulorose.Exibe;
end;

procedure TFMenu.Acasalamento1Click(Sender: TObject);
begin
  FMovimentoAcasalamento.Exibe;
end;

procedure TFMenu.EntradadeRao1Click(Sender: TObject);
begin
  FMovimentoEntradaRacao.Exibe;
end;

procedure TFMenu.RegistrodeTemperaturaUmidadeLubrificao1Click(
  Sender: TObject);
begin
  FMovimentoRegistroTemperatura.Exibe;
end;

procedure TFMenu.UsodeMedicamentos1Click(Sender: TObject);
begin
  FMovimentoUsoMedicamentos.Exibe;
end;

procedure TFMenu.TestedeLote1Click(Sender: TObject);
begin
  FMovimentoTesteLote.Exibe;
end;

procedure TFMenu.TranfernciadeAves1Click(Sender: TObject);
begin
  FMovimentoTransferenciaAves.Exibe;
end;

procedure TFMenu.ConsumodeRao1Click(Sender: TObject);
begin
  FMovimentoConsumoRacao.Exibe;
end;

procedure TFMenu.MudanadeEndereo1Click(Sender: TObject);
begin
  FMovimentoMudancaEndereco.Exibe;
end;

procedure TFMenu.Box1Click(Sender: TObject);
begin
  FBox.Exibe;
end;

procedure TFMenu.Pesagem1Click(Sender: TObject);
begin
  FPesagem.Exibe;
end;

procedure TFMenu.ProduodeOvos1Click(Sender: TObject);
begin
  FMovimentoProducaoOvos.Exibe;
end;

procedure TFMenu.PesoEspecfico1Click(Sender: TObject);
begin
  FPesoEspecifico.Exibe;
end;

procedure TFMenu.SistemadeArraoamento1Click(Sender: TObject);
begin
  FSistemaArracoamento.Exibe;
end;

procedure TFMenu.CompletarIdades1Click(Sender: TObject);
begin
  FComplementarIdades.Exibe;
end;

procedure TFMenu.DesvincularLotesAgrupados1Click(Sender: TObject);
begin
  FDesvincularLote.Exibe;
end;

procedure TFMenu.EncerrarPadro1Click(Sender: TObject);
begin
  FEncerrarPadroes.Exibe;
end;

procedure TFMenu.AcertodeSaldoProduo1Click(Sender: TObject);
begin
  FAlojamentoProducao.Exibe;
end;

procedure TFMenu.MonitordeMovimentos1Click(Sender: TObject);
begin
  FMonitorMovimentos.Exibe;
end;

procedure TFMenu.Perdas1Click(Sender: TObject);
begin
  FPerdas.Exibe;
end;

procedure TFMenu.FechamentoSemanal1Click(Sender: TObject);
begin
  FFechamentoSemanal.Exibe;
end;

procedure TFMenu.Funo1Click(Sender: TObject);
begin
  FFuncao.Exibe;
end;

procedure TFMenu.Responsvel1Click(Sender: TObject);
begin
  FResponsavel.exibe;
end;

procedure TFMenu.mnuRelDiarioClick(Sender: TObject);
begin
   FRelatDiario.Exibe();
end;
procedure TFMenu.mnuContProdClick(Sender: TObject);
begin
   FRelatContPRod.Exibe();
end;

procedure TFMenu.mnuRelacaoClick(Sender: TObject);
begin
  FRelatRelacao.Exibe();
end;

procedure TFMenu.mnuPosClick(Sender: TObject);
begin
  FRelatPosicao.Exibe();
end;

procedure TFMenu.mnuAnalProdClick(Sender: TObject);
begin
  FRelatAnalProd.Exibe();
end;

procedure TFMenu.mnuDesempenhoClick(Sender: TObject);
begin
   FGrafDesempenho.Exibe();
end;

procedure TFMenu.mnuPesagemClick(Sender: TObject);
begin
  FRelatPesagem.Exibe();
end;

procedure TFMenu.mnuResumoPesagemClick(Sender: TObject);
begin
  FRelatResumoPesagem.Exibe();
end;

procedure TFMenu.FechamentodoLote1Click(Sender: TObject);
begin
  FMovimentoDescarteFinal.Exibe();
end;

procedure TFMenu.mnuCriaRecriaClick(Sender: TObject);
begin
  FRelatCriaRecria.Exibe;
end;

procedure TFMenu.mnuFichaFechamentoClick(Sender: TObject);
begin
  FRelatFechamento.Exibe();
end;

procedure TFMenu.AcertodeAvesnosBoxes1Click(Sender: TObject);
begin
  FRelatDistribBox.Exibe();
end;

procedure TFMenu.ControledeEstoque1Click(Sender: TObject);
begin
  FRelatContEstoque.Exibe();
end;

procedure TFMenu.GruposdeAvaliaoTcnica1Click(Sender: TObject);
begin
  FGrupoAvaliacao.Exibe();
end;

procedure TFMenu.SaldodeAves1Click(Sender: TObject);
begin
  FRelatSaldoAves.Exibe();
end;

procedure TFMenu.SubGruposdeAvaliaoTcnica1Click(Sender: TObject);
begin
  FSubGrupoAvaliacao.Exibe;
end;

procedure TFMenu.Planilha1Click(Sender: TObject);
begin
   FRelatPlaAvaliacao.exibe();
end;

procedure TFMenu.Eventos1Click(Sender: TObject);
begin
  FCadastroEventos.Exibe();
end;

procedure TFMenu.Eventos2Click(Sender: TObject);
begin
  FEventos.Exibe();
end;

procedure TFMenu.ArraoamentoMachoFmeasJuntos1Click(Sender: TObject);
begin
  FArracoamentoJuntos.Exibe();
end;

procedure TFMenu.ArraoamentoMachoFmeasJuntos2Click(Sender: TObject);
begin
  FArracoamentoSeparados.Exibe();
end;

procedure TFMenu.ArraoamentoMachoFmeasAvs1Click(Sender: TObject);
begin
  FArracoamentoAvos.Exibe();
end;

procedure TFMenu.ArraoamentoRecria1Click(Sender: TObject);
begin
  FArracoamentoRecria.Exibe();
end;

procedure TFMenu.RelatriodeArraoamento1Click(Sender: TObject);
begin
  FRelatArracoamento.Exibe();
end;

procedure TFMenu.ProduoSemanal1Click(Sender: TObject);
begin
  FRelatProdSemanal.exibe();
end;

procedure TFMenu.ComparativodeDesempenho1Click(Sender: TObject);
begin
  FRelatCompaDese.Exibe();
end;

procedure TFMenu.ProduoXRecebimento1Click(Sender: TObject);
begin
   FProducaoRecebimento.exibe;
end;

procedure TFMenu.ProgramaLuz1Click(Sender: TObject);
begin
     FProgramaLuz.exibe;
end;

procedure TFMenu.AcompanhamentodeEcloso1Click(Sender: TObject);
begin
   FRelatAcompEclosao.exibe();
end;

procedure TFMenu.HistricodeAlojamentos1Click(Sender: TObject);
begin
   FRelatAlojamentos.exibe;
end;

procedure TFMenu.ComparaodaProduo1Click(Sender: TObject);
begin
  FRelatComparaProducao.exibe();
end;

procedure TFMenu.EstatsticodePlantelProduo1Click(Sender: TObject);
begin
 FRelatEstatistica.Exibe;
end;

procedure TFMenu.PesagemProvisria1Click(Sender: TObject);
begin
 FPesagemProv.Exibe;
end;

procedure TFMenu.ResumodePesagemProvClick(Sender: TObject);
begin
 FRelatResumoPesagemProv.Exibe();
end;

procedure TFMenu.PesagemdeAvesProvisria1Click(Sender: TObject);
begin
 FRelatPesagemProv.Exibe();
end;

procedure TFMenu.FechamentoLote1Click(Sender: TObject);
begin
   FFechamentoLote.Exibe;
end;

procedure TFMenu.ConsultaMovimentos1Click(Sender: TObject);
begin
   FConsultaMovtoSemana.exibe();
end;

procedure TFMenu.ClassificaodeOvos1Click(Sender: TObject);
begin
   FClassificacaoOvos.Exibe;
end;

procedure TFMenu.Programao1Click(Sender: TObject);
begin
   FRelatProgAtividades.exibe; 
end;

procedure TFMenu.AproveitamentodeOvos1Click(Sender: TObject);
begin
   FRelatAproveitamentoOvo.exibe();
end;

procedure TFMenu.FechamentoRecria1Click(Sender: TObject);
begin
   FRelatFechamentoRecriaF.exibe();
end;

procedure TFMenu.FechamentoProduo1Click(Sender: TObject);
begin
   FRelatFechamentoProdF.exibe();
end;

procedure TFMenu.Gerencial1Click(Sender: TObject);
begin
   FRGerencialLoteF.exibe();
end;

procedure TFMenu.Dirio1Click(Sender: TObject);
begin
   FMovLote.Exibe;
end;

procedure TFMenu.Mortalidade1Click(Sender: TObject);
begin
   FRelatMortalidade.exibe();
end;

procedure TFMenu.RomaneiodeOvosTransfernciaDoaoVenda1Click(
  Sender: TObject);
begin
   FExpedicaoOvos.Exibe;
end;

procedure TFMenu.SadadeOvos1Click(Sender: TObject);
begin
   FRelatRomaneioF.exibe();
end;

procedure TFMenu.RomaneiodeAves1Click(Sender: TObject);
begin
   FExpedicaoAves.Exibe;
end;

procedure TFMenu.AcessoGranja1Click(Sender: TObject);
begin
   FAcesso.Exibe;
end;

procedure TFMenu.SaldodeMatrizes1Click(Sender: TObject);
begin
   FRelatSaldo.exibe();
end;

procedure TFMenu.ParmetrosdeCusto1Click(Sender: TObject);
begin
   FParSaldoMatrizes.Exibe;
end;

procedure TFMenu.CriticadeProduodeOvos1Click(Sender: TObject);
begin
   FRelatCriticaProducao.exibe();
end;

procedure TFMenu.TransfernciaentreLotes1Click(Sender: TObject);
begin
   FRelatTransfAvesFiltro.exibe();
end;

procedure TFMenu.ConsumodeRao2Click(Sender: TObject);
begin
   FRelatConsumoRacaoFiltro.exibe();
end;

procedure TFMenu.Alojamentos1Click(Sender: TObject);
begin
   FRelatLotesAloj.exibe();
end;

procedure TFMenu.ResumoContbil1Click(Sender: TObject);
begin
   FRelatResumoContabil.exibe();
end;

procedure TFMenu.RelaodeIdades1Click(Sender: TObject);
begin
   FRelatIdade.exibe();
end;

procedure TFMenu.PedidodeRao1Click(Sender: TObject);
begin
   FPedidoRacao.Exibe;
end;

procedure TFMenu.PedidodeRao2Click(Sender: TObject);
begin
  FRelatPedidoRacao.exibe();
end;

procedure TFMenu.MovimentaodeOvos1Click(Sender: TObject);
begin
   FRelatMovOvoFiltro.exibe();
end;

procedure TFMenu.RomaneiodeAves2Click(Sender: TObject);
begin
   FRelatRomaneioAvesF.exibe();
end;

procedure TFMenu.ConsumodeRao3Click(Sender: TObject);
begin
   FRelatConsumoRacaoLote.exibe(); 
end;

procedure TFMenu.RelaodeVacinas1Click(Sender: TObject);
begin
   FRelatRelacaoVacinas.exibe();
end;

procedure TFMenu.ProgramaodeManejo2Click(Sender: TObject);
begin
   FRelatProgramaVacinas.exibe();
end;

procedure TFMenu.AcompanhamentoTcnicoMensal1Click(Sender: TObject);
begin
   FRelatAcompTecnicoMensal.exibe();
end;

procedure TFMenu.FormActivate(Sender: TObject);
begin
FMenu.caption := 'Avecom  (34) 3235 4982 - Versão: '+ DateTimeToStr(FileDateToDateTime(FileAge(ParamStr(0))))
end;

procedure TFMenu.ImportaodeRao1Click(Sender: TObject);
begin
   FIntegracaoInsumos.exibe();
end;

procedure TFMenu.ReceberdadosdoMobile1Click(Sender: TObject);
begin
   FPalm.Exibe;
end;

end.


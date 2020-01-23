unit UFechamentoSemanal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPai, Db, DBTables, Menus, SpeedBar, ExtCtrls, ToolEdit, DBCtrls,
  StdCtrls, Mask, CurrEdit, Buttons, ComCtrls, ImgList, Tabs, Grids,
  DBGrids;

type
  TFFechamentoSemanal = class(TFPai)
    QryResultadoSemanal: TQuery;
    dtsQryLotes: TDataSource;
    QryLotes: TQuery;
    pnlStatus: TPanel;
    QryBusca: TQuery;
    Fechamento: TSpeedItem;
    Fechamento1: TMenuItem;
    QryDesempenho: TQuery;
    ntbPaginas: TNotebook;
    tstAbas: TTabSet;
    Panel1: TPanel;
    QryReduzidos: TQuery;
    dtsQryReduzidos: TDataSource;
    pnlReduzido: TPanel;
    GroupBox1: TGroupBox;
    lblReduzido: TLabel;
    cedLoteMin: TCurrencyEdit;
    cedLoteMax: TCurrencyEdit;
    detDataReduzido: TDateEdit;
    lblDataFechamento: TLabel;
    lblBarra: TLabel;
    btnSelecionar: TBitBtn;
    DBGrid1: TDBGrid;
    pnlEndereco: TPanel;
    GroupBox2: TGroupBox;
    lblEndereco: TLabel;
    detEndereco: TDateEdit;
    DBGrid2: TDBGrid;
    lblLocal: TLabel;
    lblGranja: TLabel;
    lblGrupo: TLabel;
    lblIdentificacao: TLabel;
    lblLinhagem: TLabel;
    dlcLocal: TDBLookupComboBox;
    dlcGranja: TDBLookupComboBox;
    dlcGrupo: TDBLookupComboBox;
    dlcIdentificacao: TDBLookupComboBox;
    dlcLinhagem: TDBLookupComboBox;
    QryLocal: TQuery;
    dtsQryLocal: TDataSource;
    QryGranja: TQuery;
    dtsQryGranja: TDataSource;
    QryGrupo: TQuery;
    dtsQryGrupo: TDataSource;
    QryIdentificacao: TQuery;
    dtsQryIdentificacao: TDataSource;
    QryLinhagem: TQuery;
    dtsQryLinhagem: TDataSource;
    QryEnderecos: TQuery;
    dtsQryEnderecos: TDataSource;
    GroupBox3: TGroupBox;
    lblIdade: TLabel;
    lblLote: TLabel;
    lblData: TLabel;
    cedIdade_Inicio: TCurrencyEdit;
    cedCod_Lote_Num: TCurrencyEdit;
    dlcLotes: TDBLookupComboBox;
    detData: TDateEdit;
    lblLotes: TLabel;
    QryDes_Agrup: TQuery;
    qryRas_Agrup: TQuery;
    Query1: TQuery;
    Query2: TQuery;
    qryAcertoProdJ: TQuery;
    qryAcertoProdJ1: TQuery;
    qryApagaAAP: TQuery;
    qryGeraAAP: TQuery;
    qryAtualizaCadLoteProd: TQuery;
    CheckBox1: TCheckBox;
    qryApagaAAI: TQuery;
    qryGeraAAI: TQuery;
    qryAcertoAAIJ: TQuery;
    qryAcertaAvesIni: TQuery;
    function LimpaCampos: Boolean;
    function HabilitaOpcoes(Habilita: Boolean): Boolean;
    function SelecionaReduzidos(vData: TDateTime; vLoteMin, vLoteMax: Integer): Boolean;
    function SelecionaEnderecos(vLocal, vGranja, vGrupo, vLinhagem, vIdentificacao: String; vData: TDateTime): Boolean;
    procedure FechamentoLote;
    procedure FechamentoReduzido;
    procedure FechamentoEndereco;
    procedure Exibe;
    procedure FechamentoClick(Sender: TObject);
    procedure dlcLotesCloseUp(Sender: TObject);
    procedure dlcLotesDropDown(Sender: TObject);
    procedure cedCod_Lote_NumChange(Sender: TObject);
    procedure cedCod_Lote_NumExit(Sender: TObject);
    procedure detDataExit(Sender: TObject);
    procedure cedIdade_InicioExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cedLoteMinChange(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure tstAbasClick(Sender: TObject);
    procedure dlcLocalCloseUp(Sender: TObject);
    procedure detEnderecoExit(Sender: TObject);
    procedure dlcLocalDropDown(Sender: TObject);
    procedure dlcGranjaDropDown(Sender: TObject);
    procedure dlcGrupoDropDown(Sender: TObject);
    procedure dlcIdentificacaoDropDown(Sender: TObject);
    procedure dlcLinhagemDropDown(Sender: TObject);
    procedure dlcLocalExit(Sender: TObject);
    procedure detDataReduzidoExit(Sender: TObject);
    procedure spiLimpaCamposClick(Sender: TObject);
    procedure cedIdade_InicioChange(Sender: TObject);
    procedure detEnderecoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFechamentoSemanal: TFFechamentoSemanal;

implementation

{$R *.DFM}

uses Funcoes, UMensagens, UMenu;

procedure TFFechamentoSemanal.Exibe;
begin
  Screen.Cursor := crHourGlass; // Cursor de Espera
  if FFechamentoSemanal = nil then
    begin
      FFechamentoSemanal := TFFechamentoSemanal.Create(Self); // Cria o Formulario
    end;
  if FPai.VerificaOpcao(FFechamentoSemanal.Tag, FFechamentoSemanal) then // Verifica as Permissões
    begin
      FFechamentoSemanal.LimpaCampos;
      FFechamentoSemanal.Show;
      FFechamentoSemanal.WindowState := wsNormal;  {O form esta minimizado}
    end;
  FFechamentoSemanal.QryLotes.parambyname('usuario').asstring := FMenu.Empresa.Usuario;
  FFechamentoSemanal.QryLotes.Open;
  FFechamentoSemanal.QryLocal.Open;
  FFechamentoSemanal.QryGranja.Open;
  FFechamentoSemanal.QryGrupo.Open;
  FFechamentoSemanal.QryIdentificacao.Open;
  FFechamentoSemanal.QryLinhagem.Open;
  Screen.Cursor := crDefault; // Cursor Normal
end;

function TFFechamentoSemanal.LimpaCampos: Boolean;
begin
  cedCod_Lote_Num.Clear;
  dlcLotes.KeyValue := 0;
  cedIdade_Inicio.Clear;
  detData.Clear;
  cedCod_Lote_NumExit(FFechamentoSemanal);
  detData.Date := BuscaIdadeUltimoMovimento(QryBusca,cedCod_Lote_Num.AsInteger, '', 'avfsras1', 'Dat_Inicio');
  detDataExit(FFechamentoSemanal);

  // Página Data
  detDataReduzido.Clear;
  cedLoteMin.Clear;
  cedLoteMax.Clear;
  detDataReduzido.Date := detData.Date;

  // Página Endereço
  detEndereco.Clear;
  dlcLocal.KeyValue := 0;
  dlcGranja.KeyValue := 0;
  dlcGrupo.KeyValue := 0;
  dlcLinhagem.KeyValue := 0;
  dlcIdentificacao.KeyValue := 0;
  detEndereco.Date := detData.Date;
  Result := True;
end;

procedure TFFechamentoSemanal.FechamentoClick(Sender: TObject);
begin
  inherited;
  if CheckBox1.checked then
  begin

      qryApagaAAP.close;
      qryApagaAAP.parambyname('cod_lote_num').asinteger := cedCod_Lote_Num.asinteger;
      qryApagaAAP.execsql;
      
      qryGeraAAP.close;
      qryGeraAAP.parambyname('cod_lote_num').asinteger := cedCod_Lote_Num.asinteger;
      qryGeraAAP.execsql;
      
      
      qryAcertoProdJ.close;
      qryAcertoProdJ.parambyname('cod_lote_num').asinteger := cedCod_Lote_Num.asinteger;
      qryAcertoProdJ.execsql;
      
      qryAcertoProdJ1.close;
      qryAcertoProdJ1.parambyname('cod_lote_num').asinteger := cedCod_Lote_Num.asinteger;
      qryAcertoProdJ1.execsql;
      
      
      qryAtualizaCadLoteProd.close;
      qryAtualizaCadLoteProd.parambyname('cod_lote_num').asinteger := cedCod_Lote_Num.asinteger;
      qryAtualizaCadLoteProd.execsql;


      qryApagaAAI.close;
      qryApagaAAI.parambyname('cod_lote_num').asinteger := cedCod_Lote_Num.asinteger;
      qryApagaAAI.execsql;
      
      qryGeraAAI.close;
      qryGeraAAI.parambyname('cod_lote_num').asinteger := cedCod_Lote_Num.asinteger;
      qryGeraAAI.execsql;

      
      qryAcertoAAIJ.close;
      qryAcertoAAIJ.parambyname('cod_lote_num').asinteger := cedCod_Lote_Num.asinteger;
      qryAcertoAAIJ.execsql;

      qryAcertaAvesIni.close;
      qryAcertaAvesIni.parambyname('cod_lote_num').asinteger := cedCod_Lote_Num.asinteger;
      qryAcertaAvesIni.execsql;

  end;
  case ntbPaginas.PageIndex of
    0 : FechamentoLote;
    1 : begin
          if (not(QryReduzidos.Active)) or (QryReduzidos.RecordCount <= 0) then
            begin
              MessageDlg(Msg00064, mtInformation, [mbOK], 0);
              Exit;
            end;
          FechamentoReduzido;
        end;
    2 : begin
          if (not(QryEnderecos.Active)) or (QryEnderecos.RecordCount <= 0) then
            begin
              MessageDlg(Msg00064, mtInformation, [mbOK], 0);
              Exit;
            end;
          FechamentoEndereco;
        end;
  end;
  cedIdade_Inicio.asinteger := cedIdade_Inicio.asinteger + 1;
  
end;

procedure TFFechamentoSemanal.dlcLotesCloseUp(Sender: TObject);
begin
  inherited;
  cedCod_Lote_Num.AsInteger := QryLotes.FieldByName('Cod_Lote_Num').AsInteger;
  if detData.Date > 0 then detDataExit(Sender);
end;

procedure TFFechamentoSemanal.dlcLotesDropDown(Sender: TObject);
begin
  inherited;
  QryLotes.Close;
  QryLotes.parambyname('usuario').asstring := FMenu.Empresa.Usuario;
  QryLotes.Open;
end;

procedure TFFechamentoSemanal.cedCod_Lote_NumChange(Sender: TObject);
begin
  inherited;
  detData.Date := 0;
  // Está função é usada para realizar o Skip quando o campor for Código
  // Não remover está função
  if Length(cedCod_Lote_Num.Text) = (cedCod_Lote_Num.MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
  if cedIdade_Inicio.AsInteger >= 0 then cedIdade_InicioExit(Sender);    
end;

procedure TFFechamentoSemanal.cedCod_Lote_NumExit(Sender: TObject);
begin
  inherited;
  dlcLotes.KeyValue := cedCod_Lote_Num.AsInteger;
  if detData.Date = 0
    then detData.Date := BuscaIdadeUltimoMovimento(QryBusca,cedCod_Lote_Num.AsInteger, '', 'avfsras1', 'Dat_Inicio');
  if detData.Date > 0 then detDataExit(Sender);
end;

procedure TFFechamentoSemanal.detDataExit(Sender: TObject);
begin
  inherited;
  cedIdade_Inicio.AsInteger := BuscaIdade(cedCod_Lote_Num.AsInteger, detData.Date);
end;

function TFFechamentoSemanal.HabilitaOpcoes(Habilita: Boolean): Boolean;
begin
  // Página Lote
  lblLote.Enabled := Habilita;
  cedCod_Lote_Num.Enabled := Habilita;
  lblLotes.Enabled := Habilita;
  dlcLotes.Enabled := Habilita;
  lblIdade.Enabled := Habilita;
  cedIdade_Inicio.Enabled := Habilita;
  lblData.Enabled := Habilita;
  detData.Enabled := Habilita;

  // Página Data
  lblDataFechamento.Enabled := Habilita;
  detDataReduzido.Enabled := Habilita;
  lblReduzido.Enabled := Habilita;
  cedLoteMin.Enabled := Habilita;
  lblBarra.Enabled := Habilita;
  cedLoteMax.Enabled := Habilita;
  btnSelecionar.Enabled := Habilita;

  // Página Endereço
  lblEndereco.Enabled := Habilita;
  detEndereco.Enabled := Habilita;
  lblLocal.Enabled := Habilita;
  dlcLocal.Enabled := Habilita;
  lblGranja.Enabled := Habilita;
  dlcGranja.Enabled := Habilita;
  lblGrupo.Enabled := Habilita;
  dlcGrupo.Enabled := Habilita;
  lblLinhagem.Enabled := Habilita;
  dlcLinhagem.Enabled := Habilita;
  lblIdentificacao.Enabled := Habilita;
  dlcIdentificacao.Enabled := Habilita;
  Result := True;
end;

procedure TFFechamentoSemanal.cedIdade_InicioExit(Sender: TObject);
begin
  inherited;
  detData.Date := BuscaData(cedCod_Lote_Num.AsInteger, cedIdade_Inicio.AsInteger);
end;

procedure TFFechamentoSemanal.FormCreate(Sender: TObject);
begin
  inherited;
  SetBounds(0, 0, 528, 320); // Posição x, y e o Tamanho do Form
end;

procedure TFFechamentoSemanal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  QryLotes.Close;
  QryLocal.Close;
  QryGranja.Close;
  QryGrupo.Close;
  QryIdentificacao.Close;
  QryLinhagem.Close;
  QryReduzidos.Close;
  Action := caFree;    {Fecha o form}
  FFechamentoSemanal := nil; {Libera o form da memória}
end;

procedure TFFechamentoSemanal.cedLoteMinChange(Sender: TObject);
begin
  inherited;
  cedLoteMax.MinValue := cedLoteMin.AsInteger;
end;

function TFFechamentoSemanal.SelecionaReduzidos(vData: TDateTime; vLoteMin, vLoteMax: Integer): Boolean;
begin
  with QryReduzidos do
    begin
      DisableControls;
      Close;
      ParamByName('Data').AsDate := vData;
      ParamByName('LoteMin').AsInteger := vLoteMin;
      ParamByName('LoteMax').AsInteger := vLoteMax;
      Open;
      EnableControls;
    end;
  Result := True;
end;

function TFFechamentoSemanal.SelecionaEnderecos(vLocal, vGranja, vGrupo, vLinhagem, vIdentificacao: String; vData: TDateTime): Boolean;
var
  vSql : string;
begin
  with QryEnderecos do
    begin
      DisableControls;
      Close;
      vSql := '';

      if vLocal         <> '' then vSql := vSql + ' and edr.Cod_Local = ''' + vLocal + '''';
      if vGranja        <> '' then vSql := vSql + ' and edr.Cod_Granja = ''' + vGranja + '''';
      if vGrupo         <> '' then vSql := vSql + ' and edr.Cod_Grupo = ''' + vGrupo + '''';
      if vLinhagem      <> '' then vSql := vSql + ' and lot.Cod_Lf = ''' + vLinhagem + '''';
      if vIdentificacao <> '' then vSql := vSql + ' and lot.Ide_Ave = ''' + vIdentificacao + '''';

      sql.strings[16] := vSql;
      ParamByName('Data').AsDate := vData;
      Open;
      EnableControls;
    end;
  Result := True;
end;

procedure TFFechamentoSemanal.btnSelecionarClick(Sender: TObject);
begin
  inherited;
  // Verifica se a Data de Fechamento é uma Data válida
  if VerificaData(detDataReduzido.Text) = 0 then
    begin
      MessageDlg(Msg00061, mtInformation, [mbOK], 0);
      tstAbas.TabIndex := 1;
      ntbPaginas.PageIndex := tstAbas.TabIndex;
      detDataReduzido.SetFocus;
      Exit;
    end;

  // verificar se a data informada é um dia de fechamento
  if DayOfWeek(detDataReduzido.Date) <> FMenu.Parametros.vDiaSemana  then
    begin
      MessageDlg(Format(Msg00159, ['Data Fechamento', FormatDateTime('dddd', FMenu.Parametros.vDiaSemana)]), mtInformation, [mbOK], 0);
      tstAbas.TabIndex := 1;
      ntbPaginas.PageIndex := tstAbas.TabIndex;
      detDataReduzido.Date := ProximoDiaFechamento(detDataReduzido.Date);
      detDataReduzido.SetFocus;
      Exit;
    end;

  SelecionaReduzidos(detDataReduzido.Date, cedLoteMin.AsInteger, cedLoteMax.AsInteger);
end;

procedure TFFechamentoSemanal.FechamentoLote;
var
  vLoteAgrupado : Boolean;
begin
  inherited;
  // Verifica se o Lote informado existe no Banco de Dados
  if not(BuscaRegistro(QryBusca, 'Select * From avfslot1 ',
                                 'Where Cod_Lote_Num = ' + IntToStr(cedCod_Lote_Num.AsInteger)))
  then
    begin
      MessageDlg(Msg00122, mtInformation, [mbOK], 0);
      tstAbas.TabIndex := 0;
      ntbPaginas.PageIndex := tstAbas.TabIndex;
      cedCod_Lote_Num.SetFocus;
      Exit;
    end;

  // lote e do tipo agrupado
  vLoteAgrupado := UpperCase(QryBusca.FieldByName('ide_espec').AsString) = 'J';

  // Verifica se o Lote Informado está Ativo
//  if QryBusca.FieldByName('Dat_Efet_Desc').AsDateTime <> StrToDate('01/01/1900') then
//    begin
//      MessageDlg(Msg00054, mtInformation, [mbOK], 0);
//      tstAbas.TabIndex := 0;
//      ntbPaginas.PageIndex := tstAbas.TabIndex;
//      cedCod_Lote_Num.SetFocus;
//      Exit;
//    end;

  // Verifica se a Idade existe na tabela de Idades
  if not(BuscaRegistro(QryBusca, 'Select * From avfsdat1 ',
                                 'Where Idade = ' + IntToStr(cedIdade_Inicio.AsInteger) +
                                 '  and Cod_Lote_Num = ' + IntToStr(cedCod_Lote_Num.AsInteger)))
  then
    begin
      MessageDlg(Msg00060, mtInformation, [mbOK], 0);
      tstAbas.TabIndex := 0;
      ntbPaginas.PageIndex := tstAbas.TabIndex;
      cedIdade_Inicio.SetFocus;
      Exit;
    end;

  // Verifica se a Data de Fechamento é uma Data válida
  if VerificaData(detData.Text) = 0 then
    begin
      MessageDlg(Msg00061, mtInformation, [mbOK], 0);
      tstAbas.TabIndex := 0;
      ntbPaginas.PageIndex := tstAbas.TabIndex;
      detData.SetFocus;
      Exit;
    end;
  {
  // verificar se a data informada é um dia de fechamento
  if DayOfWeek(detData.Date) <> FMenu.Parametros.vDiaSemana  then
    begin
      MessageDlg(Format(Msg00159, ['Data Fechamento', FormatDateTime('dddd', FMenu.Parametros.vDiaSemana)]), mtInformation, [mbOK], 0);
      detData.Date := ProximoDiaFechamento(detData.Date);
      tstAbas.TabIndex := 0;
      ntbPaginas.PageIndex := tstAbas.TabIndex;
      detData.SetFocus;
      Exit;
    end;
        }
  try
    begin
      Screen.Cursor := crHourGlass;
      HabilitaOpcoes(False);
      FMenu.dbsManejo.StartTransaction;
{      LockExclusivo(QryLock, 'avfsras1');
      LockExclusivo(QryLock, 'avfsacl1');
      LockExclusivo(QryLock, 'avfsdes1');
      LockExclusivo(QryLock, 'avfsrra1');
      LockExclusivo(QryLock, 'avfsrva1');
}



      // Executa o Fechamento Semanal do Lote, esse fechamento pode ocorrer para
      // uma ou mais Idades.
      pnlStatus.Caption := 'Totalizando o Desempenho do Lote ...';
      FFechamentoSemanal.Refresh;

      if Not vLoteAgrupado then
        begin
          with QryDesempenho do
            begin
              Close;
              sql.strings[6] := inttostr(cedCod_Lote_Num.AsInteger);
              sql.strings[9] := inttostr(cedIdade_Inicio.AsInteger);
              ExecSQL;
            end;

          // Executa o Fechamento Semanal do Lote, esse fechamento pode ocorrer para
          // uma ou mais Idades.
          pnlStatus.Caption := 'Totalizando Resultado Acumulado Semanal ...';
          FFechamentoSemanal.Refresh;
          with QryResultadoSemanal do
            begin
              Close;
              sql.strings[7] := inttostr(cedCod_Lote_Num.AsInteger);
              sql.strings[10] := inttostr(cedIdade_Inicio.AsInteger);
              sql.strings[13] := ''''+formatdatetime('dd/mm/yyyy',detData.Date)+'''';
              ExecSQL;
            end;
        end
       else
        begin
           with QryDesempenho do
            begin
              Close;
              sql.strings[6] := inttostr(cedCod_Lote_Num.AsInteger);
              sql.strings[9] := inttostr(cedIdade_Inicio.AsInteger);
              ExecSQL;
            end;

          // Executa o Fechamento Semanal do Lote, esse fechamento pode ocorrer para
          // uma ou mais Idades.
          pnlStatus.Caption := 'Totalizando Resultado Acumulado Semanal ...';
          FFechamentoSemanal.Refresh;
          with QryResultadoSemanal do
            begin
              Close;
              sql.strings[7] := inttostr(cedCod_Lote_Num.AsInteger);
              sql.strings[10] := inttostr(cedIdade_Inicio.AsInteger);
              sql.strings[13] := ''''+formatdatetime('dd/mm/yyyy',detData.Date)+'''';
              ExecSQL;
            end;
        end;

      FMenu.dbsManejo.Commit;
      pnlStatus.Caption := 'Fechamento Semanal do Lote foi realizado com sucesso !';
      FFechamentoSemanal.Refresh;
      HabilitaOpcoes(True);
      Screen.Cursor := crDefault;
    end;
  except

{if vExiste > 0 then


	   Select
           pad.pct_postura,
           pad.qtd_ovo_ave,
           pad.peso_medio_ovo,
           pad.pct_morte_fem,
           pad.peso_fem,
           pad.qtd_racao_fem,
           pad.qtd_caloria_fem,
           pct_morte_mac,
           pad.peso_mac,
           pad.qtd_racao_mac,
           pad.qtd_caloria_mac,
           pad.qtd_racao,
           pad.qtd_caloria,
           0.00,
           pad.aprov_ovo,
           pad.pct_cv_fem,
           pad.pct_cv_mac,
           pad.qtd_proteina_mac,
           pad.qtd_proteina_fem
          into
          vpostura_padrao ,
          vovo_ave_padrao ,
          vpeso_ovo_padrao ,
          vmortal_padrao_fem ,
          vpeso_padrao_fem ,
          vgrama_padrao_fem ,
          vcalor_padrao_fem ,
          vmortal_padrao_mac ,
          vpeso_padrao_mac ,
          vgrama_padrao_mac ,
          vcalor_padrao_mac ,
          vracao_padrao ,
          vcaloria_padrao ,
          vracao_ovo_padrao ,
          vaprov_ovo_padrao ,
          vcv_padrao_fem  ,
          vcv_padrao_mac  ,
          vproteina_padrao_mac ,
          vproteina_padrao_fem

          From avfspad1 pad,
               avfslot1 lot
          Where
               pad.cod_lm = lot.cod_lm
          and pad.cod_lf = lot.cod_lf
           and pad.nro_est = lot.nro_est
          and pad.cod_linha = lot.cod_linha
           and pad.ide_ave = lot.ide_ave
           and lot.dat_aloj_inicial between pad.dat_ini_valid and pad.dat_fim_valid
           and lot.cod_lote_num = vcod_lote_num
           and pad.idade = vIdadeMin;
	else}
    on E: Exception do
      begin
        MessageDlg(Msg10003 + CHR(10) + '"' + E.Message + '".', mtError, [mbOk], 0);
        FMenu.dbsManejo.Rollback;
        pnlStatus.Caption := 'Não foi possível realizar o Fechamento Semanal do Lote !';
        FFechamentoSemanal.Refresh;
        HabilitaOpcoes(True);
        Screen.Cursor := crDefault;
      end;
  end;
end;

// Realiza o fechamento semanal de acordo com os lotes encontrados na lista
procedure TFFechamentoSemanal.FechamentoReduzido;
var
  vMarcador : TBookMark;
begin
  inherited;
  // Verifica se a Data de Fechamento é uma Data válida
  if VerificaData(detDataReduzido.Text) = 0 then
    begin
      MessageDlg(Msg00061, mtInformation, [mbOK], 0);
      tstAbas.TabIndex := 1;
      ntbPaginas.PageIndex := tstAbas.TabIndex;
      detDataReduzido.SetFocus;
      Exit;
    end;

  // verificar se a data informada é um dia de fechamento
  if DayOfWeek(detDataReduzido.Date) <> FMenu.Parametros.vDiaSemana  then
    begin
      MessageDlg(Format(Msg00159, ['Data Fechamento', FormatDateTime('dddd', FMenu.Parametros.vDiaSemana)]), mtInformation, [mbOK], 0);
      tstAbas.TabIndex := 1;
      ntbPaginas.PageIndex := tstAbas.TabIndex;
      detDataReduzido.Date := ProximoDiaFechamento(detDataReduzido.Date);
      detDataReduzido.SetFocus;
      Exit;
    end;

  SelecionaReduzidos(detDataReduzido.Date, cedLoteMin.AsInteger, cedLoteMax.AsInteger);

  try
    begin
      Screen.Cursor := crHourGlass;
      HabilitaOpcoes(False);
      FMenu.dbsManejo.StartTransaction;
{      LockExclusivo(QryLock, 'avfsras1');
      LockExclusivo(QryLock, 'avfsacl1');
      LockExclusivo(QryLock, 'avfsdes1');
      LockExclusivo(QryLock, 'avfsrra1');
      LockExclusivo(QryLock, 'avfsrva1');
}
      with QryReduzidos do
        begin
          if RecordCount <= 0 then pnlStatus.Caption := 'Não existe Lote(s) para realizar esta operação !';
          FFechamentoSemanal.Refresh;
          vMarcador := GetBookmark;
          DisableControls;
          First;
          while not eof do
            begin
              if Not (UpperCase(QryReduzidos.FieldByName('ide_espec').AsString) = 'J') then
                begin
                  // Executa o Fechamento Semanal do Lote, esse fechamento pode ocorrer para
                  // uma ou mais Idades.
                  pnlStatus.Caption := 'Totalizando o Desempenho do Lote ... Reduz. ' + IntToStr(QryReduzidos.FieldByName('Cod_Lote_Num').AsInteger);
                  FFechamentoSemanal.Refresh;
                  with QryDesempenho do
                    begin
                      Close;
                      sql.strings[6] := inttostr(QryReduzidos.FieldByName('Cod_Lote_Num').AsInteger);
                      sql.strings[9] := inttostr(QryReduzidos.FieldByName('Idade').AsInteger);
                      {ParamByName('Lote').AsInteger := QryReduzidos.FieldByName('Cod_Lote_Num').AsInteger;
                      ParamByName('Idade').AsInteger := QryReduzidos.FieldByName('Idade').AsInteger;}
                      ExecSQL;
                    end;

                  // Executa o Fechamento Semanal do Lote, esse fechamento pode ocorrer para
                  // uma ou mais Idades.
                  pnlStatus.Caption := 'Totalizando Resultado Acumulado Semanal ...' + IntToStr(QryReduzidos.FieldByName('Cod_Lote_Num').AsInteger);
                  FFechamentoSemanal.Refresh;
                  with QryResultadoSemanal do
                    begin
                      Close;
                      sql.strings[7] := inttostr(QryReduzidos.FieldByName('Cod_Lote_Num').AsInteger);
                      sql.strings[10] := inttostr(QryReduzidos.FieldByName('Idade').AsInteger);
                      sql.strings[13] := ''''+formatdatetime('dd/mm/yyyy',detDataReduzido.Date)+'''';
                      {ParamByName('Lote').AsInteger := QryReduzidos.FieldByName('Cod_Lote_Num').AsInteger;
                      ParamByName('Idade').AsInteger := QryReduzidos.FieldByName('Idade').AsInteger;
                      ParamByName('Data').AsDate := detDataReduzido.Date;   }
                      ExecSQL;
                    end;
                end
               else
                begin
                  // Executa o Fechamento Semanal do Lote, esse fechamento pode ocorrer para
                  // uma ou mais Idades.
                  pnlStatus.Caption := 'Totalizando o Desempenho do Lote ... Reduz. ' + IntToStr(QryReduzidos.FieldByName('Cod_Lote_Num').AsInteger);
                  FFechamentoSemanal.Refresh;
                  with QryDesempenho do
                    begin
                      Close;
                      sql.strings[6] := inttostr(QryReduzidos.FieldByName('Cod_Lote_Num').AsInteger);
                      sql.strings[9] := inttostr(QryReduzidos.FieldByName('Idade').AsInteger);
                      {ParamByName('Lote').AsInteger := QryReduzidos.FieldByName('Cod_Lote_Num').AsInteger;
                      ParamByName('Idade').AsInteger := QryReduzidos.FieldByName('Idade').AsInteger;}
                      ExecSQL;
                    end;

                  // Executa o Fechamento Semanal do Lote, esse fechamento pode ocorrer para
                  // uma ou mais Idades.
                  pnlStatus.Caption := 'Totalizando Resultado Acumulado Semanal ...' + IntToStr(QryReduzidos.FieldByName('Cod_Lote_Num').AsInteger);
                  FFechamentoSemanal.Refresh;
                  with QryResultadoSemanal do
                    begin
                      Close;
                      sql.strings[7] := inttostr(QryReduzidos.FieldByName('Cod_Lote_Num').AsInteger);
                      sql.strings[10] := inttostr(QryReduzidos.FieldByName('Idade').AsInteger);
                      sql.strings[13] := ''''+formatdatetime('dd/mm/yyyy',detDataReduzido.Date)+'''';
                      {ParamByName('Lote').AsInteger := QryReduzidos.FieldByName('Cod_Lote_Num').AsInteger;
                      ParamByName('Idade').AsInteger := QryReduzidos.FieldByName('Idade').AsInteger;
                      ParamByName('Data').AsDate := detDataReduzido.Date;   }
                      ExecSQL;
                    end;
                end;
              Next;
            end;
          EnableControls;
          GotoBookmark(vMarcador);
          FreeBookmark(vMarcador);
          if RecordCount > 0 then pnlStatus.Caption := 'Fechamento Semanal do(s) Lote(s) foi realizado com sucesso !';
          FFechamentoSemanal.Refresh;
        end;
      FMenu.dbsManejo.Commit;
      HabilitaOpcoes(True);
      Screen.Cursor := crDefault;
    end;
  except
    on E: Exception do
      begin
        MessageDlg(Msg10003 + CHR(10) + '"' + E.Message + '".', mtError, [mbOk], 0);
        FMenu.dbsManejo.Rollback;
        pnlStatus.Caption := 'Não foi possível realizar o Fechamento Semanal do(s) Lote(s) !';
        FFechamentoSemanal.Refresh;
        HabilitaOpcoes(True);
        Screen.Cursor := crDefault;
      end;
  end;
end;

// Realiza o fechamento semanal de acordo com os lotes encontrados na lista
procedure TFFechamentoSemanal.FechamentoEndereco;
var
  vMarcador : TBookMark;
begin
  inherited;
  // Verifica se a Data de Fechamento é uma Data válida
  if VerificaData(detEndereco.Text) = 0 then
    begin
      MessageDlg(Msg00061, mtInformation, [mbOK], 0);
      tstAbas.TabIndex := 2;
      ntbPaginas.PageIndex := tstAbas.TabIndex;
      detEndereco.SetFocus;
      Exit;
    end;

  // verificar se a data informada é um dia de fechamento
  if DayOfWeek(detEndereco.Date) <> FMenu.Parametros.vDiaSemana  then
    begin
      MessageDlg(Format(Msg00159, ['Data Fechamento', FormatDateTime('dddd', FMenu.Parametros.vDiaSemana)]), mtInformation, [mbOK], 0);
      tstAbas.TabIndex := 2;
      ntbPaginas.PageIndex := tstAbas.TabIndex;
      detEndereco.Date := ProximoDiaFechamento(detEndereco.Date);
      SelecionaEnderecos(dlcLocal.Text, dlcGranja.Text, dlcGrupo.Text, dlcLinhagem.Text, dlcIdentificacao.Text, detEndereco.Date);
      detEndereco.SetFocus;
      Exit;
    end;

  SelecionaEnderecos(dlcLocal.Text, dlcGranja.Text, dlcGrupo.Text, dlcLinhagem.Text, dlcIdentificacao.Text, detEndereco.Date);

  try
    begin
      Screen.Cursor := crHourGlass;
      HabilitaOpcoes(False);
      FMenu.dbsManejo.StartTransaction;
{      LockExclusivo(QryLock, 'avfsras1');
      LockExclusivo(QryLock, 'avfsacl1');
      LockExclusivo(QryLock, 'avfsdes1');
      LockExclusivo(QryLock, 'avfsrra1');
      LockExclusivo(QryLock, 'avfsrva1');
}
      with QryEnderecos do
        begin
          if RecordCount <= 0 then pnlStatus.Caption := 'Não existe Lote(s) para realizar esta operação !';
          FFechamentoSemanal.Refresh;
          vMarcador := GetBookmark;
          DisableControls;
          First;
          while not eof do
            begin
              if Not (UpperCase(QryEnderecos.FieldByName('ide_espec').AsString) = 'J') then
                begin
                  // Executa o Fechamento Semanal do Lote, esse fechamento pode ocorrer para
                  // uma ou mais Idades.
                  pnlStatus.Caption := 'Totalizando o Desempenho do Lote ... Reduz. ' + IntToStr(QryEnderecos.FieldByName('Cod_Lote_Num').AsInteger);
                  FFechamentoSemanal.Refresh;
                  with QryDesempenho do
                    begin
                      Close;
                      sql.strings[6] := inttostr(QryEnderecos.FieldByName('Cod_Lote_Num').AsInteger);
                      sql.strings[9] := inttostr(QryEnderecos.FieldByName('Idade').AsInteger);
                      {ParamByName('Lote').AsInteger := QryEnderecos.FieldByName('Cod_Lote_Num').AsInteger;
                      ParamByName('Idade').AsInteger := QryEnderecos.FieldByName('Idade').AsInteger;  }
                      ExecSQL;
                    end;

                  // Executa o Fechamento Semanal do Lote, esse fechamento pode ocorrer para
                  // uma ou mais Idades.
                  pnlStatus.Caption := 'Totalizando Resultado Acumulado Semanal ...' + IntToStr(QryEnderecos.FieldByName('Cod_Lote_Num').AsInteger);
                  FFechamentoSemanal.Refresh;
                  with QryResultadoSemanal do
                    begin
                      Close;
                      sql.strings[7] := inttostr(QryEnderecos.FieldByName('Cod_Lote_Num').AsInteger);
                      sql.strings[10] := inttostr(QryEnderecos.FieldByName('Idade').AsInteger);
                      sql.strings[13] := ''''+formatdatetime('dd/mm/yyyy',detEndereco.Date)+'''';
                      {ParamByName('Lote').AsInteger := QryEnderecos.FieldByName('Cod_Lote_Num').AsInteger;
                      ParamByName('Idade').AsInteger := QryEnderecos.FieldByName('Idade').AsInteger;
                      ParamByName('Data').AsDate := detEndereco.Date; }
                      ExecSQL;
                    end;
                end
               else
                begin
                  // Executa o Fechamento Semanal do Lote, esse fechamento pode ocorrer para
                  // uma ou mais Idades.
                  pnlStatus.Caption := 'Totalizando o Desempenho do Lote ... Reduz. ' + IntToStr(QryEnderecos.FieldByName('Cod_Lote_Num').AsInteger);
                  FFechamentoSemanal.Refresh;
                  with QryDesempenho do
                    begin
                      Close;
                      sql.strings[6] := inttostr(QryEnderecos.FieldByName('Cod_Lote_Num').AsInteger);
                      sql.strings[9] := inttostr(QryEnderecos.FieldByName('Idade').AsInteger);
                      {ParamByName('Lote').AsInteger := QryEnderecos.FieldByName('Cod_Lote_Num').AsInteger;
                      ParamByName('Idade').AsInteger := QryEnderecos.FieldByName('Idade').AsInteger;  }
                      ExecSQL;
                    end;

                  // Executa o Fechamento Semanal do Lote, esse fechamento pode ocorrer para
                  // uma ou mais Idades.
                  pnlStatus.Caption := 'Totalizando Resultado Acumulado Semanal ...' + IntToStr(QryEnderecos.FieldByName('Cod_Lote_Num').AsInteger);
                  FFechamentoSemanal.Refresh;
                  with QryResultadoSemanal do
                    begin
                      Close;
                      sql.strings[7] := inttostr(QryEnderecos.FieldByName('Cod_Lote_Num').AsInteger);
                      sql.strings[10] := inttostr(QryEnderecos.FieldByName('Idade').AsInteger);
                      sql.strings[13] := ''''+formatdatetime('dd/mm/yyyy',detEndereco.Date)+'''';
                      {ParamByName('Lote').AsInteger := QryEnderecos.FieldByName('Cod_Lote_Num').AsInteger;
                      ParamByName('Idade').AsInteger := QryEnderecos.FieldByName('Idade').AsInteger;
                      ParamByName('Data').AsDate := detEndereco.Date; }
                      ExecSQL;
                    end;
                end;
              Next;
            end;
          EnableControls;
          GotoBookmark(vMarcador);
          FreeBookmark(vMarcador);
          if RecordCount > 0 then pnlStatus.Caption := 'Fechamento Semanal do(s) Lote(s) foi realizado com sucesso !';
          FFechamentoSemanal.Refresh;
        end;
      FMenu.dbsManejo.Commit;
      HabilitaOpcoes(True);
      Screen.Cursor := crDefault;
    end;
  except
    on E: Exception do
      begin
        MessageDlg(Msg10003 + CHR(10) + '"' + E.Message + '".', mtError, [mbOk], 0);
        FMenu.dbsManejo.Rollback;
        pnlStatus.Caption := 'Não foi possível realizar o Fechamento Semanal do(s) Lote(s) !';
        FFechamentoSemanal.Refresh;
        HabilitaOpcoes(True);
        Screen.Cursor := crDefault;
      end;
  end;
end;

procedure TFFechamentoSemanal.tstAbasClick(Sender: TObject);
begin
  inherited;
  ntbPaginas.PageIndex := tstAbas.TabIndex;
end;

procedure TFFechamentoSemanal.dlcLocalCloseUp(Sender: TObject);
begin
  inherited;
  SelecionaEnderecos(dlcLocal.Text, dlcGranja.Text, dlcGrupo.Text, dlcLinhagem.Text, dlcIdentificacao.Text, detEndereco.Date);
end;

procedure TFFechamentoSemanal.detEnderecoExit(Sender: TObject);
begin
  inherited;
  if detEndereco.Date = 0 then Exit;
  // Verifica se a Data de Fechamento é uma Data válida
  if VerificaData(detEndereco.Text) = 0 then
    begin
      MessageDlg(Msg00061, mtInformation, [mbOK], 0);
      tstAbas.TabIndex := 2;
      ntbPaginas.PageIndex := tstAbas.TabIndex;
      detEndereco.SetFocus;
      Exit;
    end;

  // verificar se a data informada é um dia de fechamento
  if DayOfWeek(detEndereco.Date) <> FMenu.Parametros.vDiaSemana  then
    begin
      MessageDlg(Format(Msg00159, ['Data Fechamento', FormatDateTime('dddd', FMenu.Parametros.vDiaSemana)]), mtInformation, [mbOK], 0);
      tstAbas.TabIndex := 2;
      ntbPaginas.PageIndex := tstAbas.TabIndex;
      detEndereco.Date := ProximoDiaFechamento(detEndereco.Date);
      detEndereco.SetFocus;
      Exit;
    end;

  SelecionaEnderecos(dlcLocal.Text, dlcGranja.Text, dlcGrupo.Text, dlcLinhagem.Text, dlcIdentificacao.Text, detEndereco.Date);
end;

procedure TFFechamentoSemanal.dlcLocalDropDown(Sender: TObject);
begin
  inherited;
  QryLocal.Close;
  QryLocal.Open;
end;

procedure TFFechamentoSemanal.dlcGranjaDropDown(Sender: TObject);
begin
  inherited;
  QryGranja.Close;
  QryGranja.Open;
end;

procedure TFFechamentoSemanal.dlcGrupoDropDown(Sender: TObject);
begin
  inherited;
  QryGrupo.Close;
  QryGrupo.Open;
end;

procedure TFFechamentoSemanal.dlcIdentificacaoDropDown(Sender: TObject);
begin
  inherited;
  QryIdentificacao.Close;
  QryIdentificacao.Open;
end;

procedure TFFechamentoSemanal.dlcLinhagemDropDown(Sender: TObject);
begin
  inherited;
  QryLinhagem.Close;
  QryLinhagem.Open;
end;

procedure TFFechamentoSemanal.dlcLocalExit(Sender: TObject);
begin
  inherited;
  SelecionaEnderecos(dlcLocal.Text, dlcGranja.Text, dlcGrupo.Text, dlcLinhagem.Text, dlcIdentificacao.Text, detEndereco.Date);
end;

procedure TFFechamentoSemanal.detDataReduzidoExit(Sender: TObject);
begin
  inherited;
  if detDataReduzido.Date = 0 then Exit;
  // Verifica se a Data de Fechamento é uma Data válida
  if VerificaData(detDataReduzido.Text) = 0 then
    begin
      MessageDlg(Msg00061, mtInformation, [mbOK], 0);
      tstAbas.TabIndex := 1;
      ntbPaginas.PageIndex := tstAbas.TabIndex;
      detDataReduzido.SetFocus;
      Exit;
    end;

  // verificar se a data informada é um dia de fechamento
  if DayOfWeek(detDataReduzido.Date) <> FMenu.Parametros.vDiaSemana  then
    begin
      MessageDlg(Format(Msg00159, ['Data Fechamento', FormatDateTime('dddd', FMenu.Parametros.vDiaSemana)]), mtInformation, [mbOK], 0);
      detDataReduzido.Date := ProximoDiaFechamento(detDataReduzido.Date);
      tstAbas.TabIndex := 1;
      ntbPaginas.PageIndex := tstAbas.TabIndex;
      detDataReduzido.SetFocus;
      Exit;
    end;
end;

procedure TFFechamentoSemanal.spiLimpaCamposClick(Sender: TObject);
begin
  inherited;
  LimpaCampos;
end;

procedure TFFechamentoSemanal.cedIdade_InicioChange(Sender: TObject);
begin
  inherited;
  cedIdade_InicioExit(Sender);
end;

procedure TFFechamentoSemanal.detEnderecoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then detEnderecoExit(nil);
end;

end.

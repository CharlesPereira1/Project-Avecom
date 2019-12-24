unit UUsoVacinas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, 
  UPai, Menus, SpeedBar, ExtCtrls, StdCtrls, Mask, Db, Grids, DBGrids, ToolEdit, 
  CurrEdit, ComCtrls, RxGrdCpt, Tabs, DBCtrls, Buttons, UResponsavelMovimentos, 
  RxMemDS, uADStanIntf, uADStanOption, uADStanParam, uADStanError, 
  uADDatSManager, uADPhysIntf, uADDAptIntf, uADStanAsync, uADDAptManager, 
  uADCompDataSet, uADCompClient;

type
  TFMovimentoUsoVacinas = class(TFPai)
    QryBusca: TADQuery;
    QryOperacao: TADQuery;
    dtsQryConsulta: TDataSource;
    QryConsulta: TADQuery;
    QryLotes: TADQuery;
    dtsQryLotes: TDataSource;
    QryVacinas: TADQuery;
    dtsQryVacinas: TDataSource;
    QryLaboratorio: TADQuery;
    dtsQryLaboratorio: TDataSource;
    QryConsultaCOD_REGISTRO: TADAutoIncField;
    QryConsultaDAT_MOVTO: TDateTimeField;
    QryConsultaCOD_LOTE_NUM: TIntegerField;
    QryConsultanro_partida: TStringField;
    QryConsultaCOD_ATIVIDADE: TIntegerField;
    QryConsultaCOD_LABORATORIO: TIntegerField;
    QryConsultadat_validade: TDateTimeField;
    QryConsultadat_prevista: TDateTimeField;
    QryConsultaqtd_doses: TIntegerField;
    QryConsultaqtd_aves: TIntegerField;
    Responsavel: TSpeedItem;
    dtsIdadeEndereco: TDataSource;
    QryIdadeEndereco: TADQuery;
    ntbPaginas: TNotebook;
    Panel1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    detDat_Movto: TDateEdit;
    dlcVacinas: TDBLookupComboBox;
    cedCod_Laboratorio: TCurrencyEdit;
    dlcLaboratorio: TDBLookupComboBox;
    edtNro_Partida: TEdit;
    cedQtd_Doses: TCurrencyEdit;
    detDat_Validade: TDateEdit;
    Panel4: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label11: TLabel;
    DBText3: TDBText;
    Label12: TLabel;
    DBText4: TDBText;
    cedCod_Lote_Num: TCurrencyEdit;
    dlcLotes: TDBLookupComboBox;
    dgrGrupos: TDBGrid;
    Label8: TLabel;
    edtFab: TDateEdit;
    QryMetodo: TADQuery;
    dtsQryMetodo: TDataSource;
    Label13: TLabel;
    cedCod_Metodo: TCurrencyEdit;
    dlcMetodo: TDBLookupComboBox;
    QryVacinasdes_abrev: TStringField;
    QryVacinasmetodo: TStringField;
    QryVacinascod_metodo: TADAutoIncField;
    QryVacinascod_vac_medic: TStringField;
    cedCod_Vac_Medic: TEdit;
    QryConsultaCOD_VAC_MEDIC: TStringField;
    Label14: TLabel;
    Label15: TLabel;
    edtPreco: TCurrencyEdit;
    Label16: TLabel;
    DBText5: TDBText;
    edtPrecoTotal: TCurrencyEdit;
    lbl1: TLabel;
    QryConsultapreco_unit: TFloatField;
    QryConsultapreco_total: TFloatField;
    function LimpaCampos : Boolean;
    function MostraCampos: Boolean;
    function VerificaCampos: Boolean;
    function BuscaCadastro: Boolean;
    procedure Exibe;

    procedure AdicionarClick(Sender: TObject);
    procedure ModificarClick(Sender: TObject);
    procedure LimpaCamposClick(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure ConsultaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dgrGruposDblClick(Sender: TObject);
    procedure dgrGruposKeyPress(Sender: TObject; var Key: Char);
    procedure VoltarClick(Sender: TObject);
    procedure dlcLotesCloseUp(Sender: TObject);
    procedure dlcLotesDropDown(Sender: TObject);
    procedure cedCod_Lote_NumChange(Sender: TObject);
    procedure cedCod_Lote_NumExit(Sender: TObject);
    procedure dlcLaboratorioCloseUp(Sender: TObject);
    procedure dlcLaboratorioDropDown(Sender: TObject);
    procedure cedCod_LaboratorioChange(Sender: TObject);
    procedure cedCod_LaboratorioExit(Sender: TObject);
    procedure dlcVacinasCloseUp(Sender: TObject);
    procedure dlcVacinasDropDown(Sender: TObject);
    procedure cedCod_Vac_Medic2Change(Sender: TObject);
    procedure cedCod_Vac_Medic2Exit(Sender: TObject);
    procedure ResponsavelClick(Sender: TObject);
    procedure detDat_MovtoChange(Sender: TObject);
    procedure detDat_MovtoExit(Sender: TObject);
    procedure cedCod_MetodoChange(Sender: TObject);
    procedure cedCod_MetodoExit(Sender: TObject);
    procedure dlcMetodoCloseUp(Sender: TObject);
    procedure cedCod_Vac_MedicChange(Sender: TObject);
    procedure cedCod_Vac_MedicExit(Sender: TObject);

  private
    { Private declarations }
    procedure BuscaDadosDoLote();

  public
    { Public declarations }
  end;

var
  FMovimentoUsoVacinas : TFMovimentoUsoVacinas;
  vCod_Registro        : Integer; // Variável para Controle do registro Auto Incremento
  vDataProgramada      : TDateTime;
  ModoInsert, ModoUpdate, ModoDelete : Boolean;
  vFResponsavelVac         : TFReponsavelMovimentos;

implementation

uses
  Funcoes, UMenu, UMensagens;

{$R *.DFM}


procedure TFMovimentoUsoVacinas.BuscaDadosDoLote();
begin
  with QryIdadeEndereco do
    begin
      ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
      if detDat_Movto.Date <> 0 then
         ParamByName('Data').AsDate := detDat_Movto.Date
      else
         ParamByName('Data').AsDate := date;

      Open;
    end;
end;

procedure TFMovimentoUsoVacinas.Exibe;
begin
  Screen.Cursor := crHourGlass; // Cursor de Espera
  if FMovimentoUsoVacinas = nil then
      FMovimentoUsoVacinas := TFMovimentoUsoVacinas.Create(Self); // Cria o Formulario
  if vFResponsavelVac = nil then
     vFResponsavelVac := TFReponsavelMovimentos.Create(Self);

  with FMovimentoUsoVacinas do
   begin
     QryLotes.close;
     //QryLotes.parambyname('usuario').asstring := FMenu.Empresa.Usuario;
     QryLotes.Open;
     QryVacinas.Open;
     QryLaboratorio.Open;
   end;

  if VerificaOpcao(FMovimentoUsoVacinas.Tag, FMovimentoUsoVacinas) then // Verifica as Permissões
    begin
      FMovimentoUsoVacinas.LimpaCampos;
      FMovimentoUsoVacinas.Show;
      FMovimentoUsoVacinas.WindowState := wsNormal;  {O form esta minimizado}
    end;
  Screen.Cursor := crDefault; // Cursor Normal
end;

// Função para Limpar todos os campos
function TFMovimentoUsoVacinas.LimpaCampos : Boolean;
begin
  // Cancela qualquer transação realizada no movimento
  with vFResponsavelVac do  RxResponsaveis.Close;

  ntbPaginas.PageIndex := 0;  // Página de Cadastro
//  detDat_Movto.Date := FMenu.Parametros.vData;
//  cedCod_Lote_Num.AsInteger := FMenu.Parametros.vLote;
  detDat_Movto.Date := BuscaIdadeUltimoMovimento(QryBusca,cedCod_Lote_Num.AsInteger, '', 'avfsmva1', 'Dat_Movto');
  cedCod_Lote_NumExit(FMovimentoUsoVacinas);
  cedCod_Vac_Medic.Clear;
  dlcVacinas.KeyValue := 0;
  cedCod_Laboratorio.Clear;
  dlcLaboratorio.KeyValue := 0;
  detDat_Validade.Clear;
  edtNro_Partida.Clear;
  cedQtd_Doses.Clear;
  edtPreco.Clear;
  edtFab.clear;

  QryMetodo.close;
  QryMetodo.open;
  cedCod_Metodo.clear;
  dlcMetodo.keyvalue := '1';

  ModoInsert := True;
  ModoUpdate := False;
  ModoDelete := False;
  Responsavel.Enabled := True;
  VerificaBotoes(ModoInsert, ModoUpdate, ModoDelete);
  detDat_Movto.Enabled := True;
  cedCod_Lote_Num.Enabled := True;
  dlcLotes.Enabled := True;
  cedCod_Lote_Num.SetFocus;
  Result := True;
end;

// Função para mostrar os campos do registro
function TFMovimentoUsoVacinas.MostraCampos: Boolean;
var
  vSelect : String;
  vWhere  : String;
begin
  with QryBusca do
    begin
      detDat_Movto.Date         := FieldByName('Dat_Movto').AsDateTime;
      cedCod_Lote_Num.AsInteger := FieldByName('Cod_Lote_Num').AsInteger;
      dlcLotes.KeyValue         := FieldByName('Cod_Lote_Num').AsInteger;
      cedCod_Vac_Medic.Text      := FieldByName('Cod_Vac_Medic').AsString;
      dlcVacinas.KeyValue       := FieldByName('Cod_Vac_Medic').AsString;
      cedCod_Laboratorio.AsInteger := FieldByName('Cod_Laboratorio').AsInteger;
      dlcLaboratorio.KeyValue    := FieldByName('Cod_Laboratorio').AsInteger;
      detDat_Validade.Date      := FieldByName('Dat_Validade').AsDateTime;
      edtFab.Date               := FieldByName('Dat_fabricacao').AsDateTime;

      edtNro_Partida.Text := FieldByName('Nro_Partida').AsString;
      cedQtd_Doses.AsInteger := FieldByName('Qtd_Doses').AsInteger;

      edtPreco.value := fieldByName('preco_unit').AsFloat;
      edtPrecoTotal.value := fieldByName('preco_total').AsFloat;

      detDat_Movto.Enabled := False;
      cedCod_Lote_Num.Enabled := False;
      dlcLotes.Enabled := False;
      Responsavel.Enabled := True;
    end;

  Result := True;

  // Remove o Cursor caso ele estiver criado
  RemoveCursor(QryCursor, 'Uso_de_Vacinas');

  // Cria o Cursor do registro selecionado. Quando o Usuário realizar alguma
  // alteração o "Update" verifica se os dados do registro selecionado foram
  // modificados.
  vSelect := 'Select * From avfsmva1 ';
  vWhere := 'Where Cod_Registro = :Cod_Registro and Dat_Movto = :Dat_Movto and Cod_Lote_Num = :Cod_Lote_Num ';
  with QryCursor do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Declare Uso_de_Vacinas Cursor for ');
      SQL.Add(vSelect);
      SQL.Add(vWhere);
      ParamByName('Cod_Registro').AsInteger := vCod_Registro;
      ParamByName('Dat_Movto').AsDate := detDat_Movto.Date;
      ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
      SQL.Add('for Update Open Uso_de_Vacinas Fetch Uso_de_Vacinas');
      ExecSQL;
    end;
end;

// Função para verificar se os campos estão preenchidos
function TFMovimentoUsoVacinas.VerificaCampos: Boolean;
var
  vSelect : string;
  vWhere  : string;
begin
  Result := False;

  // data é valida
  if VerificaData(detDat_Movto.Text) = 0 then
    begin
      MessageDlg(Msg00195, mtInformation, [mbOK], 0);
      if detDat_Movto.Enabled then detDat_Movto.SetFocus;
      Exit;
    end;

  if detDat_Movto.date > date  then
    begin
      MessageDlg(Msg00535, mtInformation, [mbOK], 0);
      if detDat_Movto.Enabled then detDat_Movto.SetFocus;
      Exit;
    end;

  // lote cadastrado
  if not(BuscaRegistro(QryBusca, 'Select * From avfslot1 ',
                                 'Where Cod_Lote_Num = ' + IntToStr(cedCod_Lote_Num.AsInteger)))
  then
    begin
      MessageDlg(Msg00122, mtInformation, [mbOK], 0);
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
  if Not QryBusca.FieldByName('lote_proprio').AsBoolean  then
    begin
      MessageDlg(Msg00502, mtInformation, [mbOK], 0);
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

  // data do movimento >= data media de nascimento do lote
  if detDat_Movto.Date < QryBusca.FieldByName('Dat_Nasc_Media').AsDateTime then
    begin
      MessageDlg(Msg00246, mtInformation, [mbOK], 0);
      if detDat_Movto.Enabled then detDat_Movto.SetFocus;
      Exit;
    end;

  if (ModoInsert) then
    begin
      // nenhuma programaçao foi selecionada




    end;

  // Vacina cadastrado
  if not(BuscaRegistro(QryBusca, 'Select * From avfscvm1 ',
                                 'Where Cod_Vac_Medic = ' + ''''+cedCod_Vac_Medic.Text+''''))
  then
    begin
      MessageDlg(Msg00213, mtInformation, [mbOK], 0);
      cedCod_Vac_Medic.SetFocus;
      Exit;
    end;

  // laboratorio cadastrado
  if not(BuscaRegistro(QryBusca, 'Select * From avfslab1 ',
                                 'Where Cod_Laboratorio = ' + ''''+cedCod_Laboratorio.Text+''''))
  then
    begin
      MessageDlg(Msg00214, mtInformation, [mbOK], 0);
      cedCod_Laboratorio.SetFocus;
      Exit;
    end;

  // data validade é valida
  if (detDat_Validade.Text <> '  /  /    ')
     and (VerificaData(detDat_Validade.Text) = 0) then
    begin
      MessageDlg(Msg00217, mtInformation, [mbOK], 0);
      detDat_Validade.SetFocus;
      Exit;
    end;


  // obrigar Qtd_doses
  if cedQtd_Doses.AsInteger <= 0 then
    begin
      MessageDlg(Msg00215, mtInformation, [mbOK], 0);
      cedQtd_Doses.SetFocus;
      Exit;
    end;

  // obrigar Qtd_Aves


 Result := True;
end;

// Função para Buscar o Cadastro
function TFMovimentoUsoVacinas.BuscaCadastro: Boolean;
var
  vSelect : String;
  vWhere  : String;
begin
  inherited;
  vSelect := 'Select * From avfsmva1 ';
  vWhere := 'Where Cod_Registro = :Cod_Registro and Dat_Movto = :Dat_Movto and Cod_Lote_Num = :Cod_Lote_Num ';
  with QryBusca do
    begin
      SQL.Clear;
      SQL.Add(vSelect);
      SQL.Add(vWhere);
      ParamByName('Cod_Registro').AsInteger := vCod_Registro;
      ParamByName('Dat_Movto').AsDate := detDat_Movto.Date;
      ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
      ExecSQL;
      Open;
      if RecordCount = 0
        then LimpaCampos
        else MostraCampos;
    end;
  VerificaBotoes(ModoInsert, ModoUpdate, ModoDelete);
  Result := True;
end;


procedure TFMovimentoUsoVacinas.AdicionarClick(Sender: TObject);
var
  vSelect    : String;
  vCampos    : String;
  vValues    : String;
begin
  inherited;

  if not (VerificaCampos) then
    begin
      Exit;
    end;

  vSelect := 'Insert Into avfsmva1 ';
  vCampos := 'Dat_Movto, Cod_Lote_Num, Cod_Atividade, Cod_Vac_Medic, Cod_Laboratorio, ' +
             'Nro_Partida, Dat_Validade, Dat_Prevista, Qtd_Doses, Qtd_Aves,Dat_fabricacao,COD_METODO, preco_unit, preco_total ';
  vValues := ':Dat_Movto, :Cod_Lote_Num, :Cod_Atividade, :Cod_Vac_Medic, :Cod_Laboratorio, ' +
             ':Nro_Partida, :Dat_Validade, :Dat_Prevista, :Qtd_Doses, :Qtd_Aves,:Dat_fabricacao,:COD_METODO, :preco_unit, :preco_total ';
  try
    begin
      if not(FMenu.dbsManejo.InTransaction) then FMenu.dbsManejo.StartTransaction;

      InsertDados(QryOperacao, vSelect, vCampos, vValues);
      with QryOperacao do
        begin
          ParamByName('Dat_Movto').AsDateTime := detDat_Movto.Date;
          ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
          ParamByName('Cod_Atividade').AsInteger := 1;
          ParamByName('Cod_Vac_Medic').AsString := cedCod_Vac_Medic.Text;
          ParamByName('Cod_Laboratorio').AsInteger := cedCod_Laboratorio.AsInteger;
          ParamByName('Nro_Partida').AsString := edtNro_Partida.Text;
          ParamByName('Cod_Metodo').AsInteger := cedCod_Metodo.AsInteger;
          ParamByName('Dat_Validade').AsDateTime := detDat_Validade.Date;
          ParamByName('Dat_fabricacao').AsDateTime := edtFab.Date;
          ParamByName('Dat_Prevista').AsDateTime := vDataProgramada;
          ParamByName('Qtd_Doses').AsInteger := cedQtd_Doses.AsInteger;
          ParamByName('preco_unit').asFloat := edtPreco.value;
          ParamByName('preco_total').asFloat := cedQtd_Doses.AsInteger * edtPreco.value;
          ParamByName('Qtd_Aves').AsInteger := 0;
          ExecSQL;
        end;
      // atualiza acerto de calculo para fechamento semanal
      AtualizaAcertoCalculo(cedCod_Lote_Num.AsInteger, detDat_Movto.Date);

      GeraSaldoDiario(cedCod_Lote_Num.AsInteger, detDat_Movto.Date);
      // Salva os responsaveis pelo movimento
      vFResponsavelVac.vLote := cedCod_Lote_Num.AsInteger;
      vFResponsavelVac.vData := detDat_Movto.Date;
      vFResponsavelVac.vMovimento := 7; // Uso de Vacinas - avfscmo1
      if vFResponsavelVac.RxResponsaveis.active then vFResponsavelVac.ConfirmarTransacao;
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

procedure TFMovimentoUsoVacinas.ModificarClick(Sender: TObject);
var
  vSelect : String;
  vCampos : String;
  vWhere  : String;
begin
  inherited;
  if not (VerificaCampos)
   then Exit;

  vSelect := 'Update avfsmva1 ';
  vCampos := 'Cod_Vac_Medic = :Cod_Vac_Medic, Cod_Laboratorio = :Cod_Laboratorio, Nro_Partida = :Nro_Partida, ' +
             'Dat_Validade = :Dat_Validade, Qtd_Doses = :Qtd_Doses, preco_unit = :total_unit, preco_total = :preco_total,  Qtd_Aves = :Qtd_Aves,Dat_fabricacao=:Dat_fabricacao,Cod_Metodo=:Cod_Metodo ';
  vWhere  := 'Current of Uso_de_Vacinas ';
  try
    begin
      if not(FMenu.dbsManejo.InTransaction) then FMenu.dbsManejo.StartTransaction;
      UpdateDados(QryOperacao, vSelect, vCampos, vWhere);
      with QryOperacao do
        begin
          ParamByName('Cod_Vac_Medic').AsString := cedCod_Vac_Medic.Text;
          ParamByName('Cod_Laboratorio').AsInteger := cedCod_Laboratorio.AsInteger;
          ParamByName('Nro_Partida').AsString := edtNro_Partida.Text;
          ParamByName('Dat_Validade').AsDateTime := detDat_Validade.Date;
          ParamByName('Dat_fabricacao').AsDateTime := edtFab.Date;
          ParamByName('Qtd_Doses').AsInteger := cedQtd_Doses.AsInteger;
          ParamByName('preco_unit').AsFloat := edtPreco.value;
          ParamByName('preco_total').asFloat := cedQtd_Doses.AsInteger * edtPreco.value;
          ParamByName('Cod_Metodo').AsInteger := cedCod_Metodo.AsInteger;
          ParamByName('Qtd_Aves').AsInteger := 0;
          ExecSQL;
        end;
      // atualiza acerto de calculo para fechamento semanal
      AtualizaAcertoCalculo(cedCod_Lote_Num.AsInteger, detDat_Movto.Date);

      // Salva os responsaveis pelo movimento
      vFResponsavelVac.vLote := cedCod_Lote_Num.AsInteger;
      vFResponsavelVac.vData := detDat_Movto.Date;
      vFResponsavelVac.vMovimento := 7; // Uso de Vacinas - avfscmo1
      if vFResponsavelVac.RxResponsaveis.active then vFResponsavelVac.ConfirmarTransacao;
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

procedure TFMovimentoUsoVacinas.LimpaCamposClick(Sender: TObject);
begin
  inherited;
  LimpaCampos;
end;

procedure TFMovimentoUsoVacinas.ExcluirClick(Sender: TObject);
var
  vSelect : String;
  vWhere  : String;
begin
  inherited;
  // Existe registro na consulta para exclusão
  if QryConsulta.RecordCount < 1 then
    begin
      MessageDlg(Msg00462, mtInformation, [mbOK], 0);
      Exit;
    end;

  // Lote esta ativo
  vSelect := ' Select * From avfslot1  ';
  vWhere  := ' Where Cod_Lote_Num=:Cod_Lote_Num and Dat_Efet_Desc=:Dat_Efet_Desc ';
  with qryBusca do
  begin
     Close;
     Sql.Text := vSelect;
     Sql.Add(vWhere);
     Parambyname('cod_lote_num').asinteger   := QryConsulta.FieldByName('Cod_Lote_Num').AsInteger;
     Parambyname('Dat_Efet_Desc').asdatetime := strtodate('01/01/1900');
     Open;
     if IsEmpty then
     begin
        MessageDlg(Msg00220, mtInformation, [mbOK], 0);
        Exit;
     end;
  end;

  if MessageDlg(Msg00219, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        begin
          if not(FMenu.dbsManejo.InTransaction) then FMenu.dbsManejo.StartTransaction;
          vSelect := 'Delete From avfsmva1 ';
          vWhere := 'Where Cod_Registro = :Cod_Registro and Dat_Movto = :Dat_Movto and Cod_Lote_Num = :Cod_Lote_Num ';
          with QryOperacao do
            begin
              Close;
              SQL.Clear;
              SQL.Add(vSelect);
              SQL.Add(vWhere);
              ParamByName('Cod_Registro').AsInteger := QryConsulta.FieldByName('Cod_Registro').AsInteger;
              ParamByName('Dat_Movto').AsDate := QryConsulta.FieldByName('Dat_Movto').AsDateTime;
              ParamByName('Cod_Lote_Num').AsInteger := QryConsulta.FieldByName('Cod_Lote_Num').AsInteger;
              ExecSQL;
            end;

          // Remove todos os responsávies pelo movimento
          vSelect := 'Delete From avfsrem1 ';
          vWhere := 'Where Dat_Movto = :Dat_Movto and Cod_Lote_Num = :Cod_Lote_Num and Cod_Movimento = :Cod_Movimento ';
          with QryOperacao do
            begin
              Close;
              SQL.Clear;
              SQL.Add(vSelect);
              SQL.Add(vWhere);
              ParamByName('Dat_Movto').AsDate := QryConsulta.FieldByName('Dat_Movto').AsDateTime;
              ParamByName('Cod_Lote_Num').AsInteger := QryConsulta.FieldByName('Cod_Lote_Num').AsInteger;
              ParamByName('Cod_Movimento').AsInteger := 7; // Uso de Vacinas
              ExecSQL;
            end;

          // atualiza acerto de calculo para fechamento semanal
          AtualizaAcertoCalculo(QryConsulta.FieldByName('Cod_Lote_Num').AsInteger, QryConsulta.FieldByName('Dat_Movto').AsDateTime);

          ConfirmaProgramacao(QryOperacao,
                              QryConsulta.FieldByName('Cod_Lote_Num').AsInteger,
                              QryConsulta.FieldByName('Cod_Atividade').AsInteger,
                              QryConsulta.FieldByName('Dat_Prevista').AsDateTime,
                              StrToDate('01/01/1900'),'');
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
  if ntbPaginas.PageIndex = 2 then
    ConsultaClick(Sender)
  else
    LimpaCampos;
end;

procedure TFMovimentoUsoVacinas.ConsultaClick(Sender: TObject);
var
  vWhere : String;
  vOrder : String;
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;
    with QryConsulta do
    begin
      Close;
      SQL.Clear;
      {Parte fixa da query}
      SQL.Add('Select Cod_Lote_Num, Dat_Movto, Cod_Atividade, Cod_Vac_Medic, Cod_Laboratorio, Cod_Registro, Nro_Partida, Dat_Validade, Dat_Prevista, Qtd_Doses, Qtd_Aves, preco_unit, preco_total From avfsmva1 where cod_lote_num = :cod_lote_num ');
      {Parte variável da query}
{      vWhere := '';
      if detDat_Movto.Date <> 0 then
      begin
        vWhere := 'Where Dat_Movto = "' + FormatDateTime('mm/dd/yyyy', detDat_Movto.Date) + '" ';
        SQL.Add(vWhere);
      end;
        SQL.Add(vWhere);
}
      ParamByName('cod_lote_num').AsInteger := dlcLotes.keyvalue;
      // busca a ordem dos campos definida pelo usuário
      vOrder := Registro.ReadString(vChave, vChaveUsoVacinas, '');
      if not (VerificaRegistro(Registro.ReadString(vChave, vChaveUsoVacinas, ''), OrdemCamposUsoVacinas)) then
        begin
          vOrder := '';
          vOrder := MostraNomesLista(OrdemCamposUsoVacinas, 4);
        end;

      SQL.Add('Order By ' + vOrder);

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
                ntbPaginas.PageIndex := 1;
                ModoInsert := False;
                ModoUpdate := False;
                ModoDelete := True;
                Responsavel.Enabled := False;
                VerificaBotoes(ModoInsert, ModoUpdate, ModoDelete);
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

procedure TFMovimentoUsoVacinas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree; {Fecha o form}
  FMovimentoUsoVacinas := nil;    {Libera o form da memória}
end;

procedure TFMovimentoUsoVacinas.FormCreate(Sender: TObject);
begin
  inherited;
  SetBounds(0, 0, Width, Height); // Posição x, y e o Tamanho do Form
end;

procedure TFMovimentoUsoVacinas.dgrGruposDblClick(Sender: TObject);
begin
  inherited;
  ModoInsert := False;
  ModoUpdate := True;
  ModoDelete := False;
  vCod_Registro := QryConsulta.FieldByName('Cod_Registro').AsInteger;
  detDat_Movto.Date := QryConsulta.FieldByName('Dat_Movto').AsDateTime;
  cedCod_Lote_Num.AsInteger := QryConsulta.FieldByName('Cod_Lote_Num').AsInteger;
  BuscaCadastro;
  ntbPaginas.PageIndex := 1; // Página de Cadastro
  detDat_MovtoExit(nil);
end;

procedure TFMovimentoUsoVacinas.dgrGruposKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13
   then dgrGruposDblClick(nil);
end;

procedure TFMovimentoUsoVacinas.VoltarClick(Sender: TObject);
begin
  inherited;
  LimpaCampos;
end;

procedure TFMovimentoUsoVacinas.dlcLotesCloseUp(Sender: TObject);
begin
  inherited;
  cedCod_Lote_Num.AsInteger := QryLotes.FieldByName('Cod_Lote_Num').AsInteger;
  detDat_MovtoExit(nil);
end;

procedure TFMovimentoUsoVacinas.dlcLotesDropDown(Sender: TObject);
begin
  inherited;
  with QryLotes do
    begin
      Close;
      Open;
    end;
end;

procedure TFMovimentoUsoVacinas.cedCod_Lote_NumChange(Sender: TObject);
begin
  inherited;
  QryIdadeEndereco.Close;
  if not ModoUpdate
    then detDat_Movto.Date := 0;
  // Está função é usada para realizar o Skip quando o campor for Código
  // Não remover está função
  if Length(cedCod_Lote_Num.Text) = (cedCod_Lote_Num.MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFMovimentoUsoVacinas.cedCod_Lote_NumExit(Sender: TObject);
begin
  inherited;
  dlcLotes.KeyValue := cedCod_Lote_Num.AsInteger;
  BuscaDadosDoLote();
//  BuscaProgramacao();
  if detDat_Movto.Date = 0
    then detDat_Movto.Date := BuscaIdadeUltimoMovimento(QryBusca,cedCod_Lote_Num.AsInteger, '', 'avfsmva1', 'Dat_Movto');
  detDat_MovtoExit(nil);
end;

procedure TFMovimentoUsoVacinas.dlcLaboratorioCloseUp(Sender: TObject);
begin
  inherited;
  cedCod_Laboratorio.AsInteger := QryLaboratorio.FieldByName('Cod_Laboratorio').AsInteger;
  cedCod_Metodo.SetFocus;
end;

procedure TFMovimentoUsoVacinas.dlcLaboratorioDropDown(Sender: TObject);
begin
  inherited;
  with QryLaboratorio do
    begin
      Close;
      Open;
    end;
end;

procedure TFMovimentoUsoVacinas.cedCod_LaboratorioChange(Sender: TObject);
begin
  inherited;
  // Está função é usada para realizar o Skip quando o campor for Código
  // Não remover está função
  if Length(cedCod_Laboratorio.Text) = (cedCod_Laboratorio.MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFMovimentoUsoVacinas.cedCod_LaboratorioExit(Sender: TObject);
begin
  inherited;
  dlcLaboratorio.KeyValue := cedCod_Laboratorio.AsInteger;
end;

procedure TFMovimentoUsoVacinas.dlcVacinasCloseUp(Sender: TObject);
begin
  inherited;
  cedCod_Vac_Medic.Text := QryVacinas.FieldByName('Cod_Vac_Medic').AsString;
  cedCod_Metodo.asinteger := QryVacinascod_metodo.asinteger;
  dlcMetodo.keyvalue     := QryVacinascod_metodo.asinteger;
  cedCod_Laboratorio.SetFocus;
end;

procedure TFMovimentoUsoVacinas.dlcVacinasDropDown(Sender: TObject);
begin
  inherited;
  with QryVacinas do
    begin
      Close;
      Open;
    end;
end;

procedure TFMovimentoUsoVacinas.cedCod_Vac_Medic2Change(Sender: TObject);
begin
  inherited;
  // Está função é usada para realizar o Skip quando o campor for Código
  // Não remover está função
  if Length(cedCod_Vac_Medic.Text) = (cedCod_Vac_Medic.MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFMovimentoUsoVacinas.cedCod_Vac_Medic2Exit(Sender: TObject);
begin
  inherited;
  dlcVacinas.KeyValue := cedCod_Vac_Medic.Text;
  cedCod_Metodo.asinteger := QryVacinascod_metodo.asinteger;
  dlcMetodo.keyvalue     := QryVacinascod_metodo.asinteger;
end;

procedure TFMovimentoUsoVacinas.ResponsavelClick(Sender: TObject);
var
  vSelect : string;
  vWhere  : string;

begin
  inherited;
  // lote cadastrado
  if not(BuscaRegistro(QryBusca, 'Select * From avfslot1 ',
                                 'Where Cod_Lote_Num = ' + IntToStr(cedCod_Lote_Num.AsInteger)))
  then
    begin
      MessageDlg(Msg00122, mtInformation, [mbOK], 0);
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
  if Not QryBusca.FieldByName('lote_proprio').AsBoolean  then
    begin
      MessageDlg(Msg00502, mtInformation, [mbOK], 0);
      if cedCod_Lote_Num.Enabled then cedCod_Lote_Num.SetFocus;
      Exit;
    end;

  with vFResponsavelVac do
    begin
      RxResponsaveis.close;
      vLote := cedCod_Lote_Num.AsInteger;
      vData := detDat_Movto.Date;
      vMovimento := 7; // Uso de Vacinas - avfscmo1


      vSelect := 'Select * From avfsrem1 ';
      vWhere  := 'Where cod_lote_num=:cod_lote_num and dat_movto=:dat_movto and cod_movimento=:cod_movimento ';
      QryBusca.close;
      QryBusca.sql.text :=  vSelect;
      QryBusca.sql.Add(vWhere);
      QryBusca.ParamByName('Dat_Movto').AsDateTime    := vData;
      QryBusca.ParamByName('Cod_Movimento').AsInteger := vMovimento;
      QryBusca.ParamByName('Cod_Lote_Num').AsInteger  := vLote;
      QryBusca.open;

      RxResponsaveis.DisableControls;

      RxResponsaveis.Active := true;
      RxResponsaveis.DisableControls;
      RxResponsaveis.LoadFromDataSet(QryBusca,0,lmAppend);

      RxResponsaveis.EnableControls;
      dtsQryResMovtos.DataSet := RxResponsaveis;

      caption := 'Responsáveis pelo Movimento de Uso de Vacinas ';
      ShowModal;
    end;
end;
procedure TFMovimentoUsoVacinas.detDat_MovtoChange(Sender: TObject);
begin
  inherited;
  QryIdadeEndereco.Close;
end;

procedure TFMovimentoUsoVacinas.detDat_MovtoExit(Sender: TObject);
begin
  inherited;
  with QryIdadeEndereco do
    begin
      ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
      ParamByName('Data').AsDate            := detDat_Movto.Date;
      Open;
    end;
end;

procedure TFMovimentoUsoVacinas.cedCod_MetodoChange(Sender: TObject);
begin
  inherited;
  if Length(cedCod_Metodo.Text) = (cedCod_Metodo.MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFMovimentoUsoVacinas.cedCod_MetodoExit(Sender: TObject);
begin
  inherited;
  dlcMetodo.KeyValue := cedCod_Metodo.AsInteger;
end;

procedure TFMovimentoUsoVacinas.dlcMetodoCloseUp(Sender: TObject);
begin
  inherited;
  cedCod_Metodo.AsInteger := QryMetodo.FieldByName('Cod_Metodo').AsInteger;
  edtFab.SetFocus;
end;

procedure TFMovimentoUsoVacinas.cedCod_Vac_MedicChange(Sender: TObject);
begin
  inherited;
    // Está função é usada para realizar o Skip quando o campor for Código
  // Não remover está função
  if Length(cedCod_Vac_Medic.Text) = (cedCod_Vac_Medic.MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFMovimentoUsoVacinas.cedCod_Vac_MedicExit(Sender: TObject);
begin
  inherited;
  dlcVacinas.KeyValue := cedCod_Vac_Medic.Text;
  cedCod_Metodo.asinteger := QryVacinascod_metodo.asinteger;
  dlcMetodo.keyvalue     := QryVacinascod_metodo.asinteger;
end;


end.

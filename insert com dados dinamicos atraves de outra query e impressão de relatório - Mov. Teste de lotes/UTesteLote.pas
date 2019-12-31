{*******************************************************************************}
{                          Avecom Sistemas                                      }
{*******************************************************************************}
{                                                                               }
{ Programa:    UVacinasMedicamentos.pas                                         }
{ Objetivo:    Cadastro de Vacinas e Medicamentos.                              }
{ Histórico de Alterações:                                                      }
{                                                                               }
{ Data         Descrição                                         Autor          }
{                                                                               }
{*******************************************************************************}
unit UTesteLote;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPai, Menus, SpeedBar, ExtCtrls, StdCtrls, Mask, Db, DBTables, Grids,
  DBGrids, ToolEdit, CurrEdit, ComCtrls, RxGrdCpt, Tabs, DBCtrls, Buttons;

type
  TFMovimentoTesteLote = class(TFPai)
    QryBusca: TQuery;
    QryOperacao: TQuery;
    ntbPaginas: TNotebook;
    dtsQryConsulta: TDataSource;
    QryConsulta: TQuery;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    detDatProd: TDateEdit;
    QryLotes: TQuery;
    dtsQryLotes: TDataSource;
    cedCod_Lote_Num: TCurrencyEdit;
    dlcLotes: TDBLookupComboBox;
    Label4: TLabel;
    Label5: TLabel;
    edtObs_Teste: TEdit;
    edtObs_Conclusao: TEdit;
    detDatTeste: TDateEdit;
    Label3: TLabel;
    QryConsultaCOD_REGISTRO: TAutoIncField;
    QryConsultaCOD_LOTE_NUM: TIntegerField;
    QryConsultadat_inicio: TDateTimeField;
    QryConsultadat_fim: TDateTimeField;
    QryConsultaobs_teste: TStringField;
    QryConsultaobs_conclusao: TStringField;
    QryAtualizaLote: TQuery;
    dgrGrupos: TDBGrid;
    dtsIdadeEndereco: TDataSource;
    QryIdadeEndereco: TQuery;
    Panel4: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label8: TLabel;
    DBText3: TDBText;
    Label9: TLabel;
    DBText4: TDBText;
    Label10: TLabel;
    cedLotIdade: TCurrencyEdit;
    detDat_Inicio: TDateEdit;
    detDat_Fim: TDateEdit;
    qryBusca1: TQuery;
    QryConsultaData_teste: TDateTimeField;
    QryConsultaDat_prod: TDateTimeField;
    QryConsultaIdade: TIntegerField;
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
    procedure detDatProdChange(Sender: TObject);
    procedure detDatProdExit(Sender: TObject);
    procedure detDat_InicioExit(Sender: TObject);
    procedure AcharIdade;
  private
    { Private declarations }
    function AtualizaCadLote(vLote: integer): Boolean;
  public
    { Public declarations }
  end;

var
  FMovimentoTesteLote : TFMovimentoTesteLote;
  vCod_Registro       : Integer;  // Variável para Controle do registro Auto Incremento
  ModoInsert          : Boolean;
  ModoUpdate          : Boolean;
  ModoDelete          : Boolean;

implementation

uses Funcoes, UMenu, UMensagens;

{$R *.DFM}

procedure TFMovimentoTesteLote.Exibe;
begin
  Screen.Cursor := crHourGlass; // Cursor de Espera
  if FMovimentoTesteLote = nil then
      FMovimentoTesteLote := TFMovimentoTesteLote.Create(Self); // Cria o Formulario
  FMovimentoTesteLote.QryLotes.Open;
  if VerificaOpcao(FMovimentoTesteLote.Tag, FMovimentoTesteLote) then // Verifica as Permissões
    begin
      FMovimentoTesteLote.LimpaCampos;
      FMovimentoTesteLote.Show;
      FMovimentoTesteLote.WindowState := wsNormal;  {O form esta minimizado}
    end;
  Screen.Cursor := crDefault; // Cursor Normal
end;

// Função para Limpar todos os campos
function TFMovimentoTesteLote.LimpaCampos : Boolean;
begin
  ntbPaginas.PageIndex := 0;
  //detDatTeste.Date := FMenu.Parametros.vData;
//  cedCod_Lote_Num.AsInteger := FMenu.Parametros.vLote;
  detDatTeste.Date := BuscaIdadeUltimoMovimento(QryBusca,cedCod_Lote_Num.AsInteger, '', 'avfstlo1', 'Dat_Inicio');
  cedCod_Lote_NumExit(FMovimentoTesteLote);
  edtObs_Teste.Clear;
  edtObs_Conclusao.Clear;
  detDat_Fim.Clear;
  ModoInsert := True;
  ModoUpdate := False;
  ModoDelete := False;
  VerificaBotoes(ModoInsert, ModoUpdate, ModoDelete);
  detDatTeste.Enabled := True;
  cedCod_Lote_Num.Enabled := True;
  dlcLotes.Enabled := True;
  cedCod_Lote_Num.SetFocus;
  Result := True;
end;

// Função para mostrar os campos do registro
function TFMovimentoTesteLote.MostraCampos: Boolean;
var
  vSelect : String;
  vWhere  : String;
begin
  with QryBusca do
    begin
      //detDat_Inicio.Date := FieldByName('Dat_Inicio').AsDateTime;
      detDatTeste.Date := FieldByName('Data_teste').AsDateTime;
      cedCod_Lote_Num.AsInteger := FieldByName('Cod_Lote_Num').AsInteger;
      dlcLotes.KeyValue := FieldByName('Cod_Lote_Num').AsInteger;
      edtObs_Teste.Text := FieldByName('Obs_Teste').AsString;
      edtObs_Conclusao.Text := FieldByName('Obs_Conclusao').AsString;
      detDatProd.Date := FieldByName('Dat_prod').AsDateTime;
      cedLotIdade.Text := FieldByName('Idade').AsString;
      if (FieldByName('Dat_Fim').AsDateTime =  StrToDate('01/01/1900') )
        then detDat_Fim.Clear
        else detDat_Fim.Date := FieldByName('Dat_Fim').AsDateTime;
      detDatTeste.Enabled := true;
      cedCod_Lote_Num.Enabled := False;
      dlcLotes.Enabled := False;

    end;

  Result := True;

  // Remove o Cursor caso ele estiver criado
  RemoveCursor(QryCursor, 'Teste_Lote');

  // Cria o Cursor do registro selecionado. Quando o Usuário realizar alguma
  // alteração o "Update" verifica se os dados do registro selecionado foram
  // modificados.
  vSelect := 'Select * From avfstlo1 ';
  vWhere := 'Where Cod_Registro = :Cod_Registro and Cod_Lote_Num = :Cod_Lote_Num ';
  with QryCursor do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Declare Teste_Lote Cursor for ');
      SQL.Add(vSelect);
      SQL.Add(vWhere);
      ParamByName('Cod_Registro').AsInteger := vCod_Registro;
      ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
      SQL.Add('for Update Open Teste_Lote Fetch Teste_Lote');
      ExecSQL;
    end;
end;

// Função para verificar se os campos estão preenchidos
function TFMovimentoTesteLote.VerificaCampos: Boolean;
begin
   Result := False;

  // data do movimento e valida
  if VerificaData(detDatTeste.Text) = 0 then
    begin
      MessageDlg(Msg00257, mtInformation, [mbOK], 0);
      if detDatTeste.Enabled then detDatTeste.SetFocus;
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

  

  // verifica se o Lote é lote de terceiros
  if Not QryBusca.FieldByName('lote_proprio').AsBoolean  then
    begin
      MessageDlg(Msg00502, mtInformation, [mbOK], 0);
      if cedCod_Lote_Num.Enabled then cedCod_Lote_Num.SetFocus;
      Exit;
    end;

  // data do movto >= data do alojamento do lote
  if detDatTeste.Date < QryBusca.FieldByName('Dat_Aloj_Inicial').AsDateTime then
    begin
      MessageDlg(Msg00258, mtInformation, [mbOK], 0);
      if detDatTeste.Enabled then detDatTeste.SetFocus;
      Exit;
    end;

  // Existe idade para a data de movto
  if not VerificaExisteIdadeParaData ( QryBusca, cedCod_Lote_Num.AsInteger, detDatTeste.Date) then
    begin
      MessageDlg(Msg00382, mtInformation, [mbOK], 0);
      if detDatTeste.Enabled then detDatTeste.SetFocus;
      Exit;
    end;

  // dat_fim >= dat_inicio (quando dat_fim for informado)
  if (VerificaData(detDat_Fim.Text) <> 0) and
     (detDatTeste.Date > detDat_Fim.Date) then
    begin
      MessageDlg(Msg00260, mtInformation, [mbOK], 0);
      detDat_Fim.SetFocus;
      Exit;
    end;

  // obrigar informar "Teste"
  if edtObs_Teste.Text = '' then
    begin
      MessageDlg(Msg00397, mtInformation, [mbOK], 0);
      edtObs_Teste.SetFocus;
      Exit;
    end;

  Result := True;
end;

// Função para Buscar o Cadastro
function TFMovimentoTesteLote.BuscaCadastro: Boolean;
var
  vSelect : String;
  vWhere  : String;
begin
  inherited;
  vSelect := 'Select * From avfstlo1 ';
  vWhere := 'Where Cod_Registro = :Cod_Registro and Cod_Lote_Num = :Cod_Lote_Num and origem = :origem';
  with QryBusca do
    begin
      SQL.Clear;
      SQL.Add(vSelect);
      SQL.Add(vWhere);
      ParamByName('Cod_Registro').AsInteger := vCod_Registro;
      ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
      ParamByName('origem').asString := 'INC';
      ExecSQL;
      Open;
      if RecordCount = 0
        then LimpaCampos
        else MostraCampos;
    end;
  VerificaBotoes(ModoInsert, ModoUpdate, ModoDelete);
  Result := True;
end;

procedure TFMovimentoTesteLote.AdicionarClick(Sender: TObject);
var
  vSelect    : String;
  vCampos    : String;
  vValues    : String;
begin
  inherited;
  if not (VerificaCampos) then
      Exit;

  vSelect := 'Insert Into avfstlo1 ';
  vCampos := 'Cod_Lote_Num, Data_teste, Dat_Fim, Obs_Teste, Obs_Conclusao, origem, Dat_prod, Idade ';
  vValues := ':Cod_Lote_Num, :detDatTeste, :Dat_Fim, :Obs_Teste, :Obs_Conclusao, :origem, :Dat_prod, :Idade ';
  try
    begin
      FMenu.dbsManejo.StartTransaction;
      InsertDados(QryOperacao, vSelect, vCampos, vValues);
      with QryOperacao do
        begin
          if VerificaData(detDat_Fim.Text) = 0
           then ParamByName('Dat_Fim').AsDateTime := StrToDate('01/01/1900')
           else ParamByName('Dat_Fim').AsDateTime := detDat_Fim.Date;
          ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
          ParamByName('detDatTeste').AsDateTime := detDatTeste.Date;
          ParamByName('Obs_Teste').AsString := edtObs_Teste.Text;
          ParamByName('Obs_Conclusao').AsString := edtObs_Conclusao.Text;
          ParamByName('Dat_prod').AsDateTime := detDatProd.Date;
          ParamByName('Idade').AsString := cedLotIdade.Text;
          ParamByName('origem').AsString := 'INC';
          ExecSQL;
        end;
      //GeraSaldoDiario(cedCod_Lote_Num.AsInteger, detDat_Inicio.Date);
      AtualizaCadLote(cedCod_Lote_Num.AsInteger);
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

procedure TFMovimentoTesteLote.ModificarClick(Sender: TObject);
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

  vSelect := 'Update avfstlo1 ';
  vCampos := 'Data_teste = :detDatTeste, Dat_Fim = :Dat_Fim, Obs_Teste = :Obs_Teste, Obs_Conclusao = :Obs_Conclusao';
  vWhere  := 'Current of Teste_Lote ';
  try
    begin
      FMenu.dbsManejo.StartTransaction;
      UpdateDados(QryOperacao, vSelect, vCampos, vWhere);
      with QryOperacao do
        begin
          if VerificaData(detDat_Fim.Text) = 0
           then ParamByName('Dat_Fim').AsDateTime := StrToDate('01/01/1900')
           else ParamByName('Dat_Fim').AsDateTime := detDat_Fim.Date;
          ParamByName('detDatTeste').AsDateTime := detDatTeste.Date;
          ParamByName('Obs_Teste').AsString := edtObs_Teste.Text;
          ParamByName('Obs_Conclusao').AsString := edtObs_Conclusao.Text;
          ExecSQL;
        end;
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

procedure TFMovimentoTesteLote.LimpaCamposClick(Sender: TObject);
begin
  inherited;
  LimpaCampos;
end;

procedure TFMovimentoTesteLote.ExcluirClick(Sender: TObject);
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
  {vSelect := 'Select * From avfstlo1 ';
  vWhere  := ' Where dat_inicio= :inicio and dat_fim=:fim and Cod_Lote_Num=:Cod_Lote_Num ';
  with qryBusca do
  begin
     Close;
     Sql.Text := vSelect;
     Sql.Add(vWhere);
     Parambyname('Cod_Lote_Num').asinteger   := QryConsulta.FieldByName('Cod_Lote_Num').Asinteger;
     Parambyname('inicio').asdatetime := strtodate('01/01/1900');
     ParambyName('fim').asdatetime := strtodate('01/01/1900');
     Open;
     if IsEmpty then
     begin
        MessageDlg(Msg00262, mtInformation, [mbOK], 0);
        Exit;
     end;
  end;  }

  if MessageDlg(Msg00540, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        begin
          FMenu.dbsManejo.StartTransaction;
          vSelect := 'Delete From avfstlo1 ';
          vWhere := 'Where Cod_Registro = :Cod_Registro and Cod_Lote_Num = :Cod_Lote_Num and origem = :origem';
          with QryOperacao do
            begin
              Close;
              SQL.Clear;
              SQL.Add(vSelect);
              SQL.Add(vWhere);
              ParamByName('Cod_Registro').AsInteger := QryConsulta.FieldByName('Cod_Registro').AsInteger;
              ParamByName('Cod_Lote_Num').AsInteger := QryConsulta.FieldByName('Cod_Lote_Num').AsInteger;
              ParamByName('origem').asString := 'INC';
              ExecSQL;
            end;
          AtualizaCadLote(cedCod_Lote_Num.AsInteger);
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
  if ntbPaginas.PageIndex = 1 then
    ConsultaClick(Sender)
  else
    LimpaCampos;
end;

procedure TFMovimentoTesteLote.ConsultaClick(Sender: TObject);
var
  vOrder : String;
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;
    with QryConsulta do
    begin
      Close;
      {Parte fixa da query}
      {Parte variável da query}
      SQL.Strings[9] := '';
      if cedCod_Lote_Num.AsInteger > 0 then
      begin
        SQL.Strings[9] := SQL.Strings[9] + ' and Cod_Lote_Num = :Cod_Lote_Num ';
        ParamByName('Cod_Lote_Num').asInteger := cedCod_Lote_Num.AsInteger;
      end;

      if detDatTeste.Date > 0 then
      begin
        SQL.Strings[9] := SQL.Strings[9] + ' and data_teste >= :detDatTeste ';
        ParamByName('detDatTeste').AsDateTime := detDatTeste.Date;
      end;

      if detDat_Fim.Date > 0 then
      begin
        SQL.Strings[9] := SQL.Strings[9] + ' and dat_fim <= :dat_fim ';
        ParamByName('dat_fim').AsDateTime := detDat_Fim.Date;
      end;

      SQL.Strings[9] := SQL.Strings[9] + ' and origem = :origem ' + vOrder;
      ParamByName('origem').asString := 'INC';

      // busca a ordem dos campos definida pelo usuário
      vOrder := 'Order by Cod_Lote_Num, data_teste';

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

procedure TFMovimentoTesteLote.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree; {Fecha o form}
  FMovimentoTesteLote := nil;    {Libera o form da memória}
end;

procedure TFMovimentoTesteLote.FormCreate(Sender: TObject);
begin
  inherited;
  SetBounds(0, 0, 543, 318); // Posição x, y e o Tamanho do Form
end;

procedure TFMovimentoTesteLote.dgrGruposDblClick(Sender: TObject);
begin
  inherited;
  ModoInsert := False;
  ModoUpdate := True;
  ModoDelete := False;
  vCod_Registro := QryConsulta.FieldByName('Cod_Registro').AsInteger;
  cedCod_Lote_Num.AsInteger := QryConsulta.FieldByName('Cod_Lote_Num').AsInteger;
  BuscaCadastro;
  ntbPaginas.PageIndex := 0; // Página de Cadastro
  detDat_InicioExit(nil);
end;

procedure TFMovimentoTesteLote.dgrGruposKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    dgrGruposDblClick(nil);
end;

procedure TFMovimentoTesteLote.VoltarClick(Sender: TObject);
begin
  inherited;
  LimpaCampos;
end;

procedure TFMovimentoTesteLote.dlcLotesCloseUp(Sender: TObject);
begin
  inherited;
  cedCod_Lote_Num.AsInteger := QryLotes.FieldByName('Cod_Lote_Num').AsInteger;
  edtObs_Teste.SetFocus;
  detDat_InicioExit(nil);  
end;

procedure TFMovimentoTesteLote.dlcLotesDropDown(Sender: TObject);
begin
  inherited;
  with QryLotes do
    begin
      Close;
      Open;
    end;
end;

procedure TFMovimentoTesteLote.cedCod_Lote_NumChange(Sender: TObject);
begin
  inherited;
  QryIdadeEndereco.Close;
  if not ModoUpdate
    then detDatTeste.Date := 0;
  // Está função é usada para realizar o Skip quando o campor for Código
  // Não remover está função
  if Length(cedCod_Lote_Num.Text) = (cedCod_Lote_Num.MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFMovimentoTesteLote.cedCod_Lote_NumExit(Sender: TObject);
begin
  inherited;
  dlcLotes.KeyValue := cedCod_Lote_Num.AsInteger;
  if detDatTeste.Date = 0
     then detDatTeste.Date := BuscaIdadeUltimoMovimento(QryBusca,cedCod_Lote_Num.AsInteger, '', 'avfstlo1', 'Dat_Inicio');
  detDat_InicioExit(nil);
  //AcharIdade;
end;

function TFMovimentoTesteLote.AtualizaCadLote(vLote: integer): Boolean;
begin
  QryAtualizaLote.ParamByName('Lote').AsInteger := vLote;
  QryAtualizaLote.ExecSQL;
  Result := True;
end;

procedure TFMovimentoTesteLote.detDatProdChange(Sender: TObject);
begin
  inherited;
  QryIdadeEndereco.Close;
end;

procedure TFMovimentoTesteLote.detDatProdExit(Sender: TObject);
begin
  inherited;
  with QryIdadeEndereco do
    begin
      ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
      ParamByName('Data').AsDate := detDatTeste.Date;
      Open;
    end;
  AcharIdade;
end;

procedure TFMovimentoTesteLote.detDat_InicioExit(Sender: TObject);
begin
  inherited;
  with QryIdadeEndereco do
    begin
      ParamByName('Cod_Lote_Num').AsInteger := cedCod_Lote_Num.AsInteger;
      ParamByName('Data').AsDate := detDatTeste.Date;
      Open;
    end;
end;

procedure TFMovimentoTesteLote.AcharIdade;
begin
cedLotIdade.Enabled := False;

   if  detDatProd.Date = 0 then
      cedLotIdade.text := '0';

   with qryBusca do
   begin

      SQL.Text := ' Select lot.cod_lote_num, lot.lote_proprio, lot.ide_ave, dat.idade from avfslot1 lot, avfsdat1 dat ';
      SQL.Add(' where lot.cod_lote_num = :cod_lote_num and lot.cod_lote_num = dat.cod_lote_num and :detDatProd between dat.dat_inicio and dat.dat_fim ' );
      Parambyname('cod_lote_num').asinteger := cedcod_lote_num.asinteger;
      Parambyname('detDatProd').AsDateTime    := detDatProd.Date;
      Open;
      cedLotIdade.AsInteger := FieldByName('idade').asinteger;
      cedLotIdade.Enabled := false;

      if isempty then
         cedLotIdade.Enabled := True
      else
      begin
         if fieldbyname('lote_proprio').asboolean then
            cedLotIdade.Enabled := false
         else
            cedLotIdade.Enabled := True;
      end;
   end;

end;



end.

unit UPedidoRacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, 
  UPai, Menus, SpeedBar, ExtCtrls, StdCtrls, Mask, Db, Grids, DBGrids, ToolEdit, 
  CurrEdit, ComCtrls, RxGrdCpt, Tabs, DBCtrls, Buttons, RxMemDS, uADStanIntf, 
  uADStanOption, uADStanParam, uADStanError, uADDatSManager, uADPhysIntf, 
  uADDAptIntf, uADStanAsync, uADDAptManager, uADCompDataSet, uADCompClient;

type
  TFPedidoRacao = class(TFPai)
    QryBusca: TADQuery;
    QryOperacao: TADQuery;
    ntbPaginas: TNotebook;
    dgrGrupos: TDBGrid;
    dtsQryConsulta: TDataSource;
    QryConsulta: TADQuery;
    Panel1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label18: TLabel;
    Label22: TLabel;
    dtsQryGranja: TDataSource;
    QryGranja: TADQuery;
    QryGrupo: TADQuery;
    dtsQryGrupo: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    QryRacao: TADQuery;
    dtsQryRacao: TDataSource;
    QryConsultacod_granja: TStringField;
    QryConsultacod_grupo: TStringField;
    QryConsultadata_entrega: TDateTimeField;
    QryConsultacod_racao: TIntegerField;
    QryConsultanro_pedido: TADAutoIncField;
    QryConsultaqtde_solicitada: TFloatField;
    QryConsultanom_digit_inclusao: TStringField;
    QryConsultadat_digit_inclusao: TDateTimeField;
    quyInclusao: TADQuery;
    quyAlteracao: TADQuery;
    Label23: TLabel;
    QryConsultades_abrev: TStringField;
    QryVacinas: TADQuery;
    QryVacinasmetodo: TStringField;
    dtsQryVacinas: TDataSource;
    rxqVac: TRxMemoryData;
    rxqVacnro_partida: TStringField;
    rxqVacqtd_doses: TIntegerField;
    rxqVacvalidade: TDateTimeField;
    rxqVaccod_laboratorio: TIntegerField;
    rxqVacLaboratorio: TStringField;
    rxqVacfabricacao: TDateField;
    dtsVac: TDataSource;
    qryMedicamentos: TADQuery;
    qryMedicamentosCod_Vac_Medic: TIntegerField;
    DBGrid1: TDBGrid;
    dtsMed: TDataSource;
    QryVacinasDes_Detal: TStringField;
    rxqVacdes_abrev: TStringField;
    qryMedicamentosdes_abrev: TStringField;
    qryVerificaControle: TADQuery;
    qryVerificaControleseq_pedido: TIntegerField;
    QryConsultaseq_pedido: TIntegerField;
    qryVacMed: TADQuery;
    qryVacMedflg_tipo: TStringField;
    qryVacMeddes_abrev: TStringField;
    qryVacMeddes_detal: TStringField;
    Label14: TLabel;
    QryConsultaobs_complementar: TStringField;
    Label13: TLabel;
    cedTotalRacao: TCurrencyEdit;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    QryGranjaCOD_GRANJA: TStringField;
    QryGranjaDES_ABREV: TStringField;
    cedNumPedido: TCurrencyEdit;
    edtCod_Granja: TEdit;
    dlcGranja: TDBLookupComboBox;
    edtCod_Grupo: TEdit;
    dlcGrupo: TDBLookupComboBox;
    detDat_Entrada: TDateEdit;
    DBGrid2: TDBGrid;
    cedCodRacao: TCurrencyEdit;
    dlcRacao: TDBLookupComboBox;
    cedQtd_Entrada: TCurrencyEdit;
    edtObsComplementar: TEdit;
    qryArracoamento: TADQuery;
    dtsArracoamento: TDataSource;
    qryArracoamentosexo_ave: TStringField;
    qryArracoamentocod_galinheiro: TStringField;
    qryArracoamentoqtd_rac_saco_maq: TFloatField;
    BitBtn2: TBitBtn;
    qryApagaCabeca: TADQuery;
    qryInserirCabeca: TADQuery;
    qryInserirDetalhe: TADQuery;
    QryRacaoCod_racao: TIntegerField;
    QryRacaoSeq_Racao: TIntegerField;
    QryRacaoDes_Abrev: TStringField;
    QryRacaocod_auxiliar: TStringField;
    QryGranjacentro_custo: TStringField;
    QryGranjacod_filial: TStringField;
    qryOrdemCarga: TADQuery;
    qryOrdemCargaORDEM: TFloatField;
    QryConsultapedido_int: TIntegerField;
    QryGrupoCOD_GRUPO: TStringField;
    QryGrupodes_abrev: TStringField;
    QryGrupoobservacao: TStringField;
    QryGrupotimestamp: TBytesField;
    QryGrupocod_local: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label25: TLabel;
    cedCod_Vac_Medic1: TCurrencyEdit;
    dlcVacinas: TDBLookupComboBox;
    DBGrid3: TDBGrid;
    btnAdicionar: TBitBtn;
    btnExcluir: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    RxCarga: TRxMemoryData;
    dtsCarga: TDataSource;
    DBGrid4: TDBGrid;
    RxCargaCod_racao: TIntegerField;
    RxCargaSeq_Racao: TIntegerField;
    RxCargaDes_Abrev: TStringField;
    RxCargacod_auxiliar: TStringField;
    RxCargaquantidade: TFloatField;
    QryGrupocentro_custo: TStringField;
    qryApagaItem: TADQuery;
    QryGranjatipo: TStringField;
    QryVacinascod_vac_medic: TStringField;
    cedCod_Vac_Medic: TEdit;
    rxqVaccod_vac_medic: TStringField;
    function LimpaCampos(vTudo : boolean) : Boolean;
    function VerificaCampos: Boolean;
    procedure Exibe;
    procedure AdicionarClick(Sender: TObject);
    procedure LimpaCamposClick(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure ConsultaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure VoltarClick(Sender: TObject);
    procedure dlcRacaoCloseUp(Sender: TObject);
    procedure cedCod_RacaoChange(Sender: TObject);
    procedure edtCod_GrupoChange(Sender: TObject);
    procedure edtCod_GrupoExit(Sender: TObject);
    procedure dlcGrupoCloseUp(Sender: TObject);
    procedure cedCodRacaoChange(Sender: TObject);
    procedure cedCodRacaoExit(Sender: TObject);
    procedure dlcGranjaCloseUp(Sender: TObject);
    procedure edtCod_GranjaChange(Sender: TObject);
    procedure edtCod_GranjaExit(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure cedCod_Vac_Medic1Change(Sender: TObject);
    procedure cedCod_Vac_Medic1Exit(Sender: TObject);
    procedure dlcVacinasCloseUp(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure cedCod_Vac_MedicChange(Sender: TObject);
    procedure cedCod_Vac_MedicExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPedidoRacao : TFPedidoRacao;
  ControlePagina         : Shortint; // Variavel para Controle do ntbPaginas
  ModoInsert             : Boolean;
  ModoUpdate             : Boolean;
  ModoDelete             : Boolean;

implementation

uses
  Funcoes, UMenu, UMensagens;

{$R *.DFM}

procedure TFPedidoRacao.Exibe;
begin
  Screen.Cursor := crHourGlass; // Cursor de Espera
  if FPedidoRacao = nil then
      FPedidoRacao := TFPedidoRacao.Create(Self); // Cria o Formulario
   FPedidoRacao.QryRacao.Open;
  if VerificaOpcao(FPedidoRacao.Tag, FPedidoRacao) then // Verifica as Permissões
    begin
      FPedidoRacao.LimpaCampos(true);
      FPedidoRacao.Show;
      FPedidoRacao.WindowState := wsNormal;  {O form esta minimizado}
    end;
  Screen.Cursor := crDefault; // Cursor Normal
end;

// Função para Limpar todos os campos
function TFPedidoRacao.LimpaCampos(vTudo : boolean) : Boolean;
begin

  edtCod_Granja.enabled    := true;
  edtCod_Grupo.enabled     := true;
  cedCodRacao.enabled      := true;

  detDat_Entrada.Enabled   := true;

  dlcGranja.enabled        := true;
  dlcGrupo.enabled         := true;

  Label8.Visible           := False;
  cedTotalRacao.Visible    := False;
  RxCarga.close;
  RxCarga.active := true;
  if vTudo then
  begin


     QryGranja.Close;
     QryGranja.Open;



     edtCod_Granja.Clear;

     detDat_Entrada.Clear;

     dlcGranja.KeyValue      := '0';

  end;

  ntbPaginas.PageIndex := 0;

  edtCod_Grupo.Clear;

  cedCodRacao.clear;

  cedQtd_Entrada.Clear;
  cedNumPedido.Clear;

  edtObsComplementar.Clear;


  dlcGrupo.KeyValue := '0';
  dlcRacao.KeyValue := '0';

  QryVacinas.close;
  QryVacinas.active := true;
  cedCod_Vac_Medic.clear;

  //cedCod_Vac_Medic.KeyValue := '0';
  dlcVacinas.keyvalue := '0';
  rxqVac.close;
  rxqVac.active := true;


  QryGrupo.Close;
  QryGrupo.Open;


  QryRacao.Close;
  QryRacao.Open;

  ModoInsert := True;
  ModoUpdate := False;
  ModoDelete := False;
  VerificaBotoes(ModoInsert, ModoUpdate, ModoDelete);
  try
    EDTCOD_GRANJA.SetFocus;
  except
  end;
  Result := True;
end;


// Função para verificar se os campos estão preenchidos
function TFPedidoRacao.VerificaCampos: Boolean;
begin
  Result := False;




  if edtCod_Granja.Text = '' then
    begin
      MessageDlg('O Código da granja deve ser informado!',mtInformation, [mbOK], 0);
      edtCod_Granja.SetFocus;
      //Result := False;
      Exit;
    end;

 if edtCod_Grupo.Text = '' then
    begin
      MessageDlg('O Código do grupo deve ser informado!',mtInformation, [mbOK], 0);
      edtCod_Grupo.SetFocus;
      //Result := False;
      Exit;
    end;




  if detDat_Entrada.date = 0 then
    begin
      MessageDlg('A Data de entrega deve ser informada!',mtInformation, [mbOK], 0);
      detDat_Entrada.SetFocus;
      Exit;
    end;



  
 
 

  Result := True;
end;



procedure TFPedidoRacao.AdicionarClick(Sender: TObject);
var
  vSelect ,vTipo   : String;
  vWhere ,vcampos ,vValues   : String;
  vControle,vPedInt,vSeq : integer;
begin
  inherited;
  if not (VerificaCampos) then
    begin
     Exit;
   end;



    try
      begin
        FMenu.dbsManejo.StartTransaction;


        QryOperacao.close;
        QryOperacao.sql.Text := ' select max(nro_pedido) nro_pedido from avfspra1  ';
        QryOperacao.open;
        vControle :=   QryOperacao.fieldbyname('nro_pedido').asinteger + 1;



        RxCarga.first;
        while not RxCarga.eof do
        begin

           qryVerificaControle.close;
           qryVerificaControle.ParamByName('cod_granja').AsString           := edtCod_Granja.Text;
           qryVerificaControle.ParamByName('cod_grupo').AsString            := edtCod_Grupo.Text;
           qryVerificaControle.ParamByName('data_entrega').AsDateTime       := detDat_Entrada.Date;
           qryVerificaControle.open;

           quyInclusao.close;
           quyInclusao.ParamByName('nro_pedido').AsInteger          := vControle;
           quyInclusao.ParamByName('seq_pedido').AsInteger          := qryVerificaControleseq_pedido.ASINTEGER;
           quyInclusao.ParamByName('cod_granja').AsString           := edtCod_Granja.Text;
           quyInclusao.ParamByName('cod_grupo').AsString            := edtCod_Grupo.Text;
           quyInclusao.ParamByName('data_entrega').AsDateTime       := detDat_Entrada.Date;
           quyInclusao.ParamByName('cod_racao').AsInteger           := RxCargaCod_racao.AsInteger;
           quyInclusao.ParamByName('qtde_solicitada').AsFloat       := RxCargaquantidade.Value;
           quyInclusao.ParamByname('obs_complementar').AsString     := edtObsComplementar.Text;
           quyInclusao.ParamByName('dat_digit_inclusao').AsDateTime := date;
           quyInclusao.ParamByName('nom_digit_inclusao').AsString   := Fmenu.Empresa.Usuario;
           quyInclusao.ExecSQL;
           
            RxCarga.next;
        end;




        QryOperacao.close;
        QryOperacao.sql.Text := ' delete from avfsmpr1 where nro_pedido=:nro_pedido ';
        with QryOperacao do
        begin
           close;
           ParamByName('nro_pedido').AsInteger          := vControle;
           execsql;
        end;



        rxqVac.DisableControls;
        rxqVac.first;
        while not rxqVac.eof do
        begin

          vSelect := 'Insert Into avfsmpr1 ';
          vCampos := ' nro_pedido,Cod_Vac_Medic ';
          vValues := ' :nro_pedido,:Cod_Vac_Medic  ';

           InsertDados(QryOperacao, vSelect, vCampos, vValues);
           with QryOperacao do
           begin
              ParamByName('nro_pedido').AsInteger          := vControle;
              ParamByName('Cod_Vac_Medic').AsString       := rxqVaccod_vac_medic.AsString;
              ExecSQL;
           end;

         rxqVac.next;
      end;


     if not FMenu.ConexaoMGE.Connected then
        FMenu.ConexaoMGE.Connected := true;

      qryOrdemCarga.close;
      qryOrdemCarga.open;
      vPedInt := qryOrdemCargaORDEM.asinteger   + 1;

      vSeq := 1;

      RxCarga.first;
      while not RxCarga.eof do
      begin

         qryInserirDetalhe.close;
         qryInserirDetalhe.ParamByName('ORDEMCARGA').asinteger    := vPedInt;
         qryInserirDetalhe.ParamByName('SEQCARGA').asinteger      := vSeq;
         qryInserirDetalhe.ParamByName('DTNEG').asdatetime        := detDat_Entrada.Date;
         qryInserirDetalhe.ParamByName('CODCENCUS').asinteger     := strtointdef(QryGrupocentro_custo.asstring,0);
         qryInserirDetalhe.ParamByName('CODPARC').asinteger       := strtointdef(QryGranjacod_filial.asstring,0);
         qryInserirDetalhe.ParamByName('CODPROD').asinteger       := strtointdef(RxCargaCod_racao.asstring,0);
         qryInserirDetalhe.ParamByName('QTDNEG').asfloat          := RxCargaquantidade.asfloat;
         qryInserirDetalhe.ExecSQL;

         inc(vSeq);
         RxCarga.next;
      end;



      {if copy(EDTCOD_GRANJA.TEXT,1,1) = 'P' then
      begin
         if EDTCOD_GRANJA.TEXT = 'PG' THEN
           vTipo := 'POSTURA_GO'
         else
           vTipo := 'POSTURA_SF';
      end
      else
         vTipo := 'MATRIZ'; }
      vTipo := QryGranjatipo.asstring;
     
      qryApagaCabeca.close;
      qryApagaCabeca.ParamByName('ORDEMCARGA').asinteger    := vPedInt;
      qryApagaCabeca.ParamByName('DTNEG').asdatetime        := detDat_Entrada.Date;
      //qryApagaCabeca.ParamByName('tipo').asstring           := vTipo;
      qryApagaCabeca.execsql;

      qryInserirCabeca.close;
      qryInserirCabeca.ParamByName('ORDEMCARGA').asinteger    := vPedInt;
      qryInserirCabeca.ParamByName('DTNEG').asdatetime        := detDat_Entrada.Date;
      qryInserirCabeca.ParamByName('status').asinteger        := 1;
      qryInserirCabeca.ParamByName('obs').asstring            := 'Entregar Núcleo: '+EDTCOD_GRUPO.text;
      qryInserirCabeca.ParamByName('tipo').asstring           := vTipo;
      qryInserirCabeca.execsql;
      
      FMenu.ConexaoMGE.Connected := false;



      QryOperacao.close;
      QryOperacao.sql.Text := ' update avfspra1 set pedido_int = :pedido_int where nro_pedido=:nro_pedido ';
      with QryOperacao do
      begin
           close;
           ParamByName('nro_pedido').AsInteger          := vControle;
           ParamByName('pedido_int').AsInteger          := vPedInt;
           execsql;
      end;

      FMenu.dbsManejo.Commit;
      LimpaCampos(false);
    end;
  except
    FMenu.dbsManejo.Rollback;
    Application.HandleException(QryOperacao);
  end;
end;

procedure TFPedidoRacao.LimpaCamposClick(Sender: TObject);
begin
  inherited;
  LimpaCampos(true);
end;

procedure TFPedidoRacao.ExcluirClick(Sender: TObject);
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

  if MessageDlg('Confirma Exclusão?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        begin
          FMenu.dbsManejo.StartTransaction;


          QryOperacao.close;
            QryOperacao.sql.Text := ' delete from avfsmpr1 where nro_pedido=:nro_pedido ';
            with QryOperacao do
            begin
              close;
              ParamByName('nro_pedido').AsInteger   := QryConsulta.FieldByName('nro_pedido').AsInteger;
              execsql;
            end;




          vSelect := 'Delete From avfspra1 ';
          vWhere := 'Where nro_pedido=:nro_pedido  ';
          with QryOperacao do
            begin
              Close;
              SQL.Clear;
              SQL.Add(vSelect);
              SQL.Add(vWhere);
              ParamByName('nro_pedido').AsInteger   := QryConsulta.FieldByName('nro_pedido').AsInteger;
              ExecSQL;
            end;


          FMenu.dbsManejo.Commit;

          if not FMenu.ConexaoMGE.Connected then
             FMenu.ConexaoMGE.Connected := true;

          qryApagaItem.close;
          qryApagaItem.ParamByName('ORDEMCARGA').asinteger    := QryConsultapedido_int.AsInteger;
          qryApagaItem.ParamByName('DTNEG').asdatetime        := QryConsultadata_entrega.asdatetime;
          qryApagaItem.execsql;

          qryApagaCabeca.close;
          qryApagaCabeca.ParamByName('ORDEMCARGA').asinteger    := QryConsultapedido_int.AsInteger;
          qryApagaCabeca.ParamByName('DTNEG').asdatetime        := QryConsultadata_entrega.asdatetime;
          qryApagaCabeca.execsql;

          FMenu.ConexaoMGE.Connected := false;
             
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
    LimpaCampos(true);
end;

procedure TFPedidoRacao.ConsultaClick(Sender: TObject);
var
  vWhere : String;
  vTotal : Real;
  //vOrder : String;
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;
    Label8.Visible           := True;
    cedTotalRacao.Visible    := True;

    with QryConsulta do
    begin
      Close;
      vWhere := '';

      if cedNumPedido.asinteger  <> 0 then
        vWhere := vWhere + ' and pra.nro_pedido =:nro_pedido ';



      if edtCod_Granja.Text <> '' then
        vWhere := vWhere + ' and pra.cod_granja =:cod_granja ';

      if edtCod_Grupo.Text <> '' then
        vWhere := vWhere + ' and pra.cod_grupo =:cod_grupo ';

      if detDat_Entrada.date <> 0 then
        vWhere := vWhere + ' and pra.data_entrega =:data_entrega ';

      if cedCodRacao.Text <> '' then
        vWhere := vWhere + ' and pra.cod_racao =:cod_racao ';


       sql.strings[30] := '';
      if vWhere <> '' then
         sql.strings[30] := ' Where pra.cod_racao = cra.cod_racao  and pra.cod_granja = gra.cod_granja and ' + copy(vWhere,5,length(vWhere));

      if cedNumPedido.asinteger <> 0 then
         parambyname('nro_pedido').asinteger := cedNumPedido.asinteger;


      if edtCod_Granja.Text <> '' then
         parambyname('cod_granja').AsString := edtCod_Granja.Text;

      if edtCod_Grupo.Text <> '' then
         parambyname('cod_grupo').AsString := edtCod_Grupo.Text;

      if detDat_Entrada.date   <> 0 then parambyname('data_entrega').Asdatetime := detDat_Entrada.date;

      if cedCodRacao.asinteger <> 0 then parambyname('cod_racao').Asinteger := cedCodRacao.Asinteger;


     {Tenta executar a query montada anteriormente}
      try
        Open;

      QryConsulta.First;
      vTotal := 0;

      while (not eof) do
        begin
          vTotal := vTotal + qryConsulta.FieldByName('qtde_solicitada').AsFloat;
          next;
        end;
      cedTotalRacao.Value := vTotal;

      first;
        qryMedicamentos.CLOSE;
        qryMedicamentos.OPEN;

        if isempty then
            MessageDlg('Não foram encontrados registros cadastrados!',mtInformation, [mbOk], 0)
        else
          begin
            ntbPaginas.PageIndex := 1;
            ModoInsert := False;
            ModoUpdate := False;
            ModoDelete := True;
            VerificaBotoes(ModoInsert, ModoUpdate, ModoDelete);
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

procedure TFPedidoRacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree; {Fecha o form}
  FPedidoRacao := nil;    {Libera o form da memória}
end;

procedure TFPedidoRacao.FormCreate(Sender: TObject);
begin
  inherited;
  SetBounds(0, 0, Width, Height); // Posição x, y e o Tamanho do Form
end;

procedure TFPedidoRacao.VoltarClick(Sender: TObject);
begin
  inherited;
  LimpaCampos(true);
end;

procedure TFPedidoRacao.dlcRacaoCloseUp(Sender: TObject);
begin
  inherited;
  cedCodRacao.AsInteger := QryRacao.FieldByName('Cod_Racao').AsInteger;
  cedQtd_Entrada.SetFocus;
end;

procedure TFPedidoRacao.cedCod_RacaoChange(Sender: TObject);
begin
  inherited;
  // Está função é usada para realizar o Skip quando o campor for Código
  // Não remover está função
  if Length(cedCodRacao.Text) = (cedCodRacao.MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFPedidoRacao.edtCod_GrupoChange(Sender: TObject);
begin
  inherited;
  if Length(TEdit(Sender).Text) = (TEdit(Sender).MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFPedidoRacao.edtCod_GrupoExit(Sender: TObject);
begin
  inherited;
  dlcGrupo.KeyValue := edtCod_Grupo.Text;
end;

procedure TFPedidoRacao.dlcGrupoCloseUp(Sender: TObject);
begin
  inherited;
  edtCod_Grupo.Text := QryGrupo.FieldByName('Cod_Grupo').AsString;
end;

procedure TFPedidoRacao.cedCodRacaoChange(Sender: TObject);
begin
  inherited;
  if Length(cedCodRacao.Text) = (cedCodRacao.MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
  
end;

procedure TFPedidoRacao.cedCodRacaoExit(Sender: TObject);
begin
  inherited;
  dlcRacao.KeyValue := cedCodRacao.AsInteger;
end;

procedure TFPedidoRacao.dlcGranjaCloseUp(Sender: TObject);
begin
  inherited;
  edtCod_Granja.Text := QryGranja.FieldByName('Cod_Granja').AsString;
  edtCod_Grupo.SetFocus;
end;

procedure TFPedidoRacao.edtCod_GranjaChange(Sender: TObject);
begin
  inherited;
  if Length(TEdit(Sender).Text) = (TEdit(Sender).MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;
end;

procedure TFPedidoRacao.edtCod_GranjaExit(Sender: TObject);
begin
  inherited;
  dlcGranja.KeyValue := edtCod_Granja.Text;

end;


procedure TFPedidoRacao.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  if not rxqVac.active then rxqVac.active := true;

  qryVacMed.close;
  qryVacMed.ParamByName('codigo').AsString := cedCod_Vac_Medic.text;
  qryVacMed.Open;

  if qryVacMed.RecordCount = 0 then
    begin
      MessageDlg('Medicamento não cadastrado!', mtInformation, [mbOK], 0);
      cedCod_Vac_Medic.SetFocus;
      Exit;
    end;

  rxqVac.append;
  rxqVac.edit;
  rxqVac.fieldbyname('cod_vac_medic').AsString   := cedCod_Vac_Medic.text;
  rxqvac.fieldbyname('des_abrev').asstring        := QryVacinasDes_Detal.asstring;
  rxqVac.post;


  cedCod_Vac_Medic.clear;
  dlcVacinas.keyvalue := '0';
  rxqVac.EnableControls;

end;

procedure TFPedidoRacao.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if not rxqVac.active then rxqVac.active := true;
  if not(rxqVac.State = dsEdit) and
     not(rxqVac.State = dsInsert) and
     not(rxqVac.IsEmpty) then
  begin

            rxqVac.EnableControls;
            rxqVac.Edit;
            rxqVac.Delete;
            rxqVac.DisableControls;
            rxqVac.EnableControls;

  end;

end;

procedure TFPedidoRacao.cedCod_Vac_Medic1Change(Sender: TObject);
begin
  inherited;
  if Length(cedCod_Vac_Medic.text) = (cedCod_Vac_Medic.MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;

end;

procedure TFPedidoRacao.cedCod_Vac_Medic1Exit(Sender: TObject);
begin
  inherited;
  dlcVacinas.KeyValue := cedCod_Vac_Medic.text;

end;

procedure TFPedidoRacao.dlcVacinasCloseUp(Sender: TObject);
begin
  inherited;
  cedCod_Vac_Medic.text := QryVacinas.FieldByName('Cod_Vac_Medic').AsString;
  cedCod_Vac_Medic.SetFocus;
end;

procedure TFPedidoRacao.BitBtn1Click(Sender: TObject);
begin
  inherited;
  qryArracoamento.close;
  qryArracoamento.parambyname('cod_granja').asstring :=  edtCod_Granja.text;
  qryArracoamento.parambyname('cod_grupo').asstring :=  edtCod_Grupo.text;
  qryArracoamento.parambyname('data').asdatetime      :=  detDat_Entrada.date;
  qryArracoamento.open;
end;

procedure TFPedidoRacao.BitBtn2Click(Sender: TObject);
begin
  inherited;
  cedQtd_Entrada.clear;
  qryArracoamento.first;
  while not qryArracoamento.eof do
  begin
     if DBGrid2.SelectedRows.CurrentRowSelected then
        cedQtd_Entrada.value := cedQtd_Entrada.value +   qryArracoamentoqtd_rac_saco_maq.asfloat;
     qryArracoamento.next;
  end;
end;

procedure TFPedidoRacao.BitBtn4Click(Sender: TObject);
begin
  inherited;
  if not RxCarga.active then RxCarga.active := true;

  if not(BuscaRegistro(QryBusca, 'Select * From avfscra1 ',
                                   'Where Cod_Racao = ' + IntToStr(cedCodRacao.AsInteger))) then
         begin
           MessageDlg('Ração não cadastrada!',mtInformation, [mbOK], 0);
           cedCodRacao.SetFocus;
           Exit;
         end;

  RxCarga.append;
  RxCargaCod_racao.asinteger   := QryRacaoCod_racao.asinteger;
  RxCargaSeq_Racao.asinteger   := QryRacaoSeq_Racao.asinteger;
  RxCargaDes_Abrev.asstring    := QryRacaoDes_Abrev.asstring;
  RxCargacod_auxiliar.asstring := QryRacaocod_auxiliar.asstring;
  RxCargaquantidade.asfloat    := cedQtd_Entrada.value;
  RxCarga.post;

  cedCodRacao.clear;
  dlcRacao.keyvalue := 0;
  cedQtd_Entrada.clear;


end;

procedure TFPedidoRacao.BitBtn3Click(Sender: TObject);
begin
  inherited;
  RxCarga.delete;
end;

procedure TFPedidoRacao.cedCod_Vac_MedicChange(Sender: TObject);
begin
  inherited;
  if Length(cedCod_Vac_Medic.text) = (cedCod_Vac_Medic.MaxLength) then
    begin
      SelectNext(ActiveControl, True, True);
    end;

end;

procedure TFPedidoRacao.cedCod_Vac_MedicExit(Sender: TObject);
begin
  inherited;
  dlcVacinas.KeyValue := cedCod_Vac_Medic.text;
end;

end.

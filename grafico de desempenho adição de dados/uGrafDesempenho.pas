{*******************************************************************************}
{                          Avecom Sistemas                                      }
{*******************************************************************************}
{                                                                               }
{ Programa:    uGrafLote.pas                                                    }
{ Objetivo:    Gera Gráficos Media                                              }
{ Data:        /Dez/2000.                                                       }
{                                                                               }
{ Histórico de Alterações:                                                      }
{                                                                               }
{                                                                               }
{*******************************************************************************}

unit uGrafDesempenho;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, RXCombos, Mask, ToolEdit, DBTables, Db, DBCtrls,
  ComCtrls, Buttons, CheckLst, CurrEdit, RXCtrls, RxMemDS;

type
  TFGrafDesempenho = class(TForm)
    dtsQryLotes: TDataSource;
    QryLotes: TQuery;
    Panel1: TPanel;
    lblCadAtividades: TLabel;
    bbtSair: TBitBtn;
    bbtVisualizarGrafico: TBitBtn;
    bbtLimpa: TBitBtn;
    QryGra: TQuery;
    chkSeries: TRxCheckListBox;
    lblTodos: TLabel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label1: TLabel;
    cedFim: TCurrencyEdit;
    cedInicio: TCurrencyEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    cedRecIni: TCurrencyEdit;
    lbl: TLabel;
    cedRecFim: TCurrencyEdit;
    chkRecria: TCheckBox;
    chbProd: TCheckBox;
    qryGranjaRecria: TQuery;
    chlLote: TCheckListBox;
    QryLote: TQuery;
    bbtTodLot: TSpeedButton;
    bbtAcharLotes: TSpeedButton;
    Label4: TLabel;
    dlcLotes: TDBLookupComboBox;
    cedCod_Lote_Num: TCurrencyEdit;
    dlcGranja: TDBLookupComboBox;
    dlcLocal: TDBLookupComboBox;
    Label6: TLabel;
    Label7: TLabel;
    QryGranja: TQuery;
    dtsQryGranja: TDataSource;
    QryLocal: TQuery;
    dtsQryLocal: TDataSource;
    edtCod_Granja: TEdit;
    edtCod_Local: TEdit;
    chkProprio: TCheckBox;
    chkAtivos: TCheckBox;
    dtsLote: TDataSource;
    chbDados: TCheckBox;
    procedure bbtVisualizarGraficoClick(Sender: TObject);
    procedure bbtSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbtLimpaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cedCod_Lote_NumExit(Sender: TObject);
    procedure dlcLotesCloseUp(Sender: TObject);
    procedure dlcLotesDropDown(Sender: TObject);
    procedure lblTodosClick(Sender: TObject);
    procedure chbProdClick(Sender: TObject);
    procedure cedInicioChange(Sender: TObject);
    procedure cedInicioExit(Sender: TObject);
    procedure bbtTodLotClick(Sender: TObject);
    procedure bbtAcharLotesClick(Sender: TObject);
    procedure dlcGranjaCloseUp(Sender: TObject);
    procedure dlcLocalCloseUp(Sender: TObject);
    procedure dlcGranjaDropDown(Sender: TObject);
    procedure dlcLocalDropDown(Sender: TObject);
    procedure edtCod_GranjaExit(Sender: TObject);
    procedure edtCod_LocalExit(Sender: TObject);
    procedure chkProprioClick(Sender: TObject);
    procedure chkAtivosClick(Sender: TObject);
  private
    function GeraTitulo():String;
    Procedure CarregaItens(Dados :TQuery; chlItem:TCheckListBox);
    { Private declarations }
  public
    { Public declarations }
    Procedure exibe();
    Procedure GeraConsulta(var vQuery, vTitulo : String);
    procedure acharlotes;
    procedure GerarGrafico;
  end;


var
  FGrafDesempenho   : TFGrafDesempenho;
  vLista : string;
  Cod_Lote_Num : Integer;
//  vPosicao : Integer;

implementation

uses uMenu, uGrafDesempenhoVis, UMensagens, Funcoes;


{$R *.DFM}
procedure TFGrafDesempenho.exibe();
begin
  if FGrafDesempenho = nil
   then FGrafDesempenho := TFGrafDesempenho.create(application);

   with FGrafDesempenho do
     begin
       WindowState := wsNormal;   {O form esta minimizado}
       BringToFront;
       lblTodosClick(nil);
       chkSeries.Checked[8] := False;
       chkSeries.Checked[9] := False;
       chkSeries.Checked[10] := False;
       chkSeries.Checked[11] := False;
       chkSeries.Checked[18] := False;
       chkSeries.Checked[19] := False;
       chkSeries.Checked[20] := False;
       chkSeries.Checked[21] := False;
       chkSeries.Checked[22] := False;
       chkSeries.Checked[23] := False;
       cedRecFim.enabled     := false;
     end;
   bbtLimpaClick(nil);
end;

function TFGrafDesempenho.GeraTitulo():String;
var
 StrTitulo :String;
begin

   with qryLote do
     begin
      Filtered := True;
      Filter :=  ' cod_lote_num =  ' + inttostr(Cod_Lote_Num);

      qryGranjaRecria.close;
      qryGranjaRecria.Open;
      qryGra.Open;

      if qryGranjaRecria.FieldByName('des_abrev').AsString <> QryGra.FieldByName('des_abrev').AsString then
         StrTitulo := 'PERFORMANCE DE MATRIZES: ' + FieldByName('nro_lote').AsString + FieldByName('cod_lm').AsString + FieldByName('cod_lf').AsString + FieldByName('ide_ave').AsString + FieldByName('nro_est').AsString + ' / ' + FieldByName('cod_lote_num').AsString + #13 +
                      'Recria: '+qryGranjaRecria.FieldByName('des_abrev').AsString +'    Produção: ' + QryGra.FieldByName('des_abrev').AsString + '     - Nuc/Gal: ' + FieldByName('cod_grupo').AsString + ' / ' + FieldByName('cod_galinheiro').AsString + '     - Aloj.: ' + FieldByName('dat_aloj_inicial').AsString+'    Emissão: '+ DateToStr(Now)
      else
         StrTitulo := 'PERFORMANCE DE MATRIZES: ' + FieldByName('nro_lote').AsString + FieldByName('cod_lm').AsString + FieldByName('cod_lf').AsString + FieldByName('ide_ave').AsString + FieldByName('nro_est').AsString + ' / ' + FieldByName('cod_lote_num').AsString + #13 +
                      'Recria/Produção: '+qryGranjaRecria.FieldByName('des_abrev').AsString +'/'+ QryGra.FieldByName('des_abrev').AsString + '     - Galpão: ' + FieldByName('cod_grupo').AsString + ' / ' + FieldByName('cod_galinheiro').AsString + '     - Aloj.: ' + FieldByName('dat_aloj_inicial').AsString+'    Emissão: '+ DateToStr(Now);

      Filter := '';
      Filtered := False;

    end;

    Result := StrTitulo;

end;

procedure TFGrafDesempenho.GerarGrafico;
var
  vQuery  : String;
  vTitulo : String;
  i : Integer;
  vcontador : integer;
begin

  if (not chkRecria.checked) and (not chbProd.checked) then
  begin
     MessageDlg(Msg00537, mtInformation, [mbOK], 0);
     try chbProd.setfocus; except end;
     exit;
  end;

  GeraConsulta(vQuery,vTitulo);

  FGrafDesempenhoVis.exibe(Cod_Lote_Num, vTitulo, cedInicio.AsInteger, cedFim.AsInteger, chkRecria.Checked );

end;

procedure TFGrafDesempenho.bbtVisualizarGraficoClick(Sender: TObject);
var
  vQuery  : String;
  vTitulo : String;
  i : Integer;
  vcontador : integer;
begin

  vPosicao  := 0;

  if (not chkRecria.checked) and (not chbProd.checked) then
  begin
     MessageDlg(Msg00537, mtInformation, [mbOK], 0);
     try chbProd.setfocus; except end;
     exit;
  end;

    QryLote.Close;
    QryLote.parambyname('usuario').asstring := FMenu.Empresa.Usuario;
    QryLote.Open;
     for i := vPosicao to chlLote.Items.Count -1 do
      if chlLote.Checked [i] then
       begin
        Cod_Lote_Num := strtoint(trim(copy(chlLote.Items.Strings[i],1,5)));
        GeraConsulta(vQuery,vTitulo);
        IF chkRecria.Checked THEN
          FGrafDesempenhoVis.exibe(Cod_Lote_Num, vTitulo, cedRecIni.AsInteger, cedFim.AsInteger, chkRecria.Checked )
        ELSE
          FGrafDesempenhoVis.exibe(Cod_Lote_Num, vTitulo, cedInicio.AsInteger, cedFim.AsInteger, chkRecria.Checked );
        cod_lote_num := 0;
        vPosicao := i + 1 ;
        Exit;
       end;

end;

procedure TFGrafDesempenho.bbtSairClick(Sender: TObject);
begin
  close;
end;

procedure TFGrafDesempenho.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;          {Fecha o form}
 FGrafDesempenho := nil;     {Libera o form da memória}
end;

procedure TFGrafDesempenho.CarregaItens(Dados :TQuery; chlItem:TCheckListBox);
begin
end;

procedure TFGrafDesempenho.bbtLimpaClick(Sender: TObject);
var
 vContador : integer;
begin
   with FGrafDesempenho do
     begin
       with QryLotes do
        begin
          Close;
          parambyname('usuario').asstring := FMenu.Empresa.Usuario;
          Open;
        end;
        with QryGranja do
         begin
           close;
           open;
         end;
        with QryLocal do
         begin
           close;
           open;
         end;

       cedCod_Lote_Num.Clear;
       cedCod_Lote_NumExit(nil);
       edtCod_Granja.Clear;
       edtCod_Local.Clear;
       chbDados.Checked := false;
       for vContador := 0 to chlLote.Items.Count - 1 do
             chlLote.Checked[vContador] := FALSE;
           chlLote.ItemIndex := 0;
     end
end;

procedure TFGrafDesempenho.FormCreate(Sender: TObject);
begin
  SetBounds(0,0,Width ,Height);
  vPosicao := 0;
end;

Procedure TFGrafDesempenho.GeraConsulta(var vQuery, vTitulo : String);
begin
 vQuery := ' and cod_lote_num = ' + inttostr(Cod_Lote_Num);
 vTitulo := GeraTitulo;
end;

procedure TFGrafDesempenho.cedCod_Lote_NumExit(Sender: TObject);
begin
  dlcLotes.KeyValue := cedCod_Lote_Num.AsInteger;
  AcharLotes;
end;

procedure TFGrafDesempenho.dlcLotesCloseUp(Sender: TObject);
begin
  cedCod_Lote_Num.AsInteger := QryLotes.FieldByName('Cod_Lote_Num').AsInteger;
  cedCod_Lote_Num.OnExit(self);
end;

procedure TFGrafDesempenho.dlcLotesDropDown(Sender: TObject);
begin
  with QryLotes do
    begin
      Close;
      parambyname('usuario').asstring := FMenu.Empresa.Usuario;
      Open;
    end;
end;

procedure TFGrafDesempenho.lblTodosClick(Sender: TObject);
var
   cont : integer;
   achou : Boolean;
begin
  with FGrafDesempenho do
   begin
    achou := True;
    for cont := 0 to chkSeries.Items.Count - 1 do
       achou := chkSeries.Checked[cont] and achou;
    for cont := 0 to chkSeries.Items.Count - 1 do
       chkSeries.Checked[cont] := not achou;
  end;
end;

procedure TFGrafDesempenho.chbProdClick(Sender: TObject);
begin
   if chbProd.checked then
   begin
      cedRecFim.enabled := false;
   end
   else
   begin
      cedRecFim.enabled := true;
   end;
end;

procedure TFGrafDesempenho.cedInicioChange(Sender: TObject);
begin
   if chbProd.checked then cedRecFim.asinteger := cedInicio.asinteger - 1;
end;

procedure TFGrafDesempenho.cedInicioExit(Sender: TObject);
begin
   if chbProd.checked then cedRecFim.asinteger := cedInicio.asinteger - 1;
end;

procedure TFGrafDesempenho.bbtTodLotClick(Sender: TObject);
var
  chl    : TCheckListBox;
  i      : integer;
  Marcar : Boolean;
begin
  if Sender = bbtTodLot then chl := chlLote;

  // procura por algum item desmarcado
  Marcar := True;
  for i := 0 to chl.Items.Count - 1 do
    Marcar := Marcar and (chl.Checked[i]);

  // alterna a marcação dos itens
  for i := 0 to chl.Items.Count - 1 do
    chl.Checked[i] := not Marcar;
end;

procedure TFGrafDesempenho.AcharLotes;
var
   vStr : string;
begin
   QryLote.close;
   QryLote.parambyname('usuario').asstring := FMenu.Empresa.Usuario;
   if cedCod_Lote_Num.asinteger <> 0      then vStr := vStr + ' and lot.Cod_Lote_Num =:Cod_Lote_Num ';
   if edtCod_Granja.text        <> ''     then vStr := vStr + ' and edr.Cod_Granja =:Cod_Granja ';
   if edtCod_Local.text         <> ''     then vStr := vStr + ' and edr.Cod_Local =:Cod_Local ';
   if chkProprio.Checked                  then vStr := vStr + ' and lot.Lote_Proprio =:Lote_Proprio ';
   if chkAtivos.Checked                   then vStr := vStr + ' and edr.Dat_Fim =to_date(:Dat_Fim,''dd/mm/yyyy'') ';

   if vStr <> ''            then qrylote.SQL.strings[24] := vStr else qrylote.SQL.strings[24] := '';

   if cedCod_Lote_Num.asinteger <> 0      then QryLote.parambyname('Cod_Lote_Num').asinteger := cedCod_Lote_Num.asinteger;
   if edtCod_Granja.text        <> ''     then QryLote.parambyname('Cod_Granja').asstring := edtCod_Granja.text;
   if edtCod_Local.text         <> ''     then QryLote.parambyname('Cod_Local').asstring := edtCod_Local.text;
   if chkProprio.Checked                  then QryLote.parambyname('Lote_Proprio').AsINTEGER := ConvertBooToInt(chkProprio.Checked);
   if chkAtivos.Checked                   then QryLote.parambyname('Dat_Fim').asstring := '31/12/9999';

   QryLote.Open;
   QryLote.parambyname('usuario').asstring := FMenu.Empresa.Usuario;
   qryLote.First;
   chlLote.Clear;
   while not qryLote.eof do
   begin
       //Nro_Lote-IDE_AVE-Cod_LM-Cod_LF-Nro_Est-COD_LOTE_NUM
       chlLote.Items.Add(StrLeft(qryLote.FieldByName('cod_lote_num').AsString,5)+' '+ qryLote.FieldByName('chave').AsString);
       qryLote.Next;

   end;
end;

procedure TFGrafDesempenho.bbtAcharLotesClick(Sender: TObject);
begin
 AcharLotes;
end;

procedure TFGrafDesempenho.dlcGranjaCloseUp(Sender: TObject);
begin
  edtCod_Granja.text := QryGranja.FieldByName('Cod_Granja').Asstring;
  edtCod_Granja.OnExit(self);
end;

procedure TFGrafDesempenho.dlcLocalCloseUp(Sender: TObject);
begin
   edtCod_Local.text := QryLocal.FieldByName('Cod_Local').Asstring;
   edtCod_Local.OnExit(self);
end;

procedure TFGrafDesempenho.dlcGranjaDropDown(Sender: TObject);
begin
  with QryGranja do
    begin
      Close;
      Open;
    end;
end;

procedure TFGrafDesempenho.dlcLocalDropDown(Sender: TObject);
begin
   with QryLocal do
    begin
      Close;
      Open;
    end;
end;

procedure TFGrafDesempenho.edtCod_GranjaExit(Sender: TObject);
begin
   dlcGranja.KeyValue := edtCod_Granja.text;
  AcharLotes;
end;

procedure TFGrafDesempenho.edtCod_LocalExit(Sender: TObject);
begin
  dlcLocal.KeyValue := edtCod_Local.text;
  AcharLotes;
end;

procedure TFGrafDesempenho.chkProprioClick(Sender: TObject);
begin
 AcharLotes;
end;

procedure TFGrafDesempenho.chkAtivosClick(Sender: TObject);
begin
 AcharLotes;
end;


end.

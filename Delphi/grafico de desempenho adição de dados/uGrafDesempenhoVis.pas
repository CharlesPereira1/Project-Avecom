{*******************************************************************************}
{                          AVESoft INFORMÁTICA                                  }
{*******************************************************************************}
{                                                                               }
{ Programa:    uGrafLoteVis.pas                                                 }
{ Objetivo:    Permite a visualização do Grafico gerado a partir dos frmGrafAgrupado}
{ Autor:       Alexandre Fermino Fanti                                          }
{ Data:        /Junho/2001.                                                       }
{                                                                               }
{ Histórico de Alterações:                                                      }
{                                                                               }
{                                                                               }
{*******************************************************************************}

unit uGrafDesempenhoVis;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, TeeProcs, TeEngine, Chart, Series, Menus, Buttons, ComCtrls,
  ToolWin, StdCtrls, TeeFunci, Db, DBTables, Grids, DBGrids, CheckLst,
  RxQuery, DBChart;

type
  TFGrafDesempenhoVis = class(TForm)
    Panel1: TPanel;
    bbtSair: TBitBtn;
    Panel2: TPanel;
    chb3D: TCheckBox;
    Panel4: TPanel;
    chbMarks: TCheckBox;
    bbtImprimir: TBitBtn;
    PrintDialog1: TPrintDialog;
    bbtScrollDown: TBitBtn;
    bbtScrollUp: TBitBtn;
    bbtScrollRight: TBitBtn;
    bbtScrollLeft: TBitBtn;
    qryDes: TQuery;
    chtMain: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Series5: TLineSeries;
    Series6: TLineSeries;
    qryPad: TQuery;
    Series7: TLineSeries;
    Series8: TLineSeries;
    Series9: TLineSeries;
    Series10: TLineSeries;
    qryEcl: TQuery;
    Series11: TLineSeries;
    Series13: TLineSeries;
    Series14: TLineSeries;
    Series15: TLineSeries;
    Series16: TLineSeries;
    Series17: TLineSeries;
    Series18: TLineSeries;
    Series19: TLineSeries;
    Series20: TLineSeries;
    qryEclPad: TQuery;
    Series12: TLineSeries;
    Panel3: TPanel;
    chkLegenda: TCheckBox;
    Series21: TLineSeries;
    Series22: TLineSeries;
    Series23: TLineSeries;
    Series24: TLineSeries;
    Series25: TLineSeries;
    Series26: TLineSeries;
    bbtVoltar: TBitBtn;
    bbtAvancar: TBitBtn;
    qryJuntado: TQuery;
    qryEmp: TQuery;
    Series27: TLineSeries;
    Series28: TLineSeries;
    Series29: TLineSeries;
    Series30: TLineSeries;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbtSairClick(Sender: TObject);
    procedure chb3DClick(Sender: TObject);
    procedure chbMarksClick(Sender: TObject);
    procedure bbtImprimirClick(Sender: TObject);
    Procedure ScrollAxis(Axis:TChartAxis; Const Percent:Double);
    Procedure HorizScroll(Const Percent:Double);
    Procedure VertScroll(Const Percent:Double);
    procedure bbtScrollDownClick(Sender: TObject);
    procedure bbtScrollRightClick(Sender: TObject);
    procedure bbtScrollLeftClick(Sender: TObject);
    procedure bbtScrollUpClick(Sender: TObject);
    procedure chtMainPageChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chkLegendaClick(Sender: TObject);
    procedure bbtVoltarClick(Sender: TObject);
    procedure bbtAvancarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Exibe(Lote: Integer; vParTituloGrafico: String; vIdadeInicio, vIdadeFim : Integer; vExibirRecria: Boolean);
    procedure GeraSeries(CampoObt, CampoPad :String; MaxIdade :Integer; vAcumular :Boolean; vIdadeInicio, vIdadeFim:Integer; vExibirRecria,vControlar : Boolean);
 end;

var
  FGrafDesempenhoVis: TFGrafDesempenhoVis;
  Serie, Padrao     : TChartSeries;
  vQueryConsulta,
  vConsulta      : String;
  vTit : string;
  vLt : integer;
  vMaior : real;

implementation

uses uGrafDesempenho, UMenu,printers,FUNCOES,URelatDesempenho;

{$R *.DFM}
procedure TFGrafDesempenhoVis.GeraSeries(CampoObt, CampoPad :String; MaxIdade :Integer; vAcumular :Boolean; vIdadeInicio, vIdadeFim:Integer; vExibirRecria,vControlar : Boolean);
var
  vAcum : Double;
begin
  qryDes.First;
  qryPad.First;
  vAcum := 0;
  if CampoObt <> '' then
     with qryDes do
         while not Eof do
         begin
           if vIdadeInicio = FieldByName('Idade').AsFloat then vAcum := 0;

           if ( ( qryDes.FieldByName('Idade').AsFloat <= MaxIdade ) and
                ((( vExibirRecria) and (FieldByName('Idade').AsFloat < vIdadeInicio ) )  or
                 (( FieldByName('Idade').AsFloat >= vIdadeInicio ) and ( FieldByName('Idade').AsFloat <= vIdadeFim )))
              ) then
              if FieldByName(CampoObt).AsFloat <> 0 then
               if vAcumular then
                 begin

                  vAcum := vAcum + FieldByName(CampoObt).AsFloat;
                  Serie.AddXY(FieldByName('Idade').AsFloat, vAcum,'', clTeeColor);
                  if vControlar then
                    if vAcum >= vMaior then
                     vMaior := vAcum;

                end
               else
               begin

                Serie.AddXY(FieldByName('Idade').AsFloat, FieldByName(CampoObt).AsFloat,'', clTeeColor);
                if vControlar then
                if FieldByName(CampoObt).AsFloat >= vMaior then
                     vMaior := FieldByName(CampoObt).AsFloat;
               end;


           Next;
         end;

  vAcum := 0;
  if CampoPad <> '' then
    with qryPad do
      while not Eof do
        begin
          if vIdadeInicio = FieldByName('Idade').AsFloat then vAcum := 0;
          if FieldByName(CampoPad).AsFloat <> 0 then
            if vAcumular then
               begin
                 vAcum := vAcum + FieldByName(CampoPad).AsFloat;
                 Padrao.AddXY(FieldByName('Idade').AsFloat, vAcum,'', clTeeColor);
               end
               else
                Padrao.AddXY(FieldByName('Idade').AsFloat, FieldByName(CampoPad).AsFloat,'', clTeeColor);
          Next;
        end;
end;

procedure TFGrafDesempenhoVis.Exibe(Lote: Integer; vParTituloGrafico: String; vIdadeInicio, vIdadeFim : Integer; vExibirRecria: Boolean);
begin
 FGrafDesempenhoVis := TFGrafDesempenhoVis.Create(nil);
 with FGrafDesempenhoVis do
  begin
   WindowState := wsMaximized;
   BringToFront;
   chb3DClick(nil);
   chbMarksClick(nil);
   chkLegendaClick(nil);
   chtMain.Title.Text.Text := vParTituloGrafico;
   vTit :=  vParTituloGrafico;
   vLt :=  Lote;
   qryDes.Close;
   qryPad.Close;
   qryEcl.Close;
   qryEclPad.Close;




   if FGrafDesempenho.chbProd.Checked then
      chtMain.BottomAxis.Maximum :=  FGrafDesempenho.cedFim.value
   else
      chtMain.BottomAxis.Maximum :=  FGrafDesempenho.cedRecFim.value;

   if FGrafDesempenho.chkRecria.Checked then
      chtMain.BottomAxis.Minimum := FGrafDesempenho.cedRecIni.value
   else
      chtMain.BottomAxis.Minimum := FGrafDesempenho.cedInicio.value;

   qryDes.ParamByName('Cod_lote_num').AsInteger := Lote;
   qryPad.ParamByName('Cod_lote_num').AsInteger := Lote;
         {
   qryJuntado.close;
   qryJuntado.parambyname('cod_lote_num').asinteger := lote;
   qryJuntado.open;
   if not qryJuntado.isempty then Lote := qryJuntado.fieldbyname('cod_lote_num_j').asinteger;
          }
   qryEcl.ParamByName('Cod_lote_num').AsInteger := Lote;
   qryEclPad.ParamByName('Cod_lote_num').AsInteger := Lote;

   qryDes.Open;
   qryPad.Open;
   qryEcl.Open;
   qryEclPad.Open;

   vMaior := 0;

   Serie  := chtMain.Series[0];
   Padrao := chtMain.Series[1];
   GeraSeries('peso_obtido_fem','peso_fem',vIdadeFim,False,vIdadeInicio, vIdadeFim, vExibirRecria,FGrafDesempenho.chkSeries.Checked[0]);
   Serie.Active := FGrafDesempenho.chkSeries.Checked[0];
   Padrao.Active := FGrafDesempenho.chkSeries.Checked[1];

   Serie  := chtMain.Series[2];
   Padrao := chtMain.Series[3];
   GeraSeries('peso_obtido_mac','peso_mac',vIdadeFim,False,vIdadeInicio, vIdadeFim, vExibirRecria,FGrafDesempenho.chkSeries.Checked[2]);
   Serie.Active := FGrafDesempenho.chkSeries.Checked[2];
   Padrao.Active := FGrafDesempenho.chkSeries.Checked[3];

   Serie  := chtMain.Series[4];
   Padrao := chtMain.Series[5];
   GeraSeries('racao_fem','racao_fem_pad',vIdadeFim,False,vIdadeInicio, vIdadeFim, vExibirRecria,FGrafDesempenho.chkSeries.Checked[4]);
   Serie.Active := FGrafDesempenho.chkSeries.Checked[4];
   Padrao.Active := FGrafDesempenho.chkSeries.Checked[5];

   Serie  := chtMain.Series[6];
   Padrao := chtMain.Series[7];
   GeraSeries('racao_mac','racao_mac_pad',vIdadeFim,False,vIdadeInicio, vIdadeFim, vExibirRecria,FGrafDesempenho.chkSeries.Checked[6]);
   Serie.Active := FGrafDesempenho.chkSeries.Checked[6];
   Padrao.Active := FGrafDesempenho.chkSeries.Checked[7];

   Serie  := chtMain.Series[8];
   Padrao := chtMain.Series[9];
   GeraSeries('mortal_obtida_fem','pct_morte_fem',vIdadeFim,True,vIdadeInicio, vIdadeFim, vExibirRecria,FGrafDesempenho.chkSeries.Checked[8]);
   Serie.Active := FGrafDesempenho.chkSeries.Checked[8];
   Padrao.Active := FGrafDesempenho.chkSeries.Checked[9];

   Serie  := chtMain.Series[10];
   Padrao := chtMain.Series[11];
   GeraSeries('mortal_obtida_mac','pct_morte_mac',vIdadeFim,True,vIdadeInicio, vIdadeFim, vExibirRecria,FGrafDesempenho.chkSeries.Checked[10]);
   Serie.Active := FGrafDesempenho.chkSeries.Checked[10];
   Padrao.Active := FGrafDesempenho.chkSeries.Checked[11];

   Serie  := chtMain.Series[12];
   Padrao := chtMain.Series[13];
   GeraSeries('uniformidade_fem','pct_unif_fem',vIdadeFim,False,vIdadeInicio, vIdadeFim, vExibirRecria,FGrafDesempenho.chkSeries.Checked[12]);
   Serie.Active := FGrafDesempenho.chkSeries.Checked[12];
   Padrao.Active := FGrafDesempenho.chkSeries.Checked[13];

   Serie  := chtMain.Series[14];
   Padrao := chtMain.Series[15];
   GeraSeries('uniformidade_mac','pct_unif_mac',vIdadeFim,False,vIdadeInicio, vIdadeFim, vExibirRecria,FGrafDesempenho.chkSeries.Checked[14]);
   Serie.Active := FGrafDesempenho.chkSeries.Checked[14];
   Padrao.Active := FGrafDesempenho.chkSeries.Checked[15];

   Serie  := chtMain.Series[16];
   Padrao := chtMain.Series[17];
   GeraSeries('postura_obtida_sem','pct_postura',vIdadeFim,False,vIdadeInicio, vIdadeFim, vExibirRecria,FGrafDesempenho.chkSeries.Checked[16]);
   Serie.Active := FGrafDesempenho.chkSeries.Checked[16];
   Padrao.Active := FGrafDesempenho.chkSeries.Checked[17];

   Serie  := chtMain.Series[18];
   Padrao := chtMain.Series[19];
   GeraSeries('aprov_ovo_obtido','aprov_ovo',vIdadeFim,False,vIdadeInicio, vIdadeFim, vExibirRecria,FGrafDesempenho.chkSeries.Checked[18]);
   Serie.Active := FGrafDesempenho.chkSeries.Checked[18];
   Padrao.Active := FGrafDesempenho.chkSeries.Checked[19];

   Serie  := chtMain.Series[20];
   Padrao := chtMain.Series[21];
   GeraSeries('cv_obtido_fem','pct_cv_fem',vIdadeFim,False,vIdadeInicio, vIdadeFim, vExibirRecria,FGrafDesempenho.chkSeries.Checked[20]);
   Serie.Active := FGrafDesempenho.chkSeries.Checked[20];
   Padrao.Active := FGrafDesempenho.chkSeries.Checked[21];

   Serie  := chtMain.Series[22];
   Padrao := chtMain.Series[23];
   GeraSeries('cv_obtido_mac','pct_cv_mac',vIdadeFim,False,vIdadeInicio, vIdadeFim, vExibirRecria,FGrafDesempenho.chkSeries.Checked[22]);
   Serie.Active := FGrafDesempenho.chkSeries.Checked[22];
   Padrao.Active := FGrafDesempenho.chkSeries.Checked[23];

   // Ovos Incubados

   Serie  := chtMain.Series[28];                                                         
   Padrao := chtMain.Series[29];
   GeraSeries('ovo_incub','ovo_inc_ave',vIdadeFim,False,vIdadeInicio, vIdadeFim, vExibirRecria,FGrafDesempenho.chkSeries.Checked[28]);
   Serie.Active := FGrafDesempenho.chkSeries.Checked[28];
   Padrao.Active := FGrafDesempenho.chkSeries.Checked[29];



// eclosao
   qryDes.Destroy;
   qryDes := qryEcl;
   qryPad := qryEclPad;
   Serie  := chtMain.Series[24];
   Padrao := chtMain.Series[25];
   GeraSeries('eclosao','pct_eclosao',vIdadeFim,False,vIdadeInicio, vIdadeFim, vExibirRecria,FGrafDesempenho.chkSeries.Checked[24]);
   Serie.Active := FGrafDesempenho.chkSeries.Checked[24];
   Padrao.Active := FGrafDesempenho.chkSeries.Checked[25];
   chtMain.RightAxis.Maximum := vMaior + 5;

   Serie  := chtMain.Series[26];
   Padrao := chtMain.Series[27];
   GeraSeries('fertilidade','pad_fertilidade',vIdadeFim,False,vIdadeInicio, vIdadeFim, vExibirRecria,FGrafDesempenho.chkSeries.Checked[26]);
   Serie.Active := FGrafDesempenho.chkSeries.Checked[26];
   Padrao.Active := FGrafDesempenho.chkSeries.Checked[27];

//
   chtMain.Refresh;
//   chtMain.Legend.Repaint;
   Show;
  end;
end;



procedure TFGrafDesempenhoVis.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action:= caFree;
   Self := nil;
end;

procedure TFGrafDesempenhoVis.bbtSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFGrafDesempenhoVis.chb3DClick(Sender: TObject);
begin
  chtMain.View3D := chb3D.Checked;
end;

procedure TFGrafDesempenhoVis.chbMarksClick(Sender: TObject);
Var I:Integer;
begin
  for I := 0 to chtMain.SeriesList.Count -1 do
     chtMain.SeriesList.Series[I].Marks.Visible := chbMarks.Checked;
end;

procedure TFGrafDesempenhoVis.bbtImprimirClick(Sender: TObject);

begin
 If PrintDialog1.Execute then
    begin
      with FGrafDesempenhoVis.chtMain  do
      begin
          PrintMargins:=Rect(3,3,3,3);
          PrintResolution:=-100;
          PrintLandscape;
          Self.Refresh;
      end;
      if FGrafDesempenho.chbDados.checked then
         frmRelatPerformance.exibe(vTit,vLt);
    end;
end;


Procedure TFGrafDesempenhoVis.ScrollAxis(Axis:TChartAxis; Const Percent:Double);
var Amount:Double;
begin
  With Axis do
  begin
    Amount:=-((Maximum-Minimum)/(100.0/Percent));
    SetMinMax(Minimum-Amount,Maximum-Amount);
  end;
end;


Procedure TFGrafDesempenhoVis.HorizScroll(Const Percent:Double);
begin
  ScrollAxis(chtMain.TopAxis,Percent);
  ScrollAxis(chtMain.BottomAxis,Percent);
end;


Procedure TFGrafDesempenhoVis.VertScroll(Const Percent:Double);
begin
  ScrollAxis(chtMain.LeftAxis,Percent);
  ScrollAxis(chtMain.RightAxis,Percent);
end;


procedure TFGrafDesempenhoVis.bbtScrollDownClick(Sender: TObject);
begin
  VertScroll(-10);
end;

procedure TFGrafDesempenhoVis.bbtScrollRightClick(Sender: TObject);
begin
  HorizScroll(10);
end;

procedure TFGrafDesempenhoVis.bbtScrollLeftClick(Sender: TObject);
begin
  HorizScroll(-10);
end;

procedure TFGrafDesempenhoVis.bbtScrollUpClick(Sender: TObject);
begin
  VertScroll(10);
end;

procedure TFGrafDesempenhoVis.chtMainPageChange(Sender: TObject);
begin
  chtMain.UndoZoom;
end;

procedure TFGrafDesempenhoVis.FormCreate(Sender: TObject);
begin
  chtMainPageChange(sender);
end;

procedure TFGrafDesempenhoVis.chkLegendaClick(Sender: TObject);
begin
  chtMain.Legend.Visible := chkLegenda.Checked
end;

procedure TFGrafDesempenhoVis.bbtVoltarClick(Sender: TObject);
var
 i : integer;
begin
    Close;
    FGrafDesempenho.QryLote.Close;
    FGrafDesempenho.QryLote.Open;
    vPosicao := vPosicao - 1;
    for i := vPosicao - 1 downto 0 do
     if FGrafDesempenho.chlLote.Checked [i] then
      begin
       Cod_Lote_Num := strtoint(trim(copy(FGrafDesempenho.chlLote.Items.Strings[i],1,5)));
//       FGrafDesempenho.bbtVisualizarGrafico.Click;
       FGrafDesempenho.GerarGrafico;
       cod_lote_num := 0;
//       vPosicao := i;
       Exit;
      end;
end;

procedure TFGrafDesempenhoVis.bbtAvancarClick(Sender: TObject);
var
 i  : integer;
begin
    Close;
    FGrafDesempenho.QryLote.Close;
    FGrafDesempenho.QryLote.Open;
    for i := vPosicao to FGrafDesempenho.chlLote.Items.Count -1 do
     if FGrafDesempenho.chlLote.Checked [i] then
      begin
       Cod_Lote_Num := strtoint(trim(copy(FGrafDesempenho.chlLote.Items.Strings[i],1,5)));
       vLt := strtoint(trim(copy(FGrafDesempenho.chlLote.Items.Strings[i],1,5)));
//       FGrafDesempenho.bbtVisualizarGrafico.Click;
       FGrafDesempenho.GerarGrafico;
       cod_lote_num := 0;
       vPosicao := i + 1 ;
       Exit;
      end;
end;

end.


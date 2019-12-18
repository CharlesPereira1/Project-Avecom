unit uRelSaldoIncubarQRP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, QuickRpt, Qrctrls, StdCtrls;
                      
type
  TFRelSaldoIncubarQRP = class(TForm)
    qrpDados: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    Cabeca: TQRGroup;
    dados: TQRSubDetail;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand3: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    qryDados: TQuery;
    qryDadoscod_inc_depto: TStringField;
    qryDadoscod_lote_num: TIntegerField;
    qryDadoscodigo_lote: TStringField;
    qryDadoside_ave: TStringField;
    qryDadosdat_post: TDateTimeField;
    qryDadosidade: TSmallintField;
    qryDadosqtd_Tipo1: TIntegerField;
    qryDadosqtd_Tipo2: TIntegerField;
    qryDadosqtd_Tipo3: TIntegerField;
    qryDadosqtd_Tipo4: TIntegerField;
    qryDadosqtd_Cama: TIntegerField;
    qryDadosqtd_Reaprov: TIntegerField;
    qryDadosqtd_Venda: TIntegerField;
    qryDadosqtd_Acidente: TIntegerField;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRImage1: TQRImage;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel20: TQRLabel;
    QRDBText2: TQRDBText;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape26: TQRShape;
    QRShape28: TQRShape;
    QRShape30: TQRShape;
    QRShape32: TQRShape;
    QRShape34: TQRShape;
    QRShape36: TQRShape;
    QRShape38: TQRShape;
    QRShape40: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    qryDadosincubatorio: TStringField;
    qryDadosexame: TIntegerField;
    FimCabeca: TQRBand;
    QRShape25: TQRShape;
    QRShape27: TQRShape;
    QRShape29: TQRShape;
    QRShape31: TQRShape;
    QRShape33: TQRShape;
    QRShape35: TQRShape;
    QRShape37: TQRShape;
    QRShape39: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel13: TQRLabel;
    qryDadosdes_abrev: TStringField;
    QRGroup1: TQRGroup;
    QRDBText13: TQRDBText;
    FimLinhagem: TQRBand;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRLabel22: TQRLabel;
    QRDBText14: TQRDBText;
    qryDadoslinhagem: TStringField;
    QRLabel31: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel21: TQRLabel;
    QRLabel23: TQRLabel;
    qryDadostotal: TIntegerField;
    QRDBText8: TQRDBText;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRDBText9: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    qryDadosdat_classif: TDateTimeField;
    qryDadoshor_classif: TDateTimeField;
    qryDadosnom_digit: TStringField;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText15: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Exibe();
  end;

var
  FRelSaldoIncubarQRP: TFRelSaldoIncubarQRP;

implementation

uses URelatFiltro;

{$R *.DFM}

procedure TFRelSaldoIncubarQRP.Exibe();
var
  vWhere : string;
  vContador : integer;
begin
   if FRelSaldoIncubarQRP = nil
    then FRelSaldoIncubarQRP := TFRelSaldoIncubarQRP.Create(nil);

   with FRelSaldoIncubarQRP do
    begin
              vWhere := '';
       vLista1 := '';
       vLista :='';
       qryDados.close;
       qryDados.parambyname('inicio').asdatetime := FRelatFiltro.detDat_inicio.date;
       qryDados.parambyname('fim').asdatetime    := FRelatFiltro.detDat_final.date;
       if FRelatFiltro.edtcod_incub.text <> ''   then  vWhere  := vWhere + ' and sao.cod_inc_depto = :cod_inc_depto ';
       if FRelatFiltro.cedCod_Lote.asinteger > 0 then  vWhere  := vWhere + ' and sao.cod_lote_num = :cod_lote_num ';
       if FRelatFiltro.edtGra.Text <> ''         then  vWhere  := vWhere + ' and edr.Cod_Granja = :Cod_Granja ';
       if FRelatFiltro.edtNroLote.text <> ''     then  vWhere  := vWhere + ' and lot.nro_lote = :nro_lote ';
       if FRelatFiltro.edtLF.Text  <> ''         then  vWhere  := vWhere + ' and lot.cod_lf = :cod_lf  ';

       for vContador := 0 to FRelatFiltro.chlIdes.Items.Count - 1 do
         if FRelatFiltro.chlIdes.Checked[vContador] then
            vLista1 :=  vLista1 + ', ''' +   Copy(FRelatFiltro.chlIdes.Items.Strings[vContador], 1, 4)+ '''';
       if vLista1     <> '' then vLista1 :=  Copy(vLista1, 2, length(vLista1));

       if FRelatFiltro.CheckBox2.checked then
       begin
          if vLista1     <> '' then vWhere  := vWhere + ' and IDE.GRUPO_IDE_AVE in ('+vLista1+')';
       end
       else
          if vLista1     <> '' then vWhere  := vWhere + ' and IDE.IDE_AVE in ('+vLista1+')';

       vLista1 := '';
       for vContador := 0 to FRelatFiltro.chlLocais.Items.Count - 1 do
         if FRelatFiltro.chlLocais.Checked[vContador] then
            vLista1 :=  vLista1 + ', ''' +   Copy(FRelatFiltro.chlLocais.Items.Strings[vContador], 1, 4)+ '''';

       if vLista1     <> '' then vLista1 :=  Copy(vLista1, 2, length(vLista1));
       if vLista1     <> '' then vWhere  := vWhere + ' and edr.Cod_Local in ('+vLista1+')';


       qryDados.sql.strings[27] := vWhere;

       if FRelatFiltro.edtcod_incub.text <> ''   then qryDados.parambyname('cod_inc_depto').asstring := FRelatFiltro.edtcod_incub.text;
       if FRelatFiltro.cedCod_Lote.asinteger > 0 then qryDados.parambyname('cod_lote_num').asinteger := FRelatFiltro.cedCod_Lote.asinteger;
       if FRelatFiltro.edtGra.Text <> ''         then qryDados.parambyname('Cod_Granja').asstring    := FRelatFiltro.edtGra.Text;
       if FRelatFiltro.edtNroLote.text <> ''     then qryDados.parambyname('nro_lote').asString      := FRelatFiltro.edtNroLote.text;
       if FRelatFiltro.edtLF.Text  <> ''         then qryDados.parambyname('cod_lf').asstring        := FRelatFiltro.edtLF.Text;

       qryDados.open;

       QRLabel9.Caption  := datetostr(FRelatFiltro.detDat_Inicio.Date);
       QRLabel19.Caption := datetostr(FRelatFiltro.detDat_Final.Date);

       try QRImage1.Picture.LoadFromFile('G:\Avicola\runtime\Versao41\LogoHendrix.bmp'); except end;
       qrpDados.Preview;

    end;
end;


end.

unit uRelatMapaClassifQRP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, QuickRpt, Qrctrls, StdCtrls, RxMemDS;
                      
type
  TFRelatMapaClassifQRP = class(TForm)
    qrpDados: TQuickRep;
    QRBand2: TQRBand;
    dados: TQRSubDetail;
    qryDados: TQuery;
    QRDBText2: TQRDBText;
    qryNomeIncubatorio: TQuery;
    qryNomeIncubatorionome: TStringField;
    QRBand1: TQRBand;
    QRLabel15: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel9: TQRLabel;
    QRDBText18: TQRDBText;
    TotalGeral: TQRBand;
    QRLabel8: TQRLabel;
    QRShape2: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel41: TQRLabel;
    QRDBText9: TQRDBText;
    QRShape12: TQRShape;
    QRShape18: TQRShape;
    QRShape20: TQRShape;
    QRShape52: TQRShape;
    QRDBText13: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText15: TQRDBText;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText3: TQRDBText;
    QRExpr1: TQRExpr;
    QRLabel11: TQRLabel;
    QRDBText5: TQRDBText;
    QRExpr10: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr19: TQRExpr;
    QRLabel24: TQRLabel;
    QRLabel27: TQRLabel;
    QRExpr22: TQRExpr;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRExpr25: TQRExpr;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape14: TQRShape;
    QRShape21: TQRShape;
    QRShape24: TQRShape;
    QRShape28: TQRShape;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRExpr35: TQRExpr;
    QRLabel34: TQRLabel;
    QRLabel36: TQRLabel;
    QRExpr38: TQRExpr;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel40: TQRLabel;
    QRDBText10: TQRDBText;
    QRExpr42: TQRExpr;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRDBText17: TQRDBText;
    QRExpr47: TQRExpr;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRDBText19: TQRDBText;
    QRExpr52: TQRExpr;
    QRShape35: TQRShape;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRDBText20: TQRDBText;
    QRExpr57: TQRExpr;
    QRShape39: TQRShape;
    QRShape46: TQRShape;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRDBText21: TQRDBText;
    QRExpr62: TQRExpr;
    QRShape82: TQRShape;
    qryDadoscod_inc_depto: TStringField;
    qryDadoscod_lote_num: TIntegerField;
    qryDadosidade: TSmallintField;
    qryDadosdat_post: TDateTimeField;
    qryDadosdat_rec: TDateTimeField;
    qryDadoshor_rec: TDateTimeField;
    qryDadoside_ave: TStringField;
    qryDadosnro_lote: TStringField;
    qryDadoscod_lm: TStringField;
    qryDadoscod_lf: TStringField;
    qryDadoside_espec: TStringField;
    qryDadosnro_est: TStringField;
    qryDadosendereco: TStringField;
    qryDadosmin_dat_classif: TDateTimeField;
    qryDadosmax_dat_classif: TDateTimeField;
    qryDadosqtd_ovo_01: TIntegerField;
    qryDadosqtd_ovo_02: TIntegerField;
    qryDadosqtd_ovo_03: TIntegerField;
    qryDadosqtd_ovo_04: TIntegerField;
    qryDadosqtd_ovo_05: TIntegerField;
    qryDadosqtd_ovo_06: TIntegerField;
    qryDadosqtd_ovo_07: TIntegerField;
    qryDadosqtd_ovo_08: TIntegerField;
    qryDadosqtd_ovo_09: TIntegerField;
    qryDadosqtd_ovo_10: TIntegerField;
    qryDadosqtd_ovo_11: TIntegerField;
    qryDadosqtd_ovo_12: TIntegerField;
    qryDadosqtd_ovo_13: TIntegerField;
    qryDadosqtd_ovo_14: TIntegerField;
    qryDadosqtd_ovo_15: TIntegerField;
    qryDadosqtd_ovo_16: TIntegerField;
    qryDadosqtd_ovo_17: TIntegerField;
    qryDadosqtd_ovo_18: TIntegerField;
    qryDadosqtd_ovo_19: TIntegerField;
    qryDadosqtd_ovo_20: TIntegerField;
    qryDadosEstoqAtual: TIntegerField;
    GrupoGranja: TQRGroup;
    QRDBText23: TQRDBText;
    QRShape1: TQRShape;
    QRShape6: TQRShape;
    QRDBText1: TQRDBText;
    QRExpr67: TQRExpr;
    QRDBText4: TQRDBText;
    QRExpr68: TQRExpr;
    QRShape53: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRExpr69: TQRExpr;
    QRExpr70: TQRExpr;
    QRShape58: TQRShape;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRShape17: TQRShape;
    QRShape19: TQRShape;
    QRShape32: TQRShape;
    QRShape38: TQRShape;
    QRShape44: TQRShape;
    QRShape51: TQRShape;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    qryDadosINCUBAVEIS: TAutoIncField;
    qryDadosCOMERCIAIS: TIntegerField;
    GrupoLote: TQRGroup;
    QRDBText6: TQRDBText;
    QRShape15: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape40: TQRShape;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr24: TQRExpr;
    QRExpr26: TQRExpr;
    QRExpr27: TQRExpr;
    QRExpr31: TQRExpr;
    QRShape47: TQRShape;
    QRExpr41: TQRExpr;
    FimGranja: TQRBand;
    QRLabel16: TQRLabel;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape54: TQRShape;
    QRShape57: TQRShape;
    QRShape62: TQRShape;
    QRShape64: TQRShape;
    QRShape65: TQRShape;
    QRShape66: TQRShape;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRExpr46: TQRExpr;
    QRExpr48: TQRExpr;
    QRExpr49: TQRExpr;
    QRExpr50: TQRExpr;
    QRExpr51: TQRExpr;
    QRExpr65: TQRExpr;
    QRExpr66: TQRExpr;
    QRExpr71: TQRExpr;
    QRExpr72: TQRExpr;
    QRExpr75: TQRExpr;
    FimLote: TQRBand;
    QRLabel23: TQRLabel;
    QRExpr84: TQRExpr;
    QRExpr85: TQRExpr;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRShape78: TQRShape;
    QRShape79: TQRShape;
    QRShape81: TQRShape;
    QRShape83: TQRShape;
    QRShape84: TQRShape;
    QRShape85: TQRShape;
    QRShape86: TQRShape;
    QRShape87: TQRShape;
    QRShape88: TQRShape;
    QRShape89: TQRShape;
    QRExpr86: TQRExpr;
    QRExpr87: TQRExpr;
    QRExpr88: TQRExpr;
    QRExpr89: TQRExpr;
    QRExpr90: TQRExpr;
    QRExpr91: TQRExpr;
    QRExpr93: TQRExpr;
    QRExpr94: TQRExpr;
    QRExpr95: TQRExpr;
    QRExpr96: TQRExpr;
    QRExpr97: TQRExpr;
    QRExpr98: TQRExpr;
    QRExpr99: TQRExpr;
    QRExpr100: TQRExpr;
    QRExpr101: TQRExpr;
    QRExpr102: TQRExpr;
    QRExpr103: TQRExpr;
    QRExpr104: TQRExpr;
    QRExpr106: TQRExpr;
    QRExpr107: TQRExpr;
    QRExpr108: TQRExpr;
    QRExpr109: TQRExpr;
    QRExpr110: TQRExpr;
    QRExpr111: TQRExpr;
    QRExpr112: TQRExpr;
    QRExpr113: TQRExpr;
    QRExpr114: TQRExpr;
    QRExpr115: TQRExpr;
    QRLabel25: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRShape90: TQRShape;
    QRDBText7: TQRDBText;
    QRExpr116: TQRExpr;
    QRShape91: TQRShape;
    QRExpr117: TQRExpr;
    QRExpr118: TQRExpr;
    QRShape92: TQRShape;
    QRShape93: TQRShape;
    QRShape94: TQRShape;
    QRDBText8: TQRDBText;
    QRLabel62: TQRLabel;
    Imagem: TQRImage;
    qryDadoslinhagem: TStringField;
    qryDadosqtd_ovo_20_1: TIntegerField;
    QRDBText11: TQRDBText;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr29: TQRExpr;
    QRExpr30: TQRExpr;
    QRExpr32: TQRExpr;
    QRExpr33: TQRExpr;
    QRExpr34: TQRExpr;
    QRExpr36: TQRExpr;
    QRExpr37: TQRExpr;
    QRExpr53: TQRExpr;
    QRExpr54: TQRExpr;
    QRExpr58: TQRExpr;
    QRExpr59: TQRExpr;
    QRExpr74: TQRExpr;
    QRExpr76: TQRExpr;
    QRExpr77: TQRExpr;
    QRExpr78: TQRExpr;
    QRExpr79: TQRExpr;
    QRExpr80: TQRExpr;
    QRExpr119: TQRExpr;
    QRExpr120: TQRExpr;
    QRExpr121: TQRExpr;
    QRExpr122: TQRExpr;
    QRDBText22: TQRDBText;
    QRLabel65: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    qryDadossaldo_incubar: TIntegerField;
    QRLabel5: TQRLabel;
    QRShape27: TQRShape;
    QRShape43: TQRShape;
    qryDadoscod_tip: TStringField;
    qryDadospct_aprov: TFloatField;
    QRExpr9: TQRExpr;
    QRShape3: TQRShape;
    QRExpr11: TQRExpr;
    QRExpr17: TQRExpr;
    QRShape4: TQRShape;
    QRExpr18: TQRExpr;
    QRExpr20: TQRExpr;
    QRExpr21: TQRExpr;
    QRExpr23: TQRExpr;
    QRExpr28: TQRExpr;
    QRExpr39: TQRExpr;
    QRShape13: TQRShape;
    QRShape16: TQRShape;
    QRShape41: TQRShape;
    QRExpr40: TQRExpr;
    QRExpr43: TQRExpr;
    QRExpr44: TQRExpr;
    QRExpr45: TQRExpr;
    QRExpr60: TQRExpr;
    QRExpr61: TQRExpr;
    QRExpr63: TQRExpr;
    QRExpr64: TQRExpr;
    QRExpr73: TQRExpr;
    QRShape42: TQRShape;
    QRShape45: TQRShape;
    QRShape48: TQRShape;
    QRShape63: TQRShape;
    QRShape71: TQRShape;
    QRExpr81: TQRExpr;
    QRExpr82: TQRExpr;
    QRShape80: TQRShape;
    QRLabel13: TQRLabel;
    qryDadosnom_digit: TStringField;
    QRDBText12: TQRDBText;
    qryDadoscodigo_lote: TStringField;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    qryDadosincubatorio: TStringField;
    QRLabel10: TQRLabel;
    qryDadosproducao: TIntegerField;
    QRExpr128: TQRExpr;
    QRExpr129: TQRExpr;
    QRLabel6: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel31: TQRLabel;
    qryDadosAPROV_1: TIntegerField;
    QRDBText14: TQRDBText;
    QRExpr55: TQRExpr;
    QRExpr56: TQRExpr;
    QRExpr83: TQRExpr;
    QRExpr92: TQRExpr;
    QRExpr105: TQRExpr;
    QRExpr123: TQRExpr;
    QRExpr124: TQRExpr;
    qryDadosrecebidos: TIntegerField;
    qryDadosdat_digit: TDateTimeField;
    QRDBText24: TQRDBText;
    QRShape95: TQRShape;
    QRShape96: TQRShape;
    QRShape97: TQRShape;
    QRShape98: TQRShape;
    QRShape100: TQRShape;
    QRLabel63: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel64: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
//    procedure dadosBeforePrint(Sender: TQRCustomBand;
//      var PrintBand: Boolean);
//    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
//      var PrintBand: Boolean);
//    procedure TituloResumoBeforePrint(Sender: TQRCustomBand;
//      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Exibe();
  end;

var
  FRelatMapaClassifQRP: TFRelatMapaClassifQRP;

implementation

uses umenu,  funcoes, URelatFiltro;

{$R *.DFM}

procedure TFRelatMapaClassifQRP.Exibe();
var

  vWhere : string;  
  vContador : integer;

begin
   if FRelatMapaClassifQRP = nil
    then FRelatMapaClassifQRP := TFRelatMapaClassifQRP.Create(nil);

   with FRelatMapaClassifQRP do
    begin

        with qryDados do
        begin
            close;

            vWhere := '';
            vLista1 := '';
            vLista :='';
            qryDados.close;

            case FRelatFiltro.RadioGroup1.itemindex of
             0 : begin qryDados.sql.strings[84] := ' CLA.dat_post ';   QRLabel9.Caption  := 'POSTURA: ' + DateToStr(FRelatFiltro.detDat_inicio.Date)+' a '+DateToStr(FRelatFiltro.detDat_final.Date); end;
             1 : begin qryDados.sql.strings[84] := ' CLA.dat_rec ';    QRLabel9.Caption  := 'RECEB. : ' + DateToStr(FRelatFiltro.detDat_inicio.Date)+' a '+DateToStr(FRelatFiltro.detDat_final.Date); end;
             2 : begin qryDados.sql.strings[84] := ' CLA.dat_classif ';QRLabel9.Caption  := 'CLASSIF: ' + DateToStr(FRelatFiltro.detDat_inicio.Date)+' a '+DateToStr(FRelatFiltro.detDat_final.Date); end;
            end;

            qryDados.parambyname('dat_post').asdatetime      := FRelatFiltro.detDat_inicio.date;
            qryDados.parambyname('dat_post_f').asdatetime    := FRelatFiltro.detDat_final.date;
            if FRelatFiltro.edtcod_incub.text <> ''   then  vWhere  := vWhere + ' and cla.cod_inc_depto = :cod_inc_depto ';
            if FRelatFiltro.cedCod_Lote.asinteger > 0 then  vWhere  := vWhere + ' and cla.cod_lote_num = :cod_lote_num ';
            if FRelatFiltro.edtGra.Text <> ''         then  vWhere  := vWhere + ' and edr.Cod_Granja = :Cod_Granja ';
            if FRelatFiltro.edtNroLote.text <> '' then  vWhere      := vWhere + ' and lot.nro_lote = :nro_lote ';
            if FRelatFiltro.edtLF.Text  <> ''         then  vWhere  := vWhere + ' and lot.cod_lf = :cod_lf  ';
            if FRelatFiltro.edtCodOvo.text      <> '' then  vWhere  := vWhere + ' and cla.cod_tip = :cod_tip ';


            if (FRelatFiltro.rdLinhagem.ItemIndex = 0) then
                qryDados.parambyname('parametro').asinteger := 0
            else
                qryDados.parambyname('parametro').asinteger := 1;
                
            for vContador := 0 to FRelatFiltro.chlLocais.Items.Count - 1 do
              if FRelatFiltro.chlLocais.Checked[vContador] then
                 vLista1 :=  vLista1 + ', ''' +   Copy(FRelatFiltro.chlLocais.Items.Strings[vContador], 1, 4)+ '''';
            if vLista1     <> '' then vLista1 :=  Copy(vLista1, 2, length(vLista1));
            if vLista1     <> '' then vWhere  := vWhere + ' and edr.Cod_Local in ('+vLista1+')';
            
            vLista :='';
            for vContador := 0 to FRelatFiltro.chlIdes.Items.Count - 1 do
              if FRelatFiltro.chlIdes.Checked[vContador] then
                  vLista :=  vLista + ', ''' +   Copy(FRelatFiltro.chlIdes.Items.Strings[vContador], 1, 4)+ '''';
            
            if vLista <> '' then vLista :=  Copy(vLista, 2, length(vLista));

            if FRelatFiltro.CheckBox2.checked then
            begin
               if vLista     <> '' then vWhere  := vWhere + ' and IDE.GRUPO_IDE_AVE in ('+vLista+')';
            end
            else
               if vLista     <> '' then vWhere  := vWhere + ' and ide.IDE_AVE in ('+vLista+')';

            qryDados.sql.strings[90] := vWhere;
            
            if FRelatFiltro.edtcod_incub.text <> ''   then qryDados.parambyname('cod_inc_depto').asstring := FRelatFiltro.edtcod_incub.text;
            if FRelatFiltro.cedCod_Lote.asinteger > 0 then qryDados.parambyname('cod_lote_num').asinteger := FRelatFiltro.cedCod_Lote.asinteger;
            if FRelatFiltro.edtGra.Text <> ''         then qryDados.parambyname('Cod_Granja').asstring    := FRelatFiltro.edtGra.Text;
            if FRelatFiltro.edtNroLote.text <> ''     then qryDados.parambyname('nro_lote').asString      := FRelatFiltro.edtNroLote.text;
            if FRelatFiltro.edtLF.Text  <> ''         then qryDados.parambyname('cod_lf').asstring        := FRelatFiltro.edtLF.Text;
            if FRelatFiltro.edtCodOvo.Text  <> ''     then qryDados.parambyname('cod_tip').asstring        := FRelatFiltro.edtCodOvo.Text;
            open;

            if QryDados.RecordCount = 0 then
               begin
                 MessageDlg('Não existem registros para os critérios informados!', mtInformation, [mbOK], 0);
                 Exit;
               end;

        end;


        try Imagem.Picture.LoadFromFile('G:\Avicola\runtime\Versao41\LogoHendrix.bmp'); except end;
        qrpDados.Preview;

    end;
end;


procedure TFRelatMapaClassifQRP.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   qryNomeIncubatorio.close;
   qryNomeIncubatorio.parambyname('cod_inc_depto').asstring := Incubatorio;
   qryNomeIncubatorio.open;
end;

end.

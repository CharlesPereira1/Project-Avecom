unit uRelClassificacaoQRP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, QuickRpt, Qrctrls, StdCtrls;
                      
type
  TFRelClassificacaoQRP = class(TForm)
    qrpDados: TQuickRep;
    qryDados: TQuery;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    GrupoInc: TQRGroup;
    dados: TQRSubDetail;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText14: TQRDBText;
    FimLote: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRBand3: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText23: TQRDBText;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    QRExpr22: TQRExpr;
    QRExpr23: TQRExpr;
    QRExpr24: TQRExpr;
    QRExpr25: TQRExpr;
    QRExpr26: TQRExpr;
    QRExpr27: TQRExpr;
    QRExpr28: TQRExpr;
    QRExpr29: TQRExpr;
    QRExpr30: TQRExpr;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRExpr34: TQRExpr;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    GrupoLin: TQRGroup;
    FimLin: TQRBand;
    QRLabel27: TQRLabel;
    QRExpr35: TQRExpr;
    QRExpr36: TQRExpr;
    QRExpr37: TQRExpr;
    QRExpr38: TQRExpr;
    QRExpr39: TQRExpr;
    QRExpr41: TQRExpr;
    QRExpr42: TQRExpr;
    QRExpr43: TQRExpr;
    QRExpr44: TQRExpr;
    QRExpr45: TQRExpr;
    QRExpr46: TQRExpr;
    QRExpr47: TQRExpr;
    QRExpr48: TQRExpr;
    QRExpr49: TQRExpr;
    QRDBText2: TQRDBText;
    QRDBText24: TQRDBText;
    Imagem: TQRImage;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    GrupoLote: TQRGroup;
    QRDBText1: TQRDBText;
    QRDBText26: TQRDBText;
    FimInc: TQRBand;
    QRLabel28: TQRLabel;
    QRDBText25: TQRDBText;
    QRExpr52: TQRExpr;
    QRExpr53: TQRExpr;
    QRExpr54: TQRExpr;
    QRExpr55: TQRExpr;
    QRExpr56: TQRExpr;
    QRExpr58: TQRExpr;
    QRExpr59: TQRExpr;
    QRExpr60: TQRExpr;
    QRExpr61: TQRExpr;
    QRExpr62: TQRExpr;
    QRExpr63: TQRExpr;
    QRExpr64: TQRExpr;
    QRExpr65: TQRExpr;
    QRExpr66: TQRExpr;
    QRShape1: TQRShape;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel31: TQRLabel;
    QRDBText27: TQRDBText;
    qrlFiltro: TQRLabel;
    QRLabel32: TQRLabel;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    qryDadosnome: TStringField;
    qryDadoscod_lote_num: TIntegerField;
    qryDadoside_ave: TStringField;
    qryDadosdat_classif: TDateTimeField;
    qryDadosnom_digit: TStringField;
    qryDadosdat_post: TDateTimeField;
    qryDadoscod_tip: TStringField;
    qryDadosT1: TIntegerField;
    qryDadosT2: TIntegerField;
    qryDadosT3: TIntegerField;
    qryDadosT4: TIntegerField;
    qryDadosSUP: TIntegerField;
    qryDadosPEQ: TIntegerField;
    qryDadosTRI: TIntegerField;
    qryDadosDEFEIT: TIntegerField;
    qryDadosSUJ: TIntegerField;
    qryDadosPIN: TIntegerField;
    qryDadosCOR: TIntegerField;
    qryDadosQUE: TIntegerField;
    qryDadosREAP: TIntegerField;
    qryDadosVENDA: TIntegerField;
    qryDadosEXAME: TIntegerField;
    qryDadosACI: TIntegerField;
    qryDadostotal: TIntegerField;
    qryDadoslinhagem: TStringField;
    qryDadoscodigo_lote: TStringField;
    qryDadosidade: TSmallintField;
    QRLabel12: TQRLabel;
    QRDBText8: TQRDBText;
    qryDadosdat_digit: TDateTimeField;
    qryDadoshor_classif: TDateTimeField;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Exibe();
  end;

var
  FRelClassificacaoQRP: TFRelClassificacaoQRP;

implementation

uses URelatFiltro;

{$R *.DFM}

procedure TFRelClassificacaoQRP.Exibe();
var
  vWhere : string;  
  vContador : integer;
begin
   if FRelClassificacaoQRP = nil
    then FRelClassificacaoQRP := TFRelClassificacaoQRP.Create(nil);
    
   with FRelClassificacaoQRP do
    begin
       vWhere := '';
       vLista1 := '';
       vLista :='';
       qryDados.close;

            case FRelatFiltro.RadioGroup1.itemindex of
             0 : begin qryDados.sql.strings[34] := ' and C.dat_post ';    qrlFiltro.Caption  := 'POSTURA: ' + DateToStr(FRelatFiltro.detDat_inicio.Date)+' a '+DateToStr(FRelatFiltro.detDat_final.Date); end;
             1 : begin qryDados.sql.strings[34] := ' and C.dat_rec ';     qrlFiltro.Caption  := 'RECEBIMENTO : ' + DateToStr(FRelatFiltro.detDat_inicio.Date)+' a '+DateToStr(FRelatFiltro.detDat_final.Date); end;
             2 : begin qryDados.sql.strings[34] := ' and C.dat_classif '; qrlFiltro.Caption  := 'CLASSIFICAÇÃO: ' + DateToStr(FRelatFiltro.detDat_inicio.Date)+' a '+DateToStr(FRelatFiltro.detDat_final.Date); end;
            end;

       qryDados.parambyname('inicio').asdatetime := FRelatFiltro.detDat_inicio.date;
       qryDados.parambyname('fim').asdatetime    := FRelatFiltro.detDat_final.date;

       if FRelatFiltro.edtcod_incub.text <> ''   then  vWhere  := vWhere + ' and c.cod_inc_depto = :cod_inc_depto ';
       if FRelatFiltro.cedCod_Lote.asinteger > 0 then  vWhere  := vWhere + ' and c.cod_lote_num = :cod_lote_num ';
       if FRelatFiltro.edtGra.Text <> ''         then  vWhere  := vWhere + ' and e.Cod_Granja = :Cod_Granja ';
       if FRelatFiltro.edtLF.Text  <> ''         then  vWhere  := vWhere + ' and lt.cod_lf = :cod_lf  ';
       if FRelatFiltro.edtCodOvo.text      <> '' then  vWhere  := vWhere + ' and c.cod_tip = :cod_tip ';
       for vContador := 0 to FRelatFiltro.chlLocais.Items.Count - 1 do
         if FRelatFiltro.chlLocais.Checked[vContador] then
            vLista1 :=  vLista1 + ', ''' +   Copy(FRelatFiltro.chlLocais.Items.Strings[vContador], 1, 4)+ '''';
       if vLista1     <> '' then vLista1 :=  Copy(vLista1, 2, length(vLista1));
       if vLista1     <> '' then vWhere  := vWhere + ' and e.Cod_Local in ('+vLista1+')';

       vLista :='';
       for vContador := 0 to FRelatFiltro.chlIdes.Items.Count - 1 do
         if FRelatFiltro.chlIdes.Checked[vContador] then
             vLista :=  vLista + ', ''' +   Copy(FRelatFiltro.chlIdes.Items.Strings[vContador], 1, 4)+ '''';

       if vLista <> '' then vLista :=  Copy(vLista, 2, length(vLista));

       if (FRelatFiltro.rdLinhagem.ItemIndex = 0) then
                qryDados.parambyname('parametro').asinteger := 0
       else
                qryDados.parambyname('parametro').asinteger := 1;

       if FRelatFiltro.CheckBox2.checked then
       begin
          if vLista     <> '' then vWhere  := vWhere + ' and IDE.GRUPO_IDE_AVE in ('+vLista+')';
       end
       else
          if vLista     <> '' then vWhere  := vWhere + ' and IDE.IDE_AVE in ('+vLista+')';


       qryDados.sql.strings[41] := vWhere;

       if FRelatFiltro.edtcod_incub.text <> ''   then qryDados.parambyname('cod_inc_depto').asstring := FRelatFiltro.edtcod_incub.text;
       if FRelatFiltro.cedCod_Lote.asinteger > 0 then qryDados.parambyname('cod_lote_num').asinteger := FRelatFiltro.cedCod_Lote.asinteger;
       if FRelatFiltro.edtGra.Text <> ''         then qryDados.parambyname('Cod_Granja').asstring    := FRelatFiltro.edtGra.Text;
       if FRelatFiltro.edtLF.Text  <> ''         then qryDados.parambyname('cod_lf').asstring        := FRelatFiltro.edtLF.Text;
       if FRelatFiltro.edtCodOvo.Text  <> ''     then qryDados.parambyname('cod_tip').asstring        := FRelatFiltro.edtCodOvo.Text;
       qryDados.open;

      // qrlFiltro.caption := 'Período: '+formatdatetime('dd/mm/yyyy',FRelatFiltro.detDat_Inicio.date  )+ ' a '+formatdatetime('dd/mm/yyyy',FRelatFiltro.detDat_Final.date  );


       try Imagem.Picture.LoadFromFile('G:\Avicola\runtime\Versao41\LogoHendrix.bmp'); except end;

       qrpDados.Preview;

    end;
end;


end.

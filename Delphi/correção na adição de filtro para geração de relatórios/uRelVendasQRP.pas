unit uRelVendasQRP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, QuickRpt, Qrctrls, StdCtrls;
                      
type
  TFRelVendasQRP = class(TForm)
    qrpDados: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel15: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel12: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    qryDados: TQuery;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRImage1: TQRImage;
    QRShape5: TQRShape;
    QRLabel20: TQRLabel;
    QRShape9: TQRShape;
    QRShape13: TQRShape;
    QRShape23: TQRShape;
    qryDadosCOD_INC_DEPTO: TStringField;
    qryDadosDAT_POST: TDateTimeField;
    qryDadosCOD_OVO: TStringField;
    qryDadosDAT_SAIDA: TDateTimeField;
    qryDadosCOD_SAIDA_OVO_CLA: TStringField;
    qryDadosCOD_LOTE_NUM: TIntegerField;
    qryDadosHOR_SAIDA: TDateTimeField;
    qryDadosCOD_CLIENTE: TStringField;
    qryDadosidade: TSmallintField;
    qryDadosqtd_ovo: TIntegerField;
    qryDadosNOM_DIGIT: TStringField;
    qryDadoscod_resp: TIntegerField;
    qryDadosnome: TStringField;
    qryDadosestado: TStringField;
    qryDadoscidade: TStringField;
    qryDadosendereco: TStringField;
    qryDadosCOD_LM: TStringField;
    qryDadosCOD_LF: TStringField;
    qryDadosnro_lote: TStringField;
    qryDadoscod_pedido: TIntegerField;
    qryDadosnro_sequencia: TIntegerField;
    qryDadosgta: TIntegerField;
    dados: TQRSubDetail;
    FimCabeca: TQRBand;
    Cabeca: TQRGroup;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    FimCab2: TQRBand;
    QRLabel13: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel14: TQRLabel;
    QRExpr2: TQRExpr;
    QRBand3: TQRBand;
    QRLabel22: TQRLabel;
    QRExpr3: TQRExpr;
    QRLabel3: TQRLabel;
    qryDadosobs_pedido: TStringField;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel7: TQRLabel;
    qryDadosgranja: TStringField;
    QRLabel11: TQRLabel;
    cabeca2: TQRGroup;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel21: TQRLabel;
    QRLabel23: TQRLabel;
    qryDadosNF: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Exibe();
  end;

var
  FRelVendasQRP: TFRelVendasQRP;

implementation

uses URelatFiltro;

{$R *.DFM}

procedure TFRelVendasQRP.Exibe();
var
  vWhere : string;
  vContador : integer;
begin
   if FRelVendasQRP = nil
    then FRelVendasQRP := TFRelVendasQRP.Create(nil);

   with FRelVendasQRP do
    begin
              vWhere := '';
       vLista1 := '';
       vLista :='';
       qryDados.close;
       qryDados.parambyname('inicio').asdatetime := FRelatFiltro.detDat_inicio.date;
       qryDados.parambyname('fim').asdatetime    := FRelatFiltro.detDat_final.date;

       if FRelatFiltro.EDTCODOVO.text <> ''   then  vWhere  := vWhere + ' and ((TOV.cod_tip = :cod_ovo) OR (TOV.COD_OVO =:COD_OVO)) ';

       if FRelatFiltro.edtcod_incub.text <> ''   then  vWhere  := vWhere + ' and CIFSSOC1.cod_inc_depto = :cod_inc_depto ';
       if FRelatFiltro.cedCod_Lote.asinteger > 0 then  vWhere  := vWhere + ' and CIFSSOC1.cod_lote_num = :cod_lote_num ';
       if FRelatFiltro.edtGra.Text <> ''         then  vWhere  := vWhere + ' and AVFVEND.Cod_Granja = :Cod_Granja ';
       if FRelatFiltro.edtNroLote.text <> '' then  vWhere  := vWhere + ' and AVFVLOT.nro_lote = :nro_lote ';
       if FRelatFiltro.edtLF.Text  <> ''         then  vWhere  := vWhere + ' and AVFVLOT.cod_lf = :cod_lf  ';
       if FRelatFiltro.CurrencyEdit1.asinteger <> 0 then vWhere  := vWhere + ' and CIFSSOC1.observacao=:nf ';

       if FRelatFiltro.CurrencyEdit2.asinteger <> 0 then vWhere  := vWhere + ' and CIFSSOC1.cod_pedido= '+FRelatFiltro.CurrencyEdit2.text ;


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
       if vLista1     <> '' then vWhere  := vWhere + ' and AVFVEND.Cod_Local in ('+vLista1+')';

       case FRelatFiltro.rdgOvos.ItemIndex of
        0: vWhere := vWhere + ' and CIFSSOC1.COD_OVO  = ''VEN'' ';
        1: vWhere := vWhere + ' and CIFSSOC1.COD_OVO <> ''VEN'' ';
       end;

       FRelVendasQRP.QRLabel23.Caption := FRelatFiltro.rdgOvos.items[FRelatFiltro.rdgOvos.ItemIndex];

       qryDados.sql.strings[40] := vWhere;

       if FRelatFiltro.EDTCODOVO.text <> ''      then qryDados.parambyname('cod_ovo').asstring := FRelatFiltro.EDTCODOVO.text;
       if FRelatFiltro.edtcod_incub.text <> ''   then qryDados.parambyname('cod_inc_depto').asstring := FRelatFiltro.edtcod_incub.text;
       if FRelatFiltro.cedCod_Lote.asinteger > 0 then qryDados.parambyname('cod_lote_num').asinteger := FRelatFiltro.cedCod_Lote.asinteger;
       if FRelatFiltro.edtGra.Text <> ''         then qryDados.parambyname('Cod_Granja').asstring    := FRelatFiltro.edtGra.Text;
       if FRelatFiltro.edtNroLote.text <> ''     then qryDados.parambyname('nro_lote').asString      := FRelatFiltro.edtNroLote.text;
       if FRelatFiltro.edtLF.Text  <> ''         then qryDados.parambyname('cod_lf').asstring        := FRelatFiltro.edtLF.Text;
       if FRelatFiltro.CurrencyEdit1.asinteger <> 0 then  qryDados.parambyname('nf').asstring        :=  FRelatFiltro.CurrencyEdit1.text;

       qryDados.open;
       
       if QryDados.RecordCount = 0 then
          begin
            MessageDlg('Não existem registros para os critérios informados!', mtInformation, [mbOK], 0);
            Exit;
          end;

       QRLabel9.Caption  := datetostr(FRelatFiltro.detDat_Inicio.Date);
       QRLabel19.Caption := datetostr(FRelatFiltro.detDat_Final.Date);

       TRY QRImage1.Picture.LoadFromFile('G:\Avicola\runtime\Versao41\LogoHendrix.bmp'); EXCEPT END;
       qrpDados.Preview;

    end;
end;


end.

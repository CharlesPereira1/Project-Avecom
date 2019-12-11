unit uRelRecebimentoQRP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, QuickRpt, Qrctrls, StdCtrls;

type
  TFRelRecebimentoQRP = class(TForm)
    qrpDados: TQuickRep;
    qryDados: TQuery;
    qryDadoside_ave: TStringField;
    qryDadosnro_lote: TStringField;
    qryDadoscod_lf: TStringField;
    qryDadosdes_abrev: TStringField;
    qryDadoscod_granja: TStringField;
    qryDadoscod_lote_num: TIntegerField;
    qryDadosdat_post: TDateTimeField;
    qryDadoscod_tip: TStringField;
    qryDadosdat_rec: TDateTimeField;
    qryDadosidade: TSmallintField;
    qryDadosrecebidos: TIntegerField;
    qryDadosperdidos: TIntegerField;
    qryDadosproducao: TIntegerField;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    Granja: TQRGroup;
    dados: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    FimGranja: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel13: TQRLabel;
    QRBand3: TQRBand;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRLabel14: TQRLabel;
    qryDadoscod_inc_depto_orig: TStringField;
    QRLabel15: TQRLabel;
    QRSysData2: TQRSysData;
    qryDadosNRO_NF: TIntegerField;
    QRDBText16: TQRDBText;
    QRLabel16: TQRLabel;
    qryDadosGTA: TIntegerField;
    QRDBText17: TQRDBText;
    QRLabel17: TQRLabel;
    Imagem: TQRImage;
    QRShape1: TQRShape;
    QRLabel26: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel25: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    qryDadosnom_digit: TStringField;
    QRDBText5: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText15: TQRDBText;
    qrlPeriodo: TQRLabel;
    qrlOvo: TQRLabel;
    Lote: TQRGroup;
    FimLote: TQRBand;
    QRLabel19: TQRLabel;
    QRDBText18: TQRDBText;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    qrlGranja: TQRLabel;
    qrlIncubatorio: TQRLabel;
    qryDadoscod_lm: TStringField;
    qryDadoscodigo_lote: TStringField;
    qryDadosnome: TStringField;
    qryDadosdat_digit: TDateTimeField;
    QRDBText19: TQRDBText;
    QRLabel20: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Exibe();
  end;

var
  FRelRecebimentoQRP: TFRelRecebimentoQRP;

implementation

uses URelatFiltro;

{$R *.DFM}

procedure TFRelRecebimentoQRP.Exibe();
var
  vWhere : string;
  vContador : integer;
begin
   if FRelRecebimentoQRP = nil
    then FRelRecebimentoQRP := TFRelRecebimentoQRP.Create(nil);

   with FRelRecebimentoQRP do
    begin
       qryDados.close;

       vWhere := '';
       if FRelatFiltro.RadioGroup2.ItemIndex = 0 then
       begin
           qryDados.SQL.strings[28] :=  vWhere + ' and d.dat_post between :inicio  and :fim ';
       end
       else if FRelatFiltro.RadioGroup2.ItemIndex = 1 then
       begin
           qryDados.SQL.strings[28] :=  vWhere + ' and d.dat_rec between :inicio  and :fim ';
       end;

       qryDados.parambyname('inicio').asdatetime := FRelatFiltro.detDat_inicio.date;
       qryDados.parambyname('fim').asdatetime    := FRelatFiltro.detDat_final.date;
       vWhere := '';
       vLista1 := '';
       vLista :='';

       if (FRelatFiltro.rdLinhagem.ItemIndex = 0) then
                qryDados.parambyname('parametro').asinteger := 0
       else
                qryDados.parambyname('parametro').asinteger := 1;

       if FRelatFiltro.Edit1.text         <> ''  then  vWhere  := vWhere + ' and d.cod_inc_depto_orig = :cod_inc_depto_orig ';
       if FRelatFiltro.edtCodOvo.text      <> '' then  vWhere  := vWhere + ' and d.cod_tip = :cod_tip ';

       if FRelatFiltro.edtcod_incub.text <> ''   then  vWhere  := vWhere + ' and d.cod_inc_depto = :cod_inc_depto ';
       if FRelatFiltro.cedCod_Lote.asinteger > 0 then  vWhere  := vWhere + ' and d.cod_lote_num = :cod_lote_num ';
       if FRelatFiltro.edtGra.Text <> ''         then  vWhere  := vWhere + ' and e.Cod_Granja = :Cod_Granja ';
       if FRelatFiltro.edtLF.Text  <> ''         then  vWhere  := vWhere + ' and l.cod_lf = :cod_lf  ';
       for vContador := 0 to FRelatFiltro.chlLocais.Items.Count - 1 do
         if FRelatFiltro.chlLocais.Checked[vContador] then
            vLista1 :=  vLista1 + ', ''' +   Copy(FRelatFiltro.chlLocais.Items.Strings[vContador], 1, 4)+ '''';
       if vLista1 <> '' then vLista1 :=  Copy(vLista1, 2, length(vLista1));
       if vLista1     <> ''         then vWhere  := vWhere + ' and e.Cod_Local in ('+vLista1+')';

       vLista := '';
       for vContador := 0 to FRelatFiltro.chlIdes.Items.Count - 1 do
         if FRelatFiltro.chlIdes.Checked[vContador] then
             vLista :=  vLista + ', ''' +   Copy(FRelatFiltro.chlIdes.Items.Strings[vContador], 1, 4)+ '''';

       if vLista <> '' then vLista :=  Copy(vLista, 2, length(vLista));

       if FRelatFiltro.CheckBox2.checked then
       begin
          if vLista     <> '' then vWhere  := vWhere + ' and IDE.GRUPO_IDE_AVE in ('+vLista+')';
       end
       else
          if vLista     <> '' then vWhere  := vWhere + ' and IDE.IDE_AVE in ('+vLista+')';

       if FRelatFiltro.CurrencyEdit1.asinteger         <> 0  then
          vWhere  := vWhere + ' and R.NRO_NF = :NRO_NF ';

       qryDados.sql.strings[37] := vWhere;

       if FRelatFiltro.edtcod_incub.text <> ''   then qryDados.parambyname('cod_inc_depto').asstring := FRelatFiltro.edtcod_incub.text;
       if FRelatFiltro.Edit1.text        <> ''   then qryDados.parambyname('cod_inc_depto_orig').asstring := FRelatFiltro.Edit1.text;

       if FRelatFiltro.cedCod_Lote.asinteger > 0 then qryDados.parambyname('cod_lote_num').asinteger := FRelatFiltro.cedCod_Lote.asinteger;
       if FRelatFiltro.edtGra.Text <> ''         then qryDados.parambyname('Cod_Granja').asstring    := FRelatFiltro.edtGra.Text;
       if FRelatFiltro.edtLF.Text  <> ''         then qryDados.parambyname('cod_lf').asstring        := FRelatFiltro.edtLF.Text;
       if FRelatFiltro.edtCodOvo.Text  <> ''     then qryDados.parambyname('cod_tip').asstring        := FRelatFiltro.edtCodOvo.Text;
       if FRelatFiltro.CurrencyEdit1.asinteger         <> 0  then qryDados.parambyname('NRO_NF').asinteger := FRelatFiltro.CurrencyEdit1.asinteger;

       qryDados.open;
       if QryDados.RecordCount = 0 then
          begin
            MessageDlg('Não existem registros para os critérios informados!', mtInformation, [mbOK], 0);
            Exit;
          end;

       try Imagem.Picture.LoadFromFile('G:\Avicola\runtime\Versao41\LogoHendrix.bmp'); except end;

       if FRelatFiltro.RadioGroup2.ItemIndex = 0 then
          qrlPeriodo.caption := 'Produção - Período: ' + formatdatetime('dd/mm/yyyy', FRelatFiltro.detDat_inicio.date) + ' a ' + formatdatetime('dd/mm/yyyy', FRelatFiltro.detDat_final.date);
       if FRelatFiltro.RadioGroup2.ItemIndex = 1 then
          qrlPeriodo.caption := 'Recebimento - Período: ' + formatdatetime('dd/mm/yyyy', FRelatFiltro.detDat_inicio.date) + ' a ' + formatdatetime('dd/mm/yyyy', FRelatFiltro.detDat_final.date);


       if FRelatFiltro.edtCodOvo.Text = '' then
          qrlOvo.caption := 'Tipo de Ovo: TODOS'
       else
          qrlOvo.caption := 'Tipo de Ovo: ' + FRelatFiltro.edtCodOvo.Text;

       if FRelatFiltro.edtGra.Text = '' then
          qrlGranja.caption := 'Granja: TODAS'
       else
          qrlGranja.caption := 'Granja: ' + FRelatFiltro.dlcGranja.Text;

       if FRelatFiltro.edtCod_Incub.Text = '' then
          qrlIncubatorio.caption := 'Incubatório: TODOS'
       else
          qrlIncubatorio.caption := 'Incubatório: ' + FRelatFiltro.dlcIncubatorio.Text;

    end;

   qrpDados.Preview;
end;


end.

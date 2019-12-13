unit uRelSaldoOvosNClaCla;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, QuickRpt, Qrctrls, StdCtrls;
                      
type
  TFRelSaldoOvosNClaCla = class(TForm)
    qrpDados: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
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
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    qryDados: TQuery;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRImage1: TQRImage;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel20: TQRLabel;
    QRDBText2: TQRDBText;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape28: TQRShape;
    QRShape42: TQRShape;
    QRLabel21: TQRLabel;
    QRDBText9: TQRDBText;
    QRShape43: TQRShape;
    QRDBText13: TQRDBText;
    FimLinhagem: TQRBand;
    QRShape45: TQRShape;
    QRExpr10: TQRExpr;
    QRLabel22: TQRLabel;
    QRDBText14: TQRDBText;
    QRShape13: TQRShape;
    QRLabel26: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel25: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel2: TQRLabel;
    qryDadosCOD_INC_DEPTO: TStringField;
    qryDadosCOD_LOTE_NUM: TIntegerField;
    qryDadosDAT_POST: TDateTimeField;
    qryDadosidade: TSmallintField;
    qryDadosovo: TStringField;
    qryDadossaldo: TIntegerField;
    qryDadosestocagem: TIntegerField;
    qryDadoscodigo_lote: TStringField;
    QRExpr1: TQRExpr;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Exibe();
  end;

var
  FRelSaldoOvosNClaCla: TFRelSaldoOvosNClaCla;

implementation

uses URelatFiltro;

{$R *.DFM}

procedure TFRelSaldoOvosNClaCla.Exibe();
var
  vWhere : string;
  vContador : integer;
begin
   if FRelSaldoOvosNClaCla = nil
    then FRelSaldoOvosNClaCla := TFRelSaldoOvosNClaCla.Create(nil);

   with FRelSaldoOvosNClaCla do
    begin
              vWhere := '';
       vLista1 := '';
       vLista :='';
       qryDados.close;
       qryDados.parambyname('inicio').asdatetime := FRelatFiltro.detDat_inicio.date;
       qryDados.parambyname('fim').asdatetime    := FRelatFiltro.detDat_final.date;
       if (FRelatFiltro.rdLinhagem.ItemIndex = 0) then
                qryDados.parambyname('parametro').asinteger := 0
       else
                qryDados.parambyname('parametro').asinteger := 1;
       if FRelatFiltro.edtcod_incub.text <> ''   then  vWhere  := vWhere + ' and TB.cod_inc_depto = :cod_inc_depto ';
       if FRelatFiltro.cedCod_Lote.asinteger > 0 then  vWhere  := vWhere + ' and TB.cod_lote_num = :cod_lote_num ';
       if FRelatFiltro.edtGra.Text <> ''         then  vWhere  := vWhere + ' and edr.Cod_Granja = :Cod_Granja ';
       if FRelatFiltro.edtLF.Text  <> ''         then  vWhere  := vWhere + ' and l.cod_lf = :cod_lf  ';
       if FRelatFiltro.EDTCODOVO.Text  <> ''         then  vWhere  := vWhere + ' and TB.COD_OVO =:cod_ovo  ';

       for vContador := 0 to FRelatFiltro.chlIdes.Items.Count - 1 do
         if FRelatFiltro.chlIdes.Checked[vContador] then
            vLista1 :=  vLista1 + ', ''' +   Copy(FRelatFiltro.chlIdes.Items.Strings[vContador], 1, 4)+ '''';
       if vLista1     <> '' then vLista1 :=  Copy(vLista1, 2, length(vLista1));

       if vLista1     <> '' then vWhere  := vWhere + ' and l.IDE_AVE in ('+vLista1+')';

       vLista1 := '';
       for vContador := 0 to FRelatFiltro.chlLocais.Items.Count - 1 do
         if FRelatFiltro.chlLocais.Checked[vContador] then
            vLista1 :=  vLista1 + ', ''' +   Copy(FRelatFiltro.chlLocais.Items.Strings[vContador], 1, 4)+ '''';

       if vLista1     <> '' then vLista1 :=  Copy(vLista1, 2, length(vLista1));
       if vLista1     <> '' then vWhere  := vWhere + ' and edr.Cod_Local in ('+vLista1+')';


       qryDados.sql.strings[31] := vWhere;

       if FRelatFiltro.edtcod_incub.text <> ''   then qryDados.parambyname('cod_inc_depto').asstring := FRelatFiltro.edtcod_incub.text;
       if FRelatFiltro.cedCod_Lote.asinteger > 0 then qryDados.parambyname('cod_lote_num').asinteger := FRelatFiltro.cedCod_Lote.asinteger;
       if FRelatFiltro.edtGra.Text <> ''         then qryDados.parambyname('Cod_Granja').asstring    := FRelatFiltro.edtGra.Text;
       if FRelatFiltro.edtLF.Text  <> ''         then qryDados.parambyname('cod_lf').asstring        := FRelatFiltro.edtLF.Text;
       if FRelatFiltro.EDTCODOVO.Text  <> ''     then qryDados.parambyname('cod_ovo').asstring := FRelatFiltro.EDTCODOVO.Text;

       qryDados.open;

       if QryDados.RecordCount = 0 then
          begin
            MessageDlg('Não existem registros para os critérios informados!', mtInformation, [mbOK], 0);
            Exit;
          end;

       QRLabel9.Caption  := datetostr(FRelatFiltro.detDat_Inicio.Date);
       QRLabel19.Caption := datetostr(FRelatFiltro.detDat_Final.Date);

       try QRImage1.Picture.LoadFromFile('G:\Avicola\runtime\Versao41\LogoHendrix.bmp'); except end;
       qrpDados.Preview;

    end;
end;


end.

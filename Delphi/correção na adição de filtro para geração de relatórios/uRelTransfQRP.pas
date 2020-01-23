unit uRelTransfQRP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, QuickRpt, Qrctrls, StdCtrls;
                 
type
  TFRelTransfQRP = class(TForm)
    qrpDados: TQuickRep;
    qryDados: TQuery;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    dados: TQRSubDetail;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRBand3: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRSysData2: TQRSysData;
    qrlFiltro: TLabel;
    qryDadoside_ave: TStringField;
    qryDadosOrigem: TStringField;
    qryDadoscod_inc_depto_dest: TStringField;
    qryDadosdat_transf: TDateTimeField;
    qryDadoscod_lote_num: TIntegerField;
    qryDadosnro_nt: TIntegerField;
    qryDadosidade: TIntegerField;
    qryDadosdat_post: TDateTimeField;
    qryDadoscod_tip: TStringField;
    qryDadosqtd_transf: TIntegerField;
    QRLabel16: TQRLabel;
    QRExpr1: TQRExpr;
    qryDadosdes_abrev: TStringField;
    qryDadosGTA: TIntegerField;
    QRLabel13: TQRLabel;
    GrupoNF: TQRGroup;
    GrupoGTA: TQRGroup;
    GrupoTipoOvo: TQRGroup;
    GrupoAve: TQRGroup;
    GrupoReduzido: TQRGroup;
    FimReduz: TQRBand;
    QRExpr5: TQRExpr;
    QRLabel19: TQRLabel;
    FimAve: TQRBand;
    QRExpr6: TQRExpr;
    QRLabel20: TQRLabel;
    FimTipOvo: TQRBand;
    QRExpr7: TQRExpr;
    QRLabel21: TQRLabel;
    FimGTA: TQRBand;
    QRExpr8: TQRExpr;
    QRLabel22: TQRLabel;
    FimNF: TQRBand;
    QRExpr9: TQRExpr;
    QRLabel23: TQRLabel;
    QRShape1: TQRShape;
    QRDBText7: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText11: TQRDBText;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    qryDadosrecebidos: TIntegerField;
    QRShape8: TQRShape;
    QRDBText1: TQRDBText;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRLabel10: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    Imagem: TQRImage;
    procedure dadosBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Exibe();
  end;

var
  FRelTransfQRP: TFRelTransfQRP;

implementation

uses URelatFiltro;

{$R *.DFM}


//migrar
procedure TFRelTransfQRP.Exibe();
var
  vWhere : string;    
  vContador : integer;
begin
   if FRelTransfQRP = nil
    then FRelTransfQRP := TFRelTransfQRP.Create(nil);

   with FRelTransfQRP do
    begin
       qryDados.close;
       qryDados.parambyname('inicio').asdatetime := FRelatFiltro.detDat_inicio.date;
       qryDados.parambyname('fim').asdatetime    := FRelatFiltro.detDat_final.date;
              vWhere := '';
       vLista1 := '';
       vLista :='';
       if FRelatFiltro.CurrencyEdit1.asinteger <> 0           then vWhere   := vWhere + ' and t.nro_nt = :nro_nt ';
       if FRelatFiltro.edtcod_incub.text <> ''   then  vWhere  := vWhere + ' and cod_inc_depto_dest = :cod_inc_depto_dest ';
       if FRelatFiltro.cedCod_Lote.asinteger > 0 then  vWhere  := vWhere + ' and t.cod_lote_num = :cod_lote_num ';
       if FRelatFiltro.edtGra.Text <> ''         then  vWhere  := vWhere + ' and e.Cod_Granja = :Cod_Granja ';
       if FRelatFiltro.edtNroLote.text <> ''     then  vWhere  := vWhere + ' and l.nro_lote = :nro_lote ';
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

       qryDados.sql.strings[72] := vWhere; 
       
       if FRelatFiltro.edtCodOvo.text      <> '' then  vWhere  := vWhere + ' and t.cod_tip = :cod_tip ';
       if FRelatFiltro.Edit1.text         <> ''  then  vWhere  := vWhere + ' and t.cod_inc_depto_orig = :cod_inc_depto_orig ';

       qryDados.sql.strings[37] := vWhere;

       if FRelatFiltro.CurrencyEdit1.asinteger <> 0           then qryDados.parambyname('nro_nt').asinteger      := FRelatFiltro.CurrencyEdit1.asinteger;
       if FRelatFiltro.edtcod_incub.text <> ''   then qryDados.parambyname('cod_inc_depto_dest').asstring := FRelatFiltro.edtcod_incub.text;
       if FRelatFiltro.cedCod_Lote.asinteger > 0 then qryDados.parambyname('cod_lote_num').asinteger      := FRelatFiltro.cedCod_Lote.asinteger;
       if FRelatFiltro.edtGra.Text <> ''         then qryDados.parambyname('Cod_Granja').asstring         := FRelatFiltro.edtGra.Text;
       if FRelatFiltro.edtNroLote.text <> ''     then qryDados.parambyname('nro_lote').asString           := FRelatFiltro.edtNroLote.text;
       if FRelatFiltro.edtLF.Text  <> ''         then qryDados.parambyname('cod_lf').asstring             := FRelatFiltro.edtLF.Text;
       if FRelatFiltro.Edit1.text        <> ''   then qryDados.parambyname('cod_inc_depto_orig').asstring := FRelatFiltro.Edit1.text;
       if FRelatFiltro.edtCodOvo.Text  <> ''     then qryDados.parambyname('cod_tip').asstring        := FRelatFiltro.edtCodOvo.Text;

       qryDados.open;
       try Imagem.Picture.LoadFromFile('G:\Avicola\runtime\Versao41\LogoHendrix.bmp'); except end;
       qrpDados.Preview;

    end;
end;


procedure TFRelTransfQRP.dadosBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   if FRelatFiltro.CheckBox1.checked then
     QRLabel11.caption := qryDados.fieldbyname('des_abrev').asstring
   else
     QRLabel11.caption := '';
end;
          //migrar
end.

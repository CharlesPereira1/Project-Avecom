unit uRelatAcompRetiradaQRP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, QuickRpt, Qrctrls, StdCtrls, RxMemDS;
                      
type
  TFRelatAcompRetiradaQRP = class(TForm)
    qrpDados: TQuickRep;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    dados: TQRSubDetail;
    qryDados: TQuery;
    QRDBText2: TQRDBText;
    qryNormal: TQuery;
    qryComercial: TQuery;
    qryNomeIncubatorio: TQuery;
    qryNomeIncubatorionome: TStringField;
    QRBand1: TQRBand;
    QRLabel15: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel5: TQRLabel;
    QRImage1: TQRImage;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText18: TQRDBText;
    QRBand3: TQRBand;
    QRLabel8: TQRLabel;
    QRShape2: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel39: TQRLabel;
    QRDBText9: TQRDBText;
    QRExpr2: TQRExpr;
    QRExpr8: TQRExpr;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel28: TQRLabel;
    QRDBText11: TQRDBText;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape43: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape57: TQRShape;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRShape68: TQRShape;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRShape79: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText28: TQRDBText;
    QRShape6: TQRShape;
    QRShape86: TQRShape;
    QRLabel46: TQRLabel;
    QRDBText32: TQRDBText;
    qryDadosincubatorio: TStringField;
    qryDadoscod_inc_depto: TStringField;
    qryDadosdat_incub: TDateTimeField;
    qryDadoscod_lote_num: TIntegerField;
    qryDadosidade: TSmallintField;
    qryDadoscod_ovo: TStringField;
    qryDadoscod_sala_inc: TStringField;
    qryDadosind_lado_sala_inc: TStringField;
    qryDadosnro_maq_inc: TSmallintField;
    qryDadoscod_sala_eclo: TStringField;
    qryDadosind_lado_sala_eclo: TStringField;
    qryDadosnro_maq_eclo: TSmallintField;
    qryDadosnro_lote: TStringField;
    qryDadoscod_lm: TStringField;
    qryDadoscod_lf: TStringField;
    qryDadoside_ave: TStringField;
    qryDadosnro_est: TStringField;
    qryDadoside_espec: TStringField;
    qryDadosdat_aloj_inicial: TDateTimeField;
    qryDadosgranja: TStringField;
    qryDadoshor_transf_fim: TDateTimeField;
    qryDadoshor_prev_eclo: TDateTimeField;
    qryDadoshor_incub: TDateTimeField;
    qryDadosqtd_ovo_incub: TIntegerField;
    qryDadospct_eclosao_prev: TFloatField;
    qryDadospct_eclosao_pad: TFloatField;
    qryDadosestocagem: TFloatField;
    qryDadoscodigo_lote: TStringField;
    qryDadosdat_retirada: TDateTimeField;
    qryDadospintos_previstos: TFloatField;
    QRExpr7: TQRExpr;
    QRExpr13: TQRExpr;
    QRLabel9: TQRLabel;
    QRShape4: TQRShape;
    QRShape1: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape7: TQRShape;
    QRLabel16: TQRLabel;
    QRShape8: TQRShape;
    QRLabel21: TQRLabel;
    QRShape9: TQRShape;
    QRShape14: TQRShape;
    QRShape17: TQRShape;
    QRShape20: TQRShape;
    GrupoMaq: TQRGroup;
    FimMaq: TQRBand;
    QRLabel3: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRShape10: TQRShape;
    QRShape18: TQRShape;
    QRLabel4: TQRLabel;
    QRShape19: TQRShape;
    QRShape21: TQRShape;
    QRShape13: TQRShape;
    RxSubTotal: TRxMemoryData;
    RxSubTotalOvoIncub: TIntegerField;
    DataSource1: TDataSource;
    RxSubTotalPintosPrev: TIntegerField;
    RxSubTotalCodOvo: TStringField;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRExpr5: TQRExpr;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure dadosBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Exibe();
  end;

var
  FRelatAcompRetiradaQRP: TFRelatAcompRetiradaQRP;

implementation

uses umenu,URelatAcompRetirada,funcoes;

{$R *.DFM}

procedure TFRelatAcompRetiradaQRP.Exibe();
var
  vWhere : string;
  vContador : integer;
  vLocal    : integer;

  StrSql  : String;
  vLista  : String;
  vLista1 : String;
  vLista2 : String;
  vLista3 : String;


begin
   if FRelatAcompRetiradaQRP = nil
    then FRelatAcompRetiradaQRP := TFRelatAcompRetiradaQRP.Create(nil);

   with FRelatAcompRetiradaQRP do
    begin

       with qryDados do
       begin
          close;

          if (FRelatAcompRetirada.rdLinhagem.ItemIndex = 0) then
                qryDados.parambyname('parametro').asinteger := 0
          else
                qryDados.parambyname('parametro').asinteger := 1;

          if FRelatAcompRetirada.chbVisao.checked then
             qryDados.sql.text := qryComercial.sql.text
          else
             qryDados.sql.text := qryNormal.sql.text;

          // Parâmetros
          parambyname('dat_incub').asdatetime := FRelatAcompRetirada.detDat_Inc.date;
          parambyname('cod_inc_depto').asstring := Incubatorio;


          //Validação do parametro de Linhagem de Femeas
          vWhere := '';

          if FRelatAcompRetirada.edtLF.Text <> '' then
            vWhere := vWhere + ' and lot.cod_lf = :edtLF';

          SQL.strings[80] := vWhere;

          if FRelatAcompRetirada.edtLF.Text <> '' then
            ParamByName('edtLF').AsString := FRelatAcompRetirada.edtLF.Text;

          Open;

       end;

       TRY QRImage1.Picture.LoadFromFile('G:\Avicola\runtime\Versao41\LogoHendrix.bmp'); EXCEPT END;
       RxSubTotal.Close; //certifica que será limpo
       RxSubTotal.Active := true; //abrir a memoria uma vez por relatório
       qrpDados.Preview;

    end;
end;


procedure TFRelatAcompRetiradaQRP.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   qryNomeIncubatorio.close;
   qryNomeIncubatorio.parambyname('cod_inc_depto').asstring := Incubatorio;
   qryNomeIncubatorio.open;
end;


procedure TFRelatAcompRetiradaQRP.dadosBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

  //validação do RX temporário de calculo de T1, T2 e T3;
  if RxSubTotal.Locate('CodOvo', qryDados.fieldByName('cod_ovo').AsString, [loCaseInsensitive]) then
    begin
      RxSubTotal.Edit;
      RxSubTotalOvoIncub.AsInteger := RxSubTotalOvoIncub.AsInteger + qryDados.fieldByName('qtd_ovo_incub').AsInteger;
      RxSubTotalPintosPrev.AsInteger := RxSubTotalPintosPrev.AsInteger + qryDados.fieldByName('pintos_previstos').AsInteger;
    end
    else
    begin
      RxSubTotal.Append;
      RxSubTotalCodOvo.AsString := qrydados.fieldByName('cod_ovo').AsString;
      RxSubTotalOvoIncub.AsInteger := qrydados.fieldByName('qtd_ovo_incub').AsInteger;
      RxSubTotalPintosPrev.AsInteger := qrydados.fieldByName('pintos_previstos').AsInteger;
    end;

    RxSubTotal.Post;

  end;

end.

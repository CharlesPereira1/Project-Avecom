unit uRelRelacaoQRP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, QuickRpt, Qrctrls, StdCtrls, frxpngimage;

type
  TFRelRelacaoQRP = class(TForm)
    qrpDados: TQuickRep;
    qryDados: TQuery;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    CabecaIdeAve: TQRGroup;
    dados: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel15: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBText16: TQRDBText;
    QRDBText18: TQRDBText;
    GrupoLocal: TQRGroup;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel76: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText6: TQRDBText;
    QRImage1: TQRImage;
    qrlFiltro: TQRLabel;
    qryDadosGRUPO_IDE_AVE: TStringField;
    qryDadosIDE_AVE: TStringField;
    qryDadosCOD_LOCAL: TStringField;
    qryDadosCOD_GRANJA: TStringField;
    qryDadosCOD_GRUPO: TStringField;
    qryDadosCOD_GALINHEIRO: TStringField;
    qryDadosNRO_LOTE: TStringField;
    qryDadosCOD_LM: TStringField;
    qryDadosCOD_LF: TStringField;
    qryDadosNRO_EST: TStringField;
    qryDadosCOD_LOTE_NUM: TFloatField;
    qryDadosDAT_ALOJ_INICIAL: TDateTimeField;
    qryDadosIDADE: TSmallintField;
    qryDadosDAT_EFET_DESC: TDateTimeField;
    qryDadosOBS_COMPLEMENTAR: TStringField;
    qryDadosQTDE_FEMEAS_INI: TFloatField;
    qryDadosQTDE_MACHOS_INI: TFloatField;
    qryDadosDES_DETAL: TStringField;
    qryDadosLOCAL: TStringField;
    qryDadosGRANJA: TStringField;
    qryDadosDAT_RECEBIMENTO: TDateTimeField;
    procedure dadosBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure Exibe();
  end;

var
  FRelRelacaoQRP: TFRelRelacaoQRP;

implementation

uses URelatRelacao;

{$R *.DFM}

procedure TFRelRelacaoQRP.Exibe();
var
  StrSql : string;
begin
   if FRelRelacaoQRP = nil
    then FRelRelacaoQRP := TFRelRelacaoQRP.Create(nil);

   with FRelRelacaoQRP do
    begin
       qrlFiltro.caption := 'PERÍODO: ' + DateToStr(FRelatRelacao.detFinda.Date - 6) + ' A ' + DateToStr(FRelatRelacao.detFinda.Date);

       StrSql := '';

       qryDados.close;
       if FRelatRelacao.edtLoc.Text <> ''
        then StrSql := StrSql + ' and edr.Cod_Local = :Cod_Local';
       if FRelatRelacao.edtGra.Text <> ''
         then StrSql := StrSql + ' and edr.Cod_Granja = :Cod_Granja';
       if FRelatRelacao.edtGru.Text <> ''
         then StrSql := StrSql + ' and edr.Cod_Grupo = :Cod_Grupo';
       if FRelatRelacao.edtGal.Text <> ''
         then StrSql := StrSql + ' and edr.Cod_Galinheiro = :Cod_Galinheiro';
       if FRelatRelacao.edtIde.Text <> ''
         then StrSql := StrSql + ' and lot.Ide_Ave = :Ide_Ave';

       case FRelatRelacao.cmbListar.ItemIndex of
         1: StrSql := StrSql + ' and lot.Dat_efet_desc = :Dat_Efet_Desc';
         2: StrSql := StrSql + ' and lot.Dat_efet_desc > :Dat_Efet_Desc';
       end;

       qryDados.sql.strings[45] := StrSql;



       // parametros
       if FRelatRelacao.edtLoc.Text <> ''
         then qryDados.ParamByName('Cod_Local').AsString := FRelatRelacao.edtLoc.Text;
       if FRelatRelacao.edtGra.Text <> ''
         then qryDados.ParamByName('Cod_Granja').AsString := FRelatRelacao.edtGra.Text;
       if FRelatRelacao.edtGru.Text <> ''
         then qryDados.ParamByName('Cod_Grupo').AsString := FRelatRelacao.edtGru.Text;
       if FRelatRelacao.edtGal.Text <> ''
         then qryDados.ParamByName('Cod_Galinheiro').AsString := FRelatRelacao.edtGal.Text;
       if FRelatRelacao.edtIde.Text <> ''
         then qryDados.ParamByName('Ide_Ave').AsString := FRelatRelacao.edtIde.Text;
       


       case FRelatRelacao.cmbListar.ItemIndex of
         1: qryDados.ParamByName('Dat_Efet_Desc').AsDate := StrToDate('01/01/1900');
         2: qryDados.ParamByName('Dat_Efet_Desc').AsDate := StrToDate('01/01/1900');
       end;

       qryDados.ParamByName('Data_Inicio').AsDate := FRelatRelacao.detFinda.Date - 6;
      { qryDados.ParamByName('Data_Fim').AsDate    := FRelatRelacao.detFinda.Date;}

       qryDados.open;
       if qryDados.RecordCount = 0 then
          begin
            MessageDlg('Não existem registros para os critérios informados!', mtInformation, [mbOK], 0);
            Exit;
          end;

       
       qrpDados.Preview;

    end;
end;


procedure TFRelRelacaoQRP.dadosBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   
   QRLabel4.caption := '  ';
   if Qrydados.fieldbyname('dat_efet_desc').asdatetime <> strtodate('01/01/1900') then
     QRLabel4.caption := ' D ';


end;


end.

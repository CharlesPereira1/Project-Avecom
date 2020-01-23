unit URelTesteLotesQRP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, Db, DBTables, ExtCtrls;

type
  TFRelatTesteLoteQRP = class(TForm)
    qrpDados: TQuickRep;
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    qryDados: TQuery;
    qryDadosnro_lote: TStringField;
    qryDadosCOD_REGISTRO: TAutoIncField;
    qryDadosCOD_LOTE_NUM: TIntegerField;
    qryDadosdat_inicio: TDateTimeField;
    qryDadosdat_fim: TDateTimeField;
    qryDadosobs_teste: TStringField;
    qryDadosobs_conclusao: TStringField;
    cabeca: TQRGroup;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRGroup1: TQRGroup;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRBand2: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel11: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape10: TQRShape;
    qryDadosIDADE: TSmallintField;
    QRLabel8: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    qryDadosdata_teste: TDateTimeField;
  private
    { Private declarations }
  public
        procedure exibe();
    { Public declarations }
  end;

var
  FRelatTesteLoteQRP: TFRelatTesteLoteQRP;

implementation

uses URelatTesteLotes;


procedure TFRelatTesteLoteQRP.exibe();
var  StrSql : string;
begin
   if FRelatTesteLoteQRP = nil
    then FRelatTesteLoteQRP := TFRelatTesteLoteQRP.Create(nil);
     with FRelatTesteLoteQRP do
     begin

       qryDados.close;
       //lFiltro.caption :=  'Data: '+formatdatetime('dd/mm/yyy',FRelatTesteLotes.detPesagem.Date)+' a '+formatdatetime('dd/mm/yyy',FRelatTesteLotes.DateEdit1.Date);
         StrSql := '';
         if FRelatTesteLotes.cedCod_Lote_Num.AsInteger > 0 then
         begin
           StrSql := StrSql + ' and l.Cod_Lote_Num = :Cod_Lote_Num ';

         end;

         if FRelatTesteLotes.cmbCod_Linha.itemindex > 0 then
         begin
           StrSql := StrSql + ' and l.cod_linha = :cod_linha ';


         end;

         if FRelatTesteLotes.edtcod_incub.text <> '' then
         begin
             StrSql := StrSql + ' and inc.cod_inc_depto = :cod_inc_depto ';
         end;

         if FRelatTesteLotes.edtLoc.Text <> ''
           then
         begin
           StrSql := StrSql + ' and e.Cod_Local = :Cod_Local ';


         end;

         if FRelatTesteLotes.edtGra.Text <> ''
           then
         begin
           StrSql := StrSql + ' and e.Cod_Granja = :Cod_Granja ';

         end;

         if FRelatTesteLotes.edtGru.Text <> ''
           then
         begin
           StrSql := StrSql + ' and e.Cod_Grupo = :Cod_Grupo ';


         end;

         if FRelatTesteLotes.edtGal.Text <> ''
           then
         begin
           StrSql := StrSql   + ' and e.Cod_Galinheiro = :Cod_Galinheiro ';


         end;

         if FRelatTesteLotes.edtIde.Text <> ''
           then
         begin
           StrSql := StrSql   + ' and l.Ide_Ave = :Ide_Ave ';


         end;

         {if FRelatTesteLotes.detPesagem.Date <> 0
           then
         begin
           StrSql := StrSql + ' and p.dat_movto>=:data ';


         end; }

         if (FRelatTesteLotes.datProd.Date <> 0) and (FRelatTesteLotes.datTeste.Date = 0)
           then
         begin
           StrSql := StrSql + ' and :Data_Prod between d.dat_inicio and d.dat_fim ';
         end
         else if (FRelatTesteLotes.datTeste.Date <> 0) and (FRelatTesteLotes.datProd.Date <> 0)
           then
         begin
           StrSql := StrSql + ' AND TLO.Data_teste = :Data_teste and :Data_Prod between d.dat_inicio and d.dat_fim ';
         end
         else if (FRelatTesteLotes.datProd.Date = 0) and (FRelatTesteLotes.datTeste.Date <> 0)
           then
         begin
           StrSql := StrSql + ' AND TLO.Data_teste = :Data_teste and :Data_teste between d.dat_inicio and d.dat_fim ';
         end;


         if FRelatTesteLotes.DateEdit1.Date <> 0  then
         begin
           StrSql := StrSql + ' and p.dat_movto<=:data_f ';


         end;

         if FRelatTesteLotes.edtLote.text <> '' then
         begin
           StrSql := StrSql + ' and l.nro_lote =:nro_lote ';


         end;


         qryDados.SQL.strings[14] := StrSql;


//     parametros


         if FRelatTesteLotes.cedCod_Lote_Num.AsInteger > 0
           then qryDados.ParamByName('Cod_Lote_Num').AsInteger := FRelatTesteLotes.cedCod_Lote_Num.AsInteger;
         if FRelatTesteLotes.edtLoc.Text <> ''
           then qryDados.ParamByName('Cod_Local').AsString := FRelatTesteLotes.edtLoc.Text;
         if FRelatTesteLotes.edtGra.Text <> ''
           then qryDados.ParamByName('Cod_Granja').AsString := FRelatTesteLotes.edtGra.Text;
         if FRelatTesteLotes.edtGru.Text <> ''
           then qryDados.ParamByName('Cod_Grupo').AsString := FRelatTesteLotes.edtGru.Text;
         if FRelatTesteLotes.edtGal.Text <> ''
           then qryDados.ParamByName('Cod_Galinheiro').AsString := FRelatTesteLotes.edtGal.Text;
         if FRelatTesteLotes.edtIde.Text <> ''
           then qryDados.ParamByName('Ide_Ave').AsString := FRelatTesteLotes.edtIde.Text;
         if FRelatTesteLotes.cmbCod_Linha.itemindex > 0 then
          qryDados.ParamByName('cod_linha').AsString := FRelatTesteLotes.cmbCod_Linha.Text;

         {if FRelatTesteLotes.detPesagem.Date <> 0
           then qryDados.ParamByName('Data').AsDate := FRelatTesteLotes.detPesagem.Date;}

         if FRelatTesteLotes.datProd.Date <> 0
           then qryDados.ParamByName('Data_Prod').AsDate := FRelatTesteLotes.datProd.Date;
         if FRelatTesteLotes.datTeste.Date <> 0
           then qryDados.ParamByName('Data_Teste').AsDate := FRelatTesteLotes.datTeste.Date;

         if FRelatTesteLotes.DateEdit1.Date <> 0
           then qryDados.ParamByName('Data_f').AsDate := FRelatTesteLotes.DateEdit1.Date;
         if FRelatTesteLotes.edtLote.text <> ''
           then qryDados.ParamByName('nro_lote').AsString := FRelatTesteLotes.edtLote.Text;
         if FRelatTesteLotes.edtcod_incub.text <> ''
           then qryDados.ParamByName('cod_inc_depto').AsString := FRelatTesteLotes.edtcod_incub.Text;


       qryDados.open;
       qrpdados.Preview;

    end;
end;
{$R *.DFM}


end.

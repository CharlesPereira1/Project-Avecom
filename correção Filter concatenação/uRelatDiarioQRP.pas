unit uRelatDiarioQRP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, frxpngimage, uADStanIntf, uADStanOption,
  uADStanParam, uADStanError, uADDatSManager, uADPhysIntf, uADDAptIntf,
  uADStanAsync, uADDAptManager, uADCompDataSet, uADCompClient;

type
  TFRelatDiarioQRP = class(TForm)
    qrpDados: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData2: TQRSysData;
    Dados: TQRSubDetail;
    vRel: TQRMemo;
    qryLotes: TADQuery;
    Cabeca: TQRGroup;
    qryLotesnro_lote: TStringField;
    qryLotescod_lote_num: TADAutoIncField;
    qryLotesidade: TSmallintField;
    qryLot: TADQuery;
    qryLotdat_aloj_inicial: TDateTimeField;
    qryLotcod_lm: TStringField;
    qryLotcod_lf: TStringField;
    qryLotide_ave: TStringField;
    qryLotnro_est: TStringField;
    qryLotcod_linha: TStringField;
    qryLotnro_lote: TStringField;
    qryLotide_espec: TStringField;
    qryLotqtd_inic_fem: TIntegerField;
    qryLotqtd_inic_mac: TIntegerField;
    qryLotcod_lote_num: TIntegerField;
    qryLotidade: TSmallintField;
    qryLotdat_inicio: TDateTimeField;
    qryLotdat_fim: TDateTimeField;
    qrySda: TADQuery;
    qryEnd: TADQuery;
    qryBoxF: TADQuery;
    qryBoxM: TADQuery;
    qryMedMaster: TADQuery;
    qryRac: TADQuery;
    qryOvo: TADQuery;
    qryInc: TADQuery;
    qryDes: TADQuery;
    qryPad: TADQuery;
    qryAvesProd: TADQuery;
    qryMed: TADQuery;
    dtsMed: TDataSource;
    qryGra: TADQuery;
    dtsEnd: TDataSource;
    qryLoc: TADQuery;
    dtsLot: TDataSource;
    qryEmp: TADQuery;
    QRLabel4: TQRLabel;
    LogoRelatorio: TQRImage;
    procedure CabecaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    procedure GeraRelatorioDaIdade( vLote, vIdade:Integer);
    procedure BuscaDados(vLote, vIdade: integer);
  public
    { Public declarations }
    procedure exibe();
  end;

var
  FRelatDiarioQRP: TFRelatDiarioQRP;

implementation

uses
  URelatDiario, funcoes, UMenu;

{$R *.DFM}


procedure TFRelatDiarioQRP.exibe();
var
  StrSql : string;
begin
  if FRelatDiarioQRP = nil
    then FRelatDiarioQRP := TFRelatDiarioQRP.Create(nil);

  with FRelatDiarioQRP do
    begin
       StrSql := '';
       with qryLotes do
       begin

         if FRelatDiario.edtLoc.Text <> ''
           then StrSql := StrSql + ' and edr.Cod_Local = :Cod_Local';
         if FRelatDiario.edtGra.Text <> ''
           then StrSql := StrSql + ' and edr.Cod_Granja = :Cod_Granja';
         if FRelatDiario.edtGru.Text <> ''
           then StrSql := StrSql + ' and edr.Cod_Grupo = :Cod_Grupo';
         if FRelatDiario.edtGal.Text <> ''
           then StrSql := StrSql + ' and edr.Cod_Galinheiro = :Cod_Galinheiro';
         if FRelatDiario.edtIde.Text <> ''
           then StrSql := StrSql + ' and lot.Ide_Ave = :Ide_Ave';
         if FRelatDiario.cedIni.AsInteger > 0
           then StrSql := StrSql + ' and lot.Cod_Lote_Num >= :Cod_Lote_Num_Ini';
         if FRelatDiario.cedFim.AsInteger > 0
           then StrSql := StrSql + ' and lot.Cod_Lote_Num <= :Cod_Lote_Num_Fim';
         if FRelatDiario.detIni.Date > 0
           then StrSql := StrSql + ' and dat.Dat_Inicio >= :Dat_Inicial';
         if FRelatDiario.detFim.Date > 0
          then StrSql := StrSql + ' and dat.Dat_Fim <= :Dat_Final';

         SQL.Text := 'SELECT lot.nro_lote,lot.cod_lote_num, dat.idade FROM avfslot1 lot, avfsend1 edr, avfsdat1 dat WHERE edr.cod_lote_num = lot.cod_lote_num and dat.cod_lote_num = lot.cod_lote_num and dat.dat_inicio >= edr.dat_inicio and dat.dat_inicio <= edr.dat_fim ';
         if StrSql <> ''
           then SQL.Add(StrSql);
         SQL.Add(' Order by 1,3');

         if FRelatDiario.edtLoc.Text <> ''
           then ParamByName('Cod_Local').AsString := FRelatDiario.edtLoc.Text;
         if FRelatDiario.edtGra.Text <> ''
           then ParamByName('Cod_Granja').AsString := FRelatDiario.edtGra.Text;
         if FRelatDiario.edtGru.Text <> ''
           then ParamByName('Cod_Grupo').AsString := FRelatDiario.edtGru.Text;
         if FRelatDiario.edtGal.Text <> ''
           then ParamByName('Cod_Galinheiro').AsString := FRelatDiario.edtGal.Text;
         if FRelatDiario.edtIde.Text <> ''
           then ParamByName('Ide_Ave').AsString := FRelatDiario.edtIde.Text;
         if FRelatDiario.cedIni.AsInteger > 0
           then ParamByName('Cod_Lote_Num_Ini').AsInteger := FRelatDiario.cedIni.AsInteger;
         if FRelatDiario.cedFim.AsInteger > 0
           then ParamByName('Cod_Lote_Num_Fim').AsInteger := FRelatDiario.cedFim.AsInteger;
         if FRelatDiario.detIni.Date > 0
           then ParamByName('Dat_Inicial').AsDate := FRelatDiario.detIni.Date;
         if FRelatDiario.detFim.Date > 0
           then ParamByName('Dat_Final').AsDate := FRelatDiario.detFim.Date;
         Close;
         Open;
         try LogoRelatorio.Picture.LoadFromFile('H:\AVESOFT\RUNTIME\logo.png'); except end;
         qrpDados.Preview
    end;
    end;
end;

procedure TFRelatDiarioQRP.GeraRelatorioDaIdade( vLote, vIdade:Integer);
var
  vStr,
  vStrPadrao,
  vStrObtido,
  vStrDifer,
  vStrPercDifer,
  vStrCod,
  vStrMacho,
  vStrFemea,
  vStrAcum,
  vStrG_Dia,
  vStrG_Aloj,
  vStrOvo         : String;
  vDiaSemana            : string;
  vVetData        : array[0..6] of TDateTime;
  vI,
  vIx,
  vDia,
  vPrimeiroDiaSemana : Integer;
  //Difer,
  vSoma,
  vSomaMacho,
  vSomaFemea      : Double;
begin
  // Busca os dados
  BuscaDados(vLote, vIdade);

  if qrySda.RecordCount = 0
     then Exit;

// Cabeçalho
  QRLabel4.caption := '';
  QRLabel4.caption := QRLabel4.caption + copy(qryLoc.FieldByName('Des_Abrev').AsString + Repete(' ',20),1,20) + Repete(' ',3);
  QRLabel4.caption := QRLabel4.caption + copy(qryGra.FieldByName('Des_Abrev').AsString + Repete(' ',20),1,20) + Repete(' ',3);
  QRLabel4.caption := QRLabel4.caption + copy('GRUPO: ' + qryEnd.FieldByName('Cod_Grupo').AsString + Repete(' ',10),1,10) + Repete(' ',2);
  QRLabel4.caption := QRLabel4.caption + copy('GALPAO: ' + qryEnd.FieldByName('Cod_Galinheiro').AsString + Repete('',12),1,12) + Repete(' ',3) ;
  QRLabel4.caption := QRLabel4.caption + copy('LOTE: ' + qryLot.FieldByName('Ide_Ave').AsString + qryLot.FieldByName('Nro_Lote').AsString + ' ' + qryLot.FieldByName('Cod_Lf').AsString + qryLot.FieldByName('Cod_Lm').AsString + qryLot.FieldByName('Nro_Est').AsString + qryLot.FieldByName('Ide_Espec').AsString + ' / ' + qryLot.FieldByName('Cod_Lote_Num').AsString + Repete(' ',30),1,30) + Repete(' ',3);
  QRLabel4.caption := QRLabel4.caption + copy('IDADE: ' + qryLot.FieldByName('Idade').AsString  + Repete(' ',10),1,10) + Repete(' ',4);
  QRLabel4.caption := QRLabel4.caption + copy('Ref.: ' + FormatDateTime('mm/yyyy',qryLot.FieldByName('Dat_fim').AsDateTime) + Repete(' ',15),1,15);
  



  vPrimeiroDiaSemana := FMenu.Parametros.vDiaSemana;

// preenche o vetor para dias default
  for vI := 0 to 6 do
     vVetData[vI] := vPrimeiroDiaSemana + vI + 1;

// carrega o vetor de datas
  with qrySda do
    while not Eof do
      begin
        vDia := DayOfWeek(FieldByName('Data').AsDateTime) - (vPrimeiroDiaSemana + 1);
        if vDia < 0 then vDia := vDia + 7;
        vVetData[vDia] := FieldByName('Data').AsDateTime;
        Next;
      end;

  vRel.lines.Add(Repete('-',132));
  // adiciona o dia semana
  vStr := Repete(' ',11) + vSeparador;
  for vI := 0 to 6 do
     vStr := vStr + copy('   ' + FormatDateTime('ddd',(vVetData[vI]))+ Repete(' ',11),1,11) + vSeparador;
  vStr := vStr + copy('  TOTAIS' + Repete(' ',11),1,11) + vSeparador;
  vRel.lines.Add(vStr);
  vRel.lines.Add(        '-----------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|------------------------');

  {// DIA
  vStr := StrLeft(' DIA',11) + vSeparador;
  for vIx:= 0 to 6 do
  begin
    with qrySda do
      begin
        Filter := ' Data = ''' + DateToStr(vVetData[vIx]) + '''';
        if RecordCount > 0
          then vStr := vStr + StrRight(FormatDateTime('dd',vVetData[vIx]) ,10) + ' ' + vSeparador
          else vStr := vStr + StrRight('' ,11) + vSeparador
      end;
   end;
  vStr := vStr + StrRight('' ,11) + vSeparador; // total
  vRel.lines.Add(vStr);}

  // DIA
  vStr := StrLeft(' DIA',11) + vSeparador;
  for vI := 0 to 6 do
    begin
      //ShowMessage(vStrOvo);
      with qrySda do
        begin
          //string Filter := 'Data = '+#39+(FormatDateTime('dd/mm/yyyy', vVetData[vI], '00:00:00.000'))+#39;
          Filter := ' Data = {d ' + (FormatDateTime('yyyy-mm-dd', vVetData[vI]))+'}';
          //Filter := ' DATA = {' + (FormatDateTime('yyyy-mm-dd', vVetData[vI]))+'}';
          //Table1.Filter := ‘state = ‘+QuotedStr(Texto);
          //ShowMessage(Filter);

          if RecordCount > 0
              then vStr := vStr + StrRight(FormatDateTime('dd',vVetData[vI]) ,10) + ' ' + vSeparador
              else vStr := vStr + StrRight('' ,11) + vSeparador

         end;
    end;

  vStr := vStr + StrRight('' ,11) + vSeparador; // total
  vRel.lines.Add(vStr);

 {   with qrySda do
      begin
        {Filter := ' Data = ''' + DateTimeToStr(vVetData[vI]) + '''';
        Filter := QuotedStr(DateToStr(vVetData[vI]));}
        {Filter := ' Data = ' + QuotedStr(Formatdatetime('yyyy-mm-dd', vVetData[vI]));
        Filter := ' Data = ' +  QuotedStr(DateToStr(vVetData[vI]));  }

       { if RecordCount > 0
          then vStr := vStr + StrRight(FormatDateTime('dd',vVetData[vI]) ,10) + ' ' + vSeparador
          else vStr := vStr + StrRight('' ,11) + vSeparador
      end;
  vStr := vStr + StrRight('' ,11) + vSeparador; // total
  vRel.lines.Add(vStr);   }

/// Femeas
// FEMEAS - SALDO INICIAL DO DIA
  vStr := StrLeft(' FEMEAS',11) + vSeparador;
  vSoma := 0;
  for vI := 0 to 6 do
    with qrySda do
      begin
        //Filter := ' Data = ''' + DateToStr(vVetData[vI]) + '''';
        Filter := ' Data = {d' + (FormatDateTime('yyyy-mm-dd', vVetData[vI]))+'}';
        if RecordCount > 0 then
          if FieldByName('data').AsDateTime = qryLot.FieldByName('dat_aloj_inicial').AsDateTime then // data do alojamento do lote
            begin
              vStr := vStr + StrRight(FormatFloat('#,0.;; ',qryLot.FieldByName('qtd_inic_fem').AsInteger) ,10) + ' ' + vSeparador;
              vSoma := vSoma + qryLot.FieldByName('qtd_inic_fem').AsInteger;
            end
           else
            begin
              vStr := vStr + StrRight(FormatFloat('#,0.;; ',FieldByName('soma_saldo_fem_inicio').AsInteger) ,10) + ' ' + vSeparador;
              vSoma := vSoma + FieldByName('soma_saldo_fem_inicio').AsInteger;
            end
          else vStr := vStr + StrRight('' ,11) + vSeparador
      end;
  //vStr := vStr + StrRight(FormatFloat('#,0.;; ',vSoma),11) + vSeparador;
  vStr := vStr + '           ' + vSeparador;
  vRel.lines.Add(vStr);

  // MORTALIDADE FEMEA
  vSoma := 0;
  vStr := StrLeft('  MORTAS',11) + vSeparador;
  for vI := 0 to 6 do
    with qryBoxF do
      begin
        //Filter := ' Dat_Movto = ''' + DateToStr(vVetData[vI]) + '''';

        Filter := ' Dat_Movto = {d' + (FormatDateTime('yyyy-mm-dd', vVetData[vI]))+'}';
        if RecordCount > 0 then
          begin
            vStr := vStr + StrRight(FormatFloat('#,0.;; ',FieldByName('soma_qtd_morte').AsInteger) ,10) + ' ' + vSeparador;
            vSoma := vSoma + FieldByName('soma_qtd_morte').AsInteger;
          end
         else vStr := vStr + StrRight('' ,11) + vSeparador
      end;
  vStr := vStr + StrRight(FormatFloat('#,0.;; ',vSoma),11) + vSeparador;
  vRel.lines.Add(vStr);

  // ELIMIN FEMEA
  vSoma := 0;
  vStr := StrLeft('  ELIMIN.',11) + vSeparador;
  for vI := 0 to 6 do
    with qryBoxF do
      begin
        //Filter := ' Dat_Movto = ''' + DateToStr(vVetData[vI]) + '''';

        Filter := ' Dat_Movto = {d' + (FormatDateTime('yyyy-mm-dd', vVetData[vI]))+'}';
        if RecordCount > 0 then
          begin
            vStr := vStr + StrRight(FormatFloat('#,0.;; ',FieldByName('soma_qtd_elimin').AsInteger) ,10) + ' ' + vSeparador;
            vSoma := vSoma + FieldByName('soma_qtd_elimin').AsInteger;
          end
         else vStr := vStr + StrRight('' ,11) + vSeparador
      end;
  vStr := vStr + StrRight(FormatFloat('#,0.;; ',vSoma),11) + vSeparador;
  vRel.lines.Add(vStr);

  // REFUGOS FEMEA
  vSoma := 0;
  vStr := StrLeft('  REFUGOS',11) + vSeparador;
  for vI := 0 to 6 do
    with qryBoxF do
      begin
        //Filter := ' Dat_Movto = ''' + DateToStr(vVetData[vI]) + '''';

        Filter := ' Dat_Movto = {d' + (FormatDateTime('yyyy-mm-dd', vVetData[vI]))+'}';
        if RecordCount > 0 then
          begin
            vStr := vStr + StrRight(FormatFloat('#,0.;; ',FieldByName('soma_qtd_refugo').AsInteger) ,10) + ' ' + vSeparador;
            vSoma := vSoma + FieldByName('soma_qtd_refugo').AsInteger;
          end
         else vStr := vStr + StrRight('' ,11) + vSeparador
      end;
  vStr := vStr + StrRight(FormatFloat('#,0.;; ',vSoma),11) + vSeparador;
  vRel.lines.Add(vStr);

  // TRANSF. FEMEA
  vSoma := 0;
  vStr := StrLeft('  TRANSF.',11) + vSeparador;
  for vI := 0 to 6 do
    with qryBoxF do
      begin
        //Filter := ' Dat_Movto = ''' + DateToStr(vVetData[vI]) + '''';

        Filter := ' Dat_Movto = {d' + (FormatDateTime('yyyy-mm-dd', vVetData[vI]))+'}';
        if RecordCount > 0 then
          begin
            vStr := vStr + StrRight(FormatFloat('#,0.;; ',FieldByName('soma_qtd_transf').AsInteger) ,10) + ' ' + vSeparador;
            vSoma := vSoma + FieldByName('soma_qtd_transf').AsInteger;
          end
         else vStr := vStr + StrRight('' ,11) + vSeparador
      end;
  vStr := vStr + StrRight(FormatFloat('#,0.;; ',vSoma),11) + vSeparador;
  vRel.lines.Add(vStr);

  // DIFEREN. FEMEA
  vSoma := 0;
  vStr := StrLeft('  DIFEREN.',11) + vSeparador;
  for vI := 0 to 6 do
    with qryBoxF do
      begin
        //Filter := ' Dat_Movto = ''' + DateToStr(vVetData[vI]) + '''';

        Filter := ' Dat_Movto = {d' + (FormatDateTime('yyyy-mm-dd', vVetData[vI]))+'}';
        if RecordCount > 0 then
          begin
            vStr := vStr + StrRight(FormatFloat('#,0.;; ',FieldByName('soma_qtd_difer').AsInteger) ,10) + ' ' + vSeparador;
            vSoma := vSoma + FieldByName('soma_qtd_difer').AsInteger;
          end
         else vStr := vStr + StrRight('' ,11) + vSeparador
      end;
  vStr := vStr + StrRight(FormatFloat('#,0.;; ',vSoma),11) + vSeparador;
  vRel.lines.Add(vStr);


  // DIscarte. FEMEA
  vSoma := 0;
  vStr := StrLeft('  DESCARTE',11) + vSeparador;
  for vI := 0 to 6 do
    with qryBoxF do
      begin
        //Filter := ' Dat_Movto = ''' + DateToStr(vVetData[vI]) + '''';

        Filter := ' Dat_Movto = {d' + (FormatDateTime('yyyy-mm-dd', vVetData[vI]))+'}';
        if RecordCount > 0 then
          begin
            vStr := vStr + StrRight(FormatFloat('#,0.;; ',FieldByName('soma_qtd_descarte').AsInteger) ,10) + ' ' + vSeparador;
            vSoma := vSoma + FieldByName('soma_qtd_descarte').AsInteger;
          end
         else vStr := vStr + StrRight('' ,11) + vSeparador
      end;
  vStr := vStr + StrRight(FormatFloat('#,0.;; ',vSoma),11) + vSeparador;
  vRel.lines.Add(vStr);

  // SALDO FINAL DO DIA FEMEA
  vSoma := 0;
  vStr := StrLeft('  SALDO',11) + vSeparador;
  for vI := 0 to 6 do
    with qrySda do
      begin
        //Filter := ' Data = ''' + DateToStr(vVetData[vI]) + '''';

        Filter := ' Data = {d' + (FormatDateTime('yyyy-mm-dd', vVetData[vI]))+'}';
        if RecordCount > 0 then
          begin
            vStr := vStr + StrRight(FormatFloat('#,0.;; ',FieldByName('soma_saldo_fem_final').AsInteger) ,10) + ' ' + vSeparador;
            vSoma := vSoma + FieldByName('soma_saldo_fem_final').AsInteger;
          end
          else vStr := vStr + StrRight('' ,11) + vSeparador
      end;
  //vStr := vStr + StrRight(FormatFloat('#,0.;; ',vSoma),11) + vSeparador;
  vStr := vStr + '           ' + vSeparador;
  vRel.lines.Add(vStr);

/// machos
  // MACHOS - SALDO INICIAL DO DIA
  vStr := StrLeft(' MACHOS',11) + vSeparador;
  vSoma := 0;
  for vI := 0 to 6 do
    with qrySda do
      begin
        //Filter := ' Data = ''' + DateToStr(vVetData[vI]) + '''';

        Filter := ' Data = {d' + (FormatDateTime('yyyy-mm-dd', vVetData[vI]))+'}';
        if RecordCount > 0
          then if FieldByName('data').AsDateTime = qryLot.FieldByName('dat_aloj_inicial').AsDateTime  // data do alojamento do lote
                  then
                    begin
                      vStr := vStr + StrRight(FormatFloat('#,0.;; ',qryLot.FieldByName('qtd_inic_mac').AsInteger) ,10) + ' ' + vSeparador;
                      vSoma := vSoma + qryLot.FieldByName('qtd_inic_mac').AsInteger;
                    end
                  else
                    begin
                      vStr := vStr + StrRight(FormatFloat('#,0.;; ',FieldByName('soma_saldo_mac_inicio').AsInteger) ,10) + ' ' + vSeparador;
                      vSoma := vSoma + FieldByName('soma_saldo_mac_inicio').AsInteger;
                    end
          else vStr := vStr + StrRight('' ,11) + vSeparador
      end;
  //vStr := vStr + StrRight(FormatFloat('#,0.;; ',vSoma),11) + vSeparador;
  vStr := vStr + '           ' + vSeparador;
  vRel.lines.Add(vStr);

  // MORTALIDADE MACHOS
  vSoma := 0;
  vStr := StrLeft('  MORTAS',11) + vSeparador;
  for vI := 0 to 6 do
    with qryBoxM do
      begin
        //Filter := ' Dat_Movto = ''' + DateToStr(vVetData[vI]) + '''';

        Filter := ' Dat_Movto = {d' + (FormatDateTime('yyyy-mm-dd', vVetData[vI]))+'}';
        if RecordCount > 0 then
          begin
            vStr := vStr + StrRight(FormatFloat('#,0.;; ',FieldByName('soma_qtd_morte').AsInteger) ,10) + ' ' + vSeparador;
            vSoma := vSoma + FieldByName('soma_qtd_morte').AsInteger;
          end
         else vStr := vStr + StrRight('' ,11) + vSeparador
      end;
  vStr := vStr + StrRight(FormatFloat('#,0.;; ',vSoma),11) + vSeparador;
  vRel.lines.Add(vStr);

  // ELIMIN MACHOS
  vSoma := 0;
  vStr := StrLeft('  ELIMIN.',11) + vSeparador;
  for vI := 0 to 6 do
    with qryBoxM do
      begin
        //Filter := ' Dat_Movto = ''' + DateToStr(vVetData[vI]) + '''';

        Filter := ' Dat_Movto = {d' + (FormatDateTime('yyyy-mm-dd', vVetData[vI]))+'}';
        if RecordCount > 0 then
          begin
            vStr := vStr + StrRight(FormatFloat('#,0.;; ',FieldByName('soma_qtd_elimin').AsInteger) ,10) + ' ' + vSeparador;
            vSoma := vSoma + FieldByName('soma_qtd_elimin').AsInteger;
          end
         else vStr := vStr + StrRight('' ,11) + vSeparador
      end;
  vStr := vStr + StrRight(FormatFloat('#,0.;; ',vSoma),11) + vSeparador;
  vRel.lines.Add(vStr);

  // REFUGOS MACHOS
  vSoma := 0;
  vStr := StrLeft('  REFUGOS',11) + vSeparador;
  for vI := 0 to 6 do
    with qryBoxM do
      begin
        //Filter := ' Dat_Movto = ''' + DateToStr(vVetData[vI]) + '''';

        Filter := ' Dat_Movto = {d' + (FormatDateTime('yyyy-mm-dd', vVetData[vI]))+'}';
        if RecordCount > 0 then
          begin
            vStr := vStr + StrRight(FormatFloat('#,0.;; ',FieldByName('soma_qtd_refugo').AsInteger) ,10) + ' ' + vSeparador;
            vSoma := vSoma + FieldByName('soma_qtd_refugo').AsInteger;
          end
         else vStr := vStr + StrRight('' ,11) + vSeparador
      end;
  vStr := vStr + StrRight(FormatFloat('#,0.;; ',vSoma),11) + vSeparador;
  vRel.lines.Add(vStr);

  // TRANSF. MACHOS
  vSoma := 0;
  vStr := StrLeft('  TRANSF.',11) + vSeparador;
  for vI := 0 to 6 do
    with qryBoxM do
      begin
        //Filter := ' Dat_Movto = ''' + DateToStr(vVetData[vI]) + '''';

        Filter := ' Dat_Movto = {d' + (FormatDateTime('yyyy-mm-dd', vVetData[vI]))+'}';
        if RecordCount > 0 then
          begin
            vStr := vStr + StrRight(FormatFloat('#,0.;; ',FieldByName('soma_qtd_transf').AsInteger) ,10) + ' ' + vSeparador;
            vSoma := vSoma + FieldByName('soma_qtd_transf').AsInteger;
          end
         else vStr := vStr + StrRight('' ,11) + vSeparador
      end;
  vStr := vStr + StrRight(FormatFloat('#,0.;; ',vSoma),11) + vSeparador;
  vRel.lines.Add(vStr);

  // DIFEREN. MACHOS
  vSoma := 0;
  vStr := StrLeft('  DIFEREN.',11) + vSeparador;
  for vI := 0 to 6 do
    with qryBoxM do
      begin
        //Filter := ' Dat_Movto = ''' + DateToStr(vVetData[vI]) + '''';

        Filter := ' Dat_Movto = {d' + (FormatDateTime('yyyy-mm-dd', vVetData[vI]))+'}';
        if RecordCount > 0 then
          begin
            vStr := vStr + StrRight(FormatFloat('#,0.;; ',FieldByName('soma_qtd_difer').AsInteger) ,10) + ' ' + vSeparador;
            vSoma := vSoma + FieldByName('soma_qtd_difer').AsInteger;
          end
         else vStr := vStr + StrRight('' ,11) + vSeparador
      end;
  vStr := vStr + StrRight(FormatFloat('#,0.;; ',vSoma),11) + vSeparador;
  vRel.lines.Add(vStr);


  // DESCARTE. MACHOS
  vSoma := 0;
  vStr := StrLeft('  DESCARTE',11) + vSeparador;
  for vI := 0 to 6 do
    with qryBoxM do
      begin
        //Filter := ' Dat_Movto = ''' + DateToStr(vVetData[vI]) + '''';

        Filter := ' Dat_Movto = {d' + (FormatDateTime('yyyy-mm-dd', vVetData[vI]))+'}';
        if RecordCount > 0 then
          begin
            vStr := vStr + StrRight(FormatFloat('#,0.;; ',FieldByName('soma_qtd_descarte').AsInteger) ,10) + ' ' + vSeparador;
            vSoma := vSoma + FieldByName('soma_qtd_descarte').AsInteger;
          end
         else vStr := vStr + StrRight('' ,11) + vSeparador
      end;
  vStr := vStr + StrRight(FormatFloat('#,0.;; ',vSoma),11) + vSeparador;
  vRel.lines.Add(vStr);
  // SALDO FINAL DO DIA MACHOS
  vSoma := 0;
  vStr := StrLeft('  SALDO',11) + vSeparador;
  for vI := 0 to 6 do
    with qrySda do
      begin
        //Filter := ' Data = ''' + DateToStr(vVetData[vI]) + '''';

        Filter := ' Data = {d' + (FormatDateTime('yyyy-mm-dd', vVetData[vI]))+'}';
        if RecordCount > 0 then
          begin
            vStr := vStr + StrRight(FormatFloat('#,0.;; ',FieldByName('soma_saldo_mac_final').AsInteger),10) + ' ' + vSeparador;
            vSoma := vSoma + FieldByName('soma_saldo_mac_final').AsInteger;
          end
         else vStr := vStr + StrRight('' ,11) + vSeparador
      end;
  //vStr := vStr + StrRight(FormatFloat('#,0.;; ',vSoma),11) + vSeparador;
  vStr := vStr + '           ' + vSeparador;
  vRel.lines.Add(vStr);

// MEDICAMENTOS
  vStr := StrLeft(' MEDICAM.',11) + vSeparador;
  for vI := 0 to 6 do
      vStr := vStr + StrRight('' ,11) + vSeparador;
  vStr := vStr + StrRight('' ,11) + vSeparador; // total
  vRel.lines.Add(vStr);

  with qryMedMaster do
    if RecordCount > 0 then
      while not Eof do
        begin
          with qryMed do
            begin
              vStrCod := StrLeft('  CODIGO',11) + vSeparador;
              vStr := StrLeft('  QTDE',11) + vSeparador;
              Close;
              Open;
              vSoma := 0;
              for vI := 0 to 6 do
                begin
                  //Filter := ' Dat_Movto = ''' + DateToStr(vVetData[vI]) + '''';

                  Filter := ' Dat_Movto = {d' + (FormatDateTime('yyyy-mm-dd', vVetData[vI]))+'}';
                  if RecordCount > 0 then
                    begin
                      vStr := vStr + StrRight(FormatFloat('#,0.;; ',FieldByName('soma_qtd_medic').AsInteger) ,10) + ' ' + vSeparador;
                      vStrCod := vStrCod + StrRight(FormatFloat('#,0.;; ',FieldByName('cod_vac_medic').AsInteger) ,10) + ' ' + vSeparador;
                      vSoma := vSoma + FieldByName('soma_qtd_medic').AsInteger;
                    end
                    else
                      begin
                        vStr := vStr + StrRight('' ,11) + vSeparador;
                        vStrCod := vStrCod + StrRight('' ,11) + vSeparador
                      end
                end;
              vStr := vStr + StrRight(FormatFloat('#,0.;; ',vSoma),11) + vSeparador;
              vStrCod := vStrCod + StrRight('' ,11) + vSeparador; // total
              vRel.lines.Add(vStrCod);
              vRel.lines.Add(vStr);
            end;
          Next;
        end
      else
        begin
          // CAMPOS NULOS
          vStrCod := StrLeft('  CODIGO',11) + vSeparador;
          vStr := StrLeft('  QTDE',11) + vSeparador;
          for vI := 0 to 6 do
            begin
              vStrCod := vStrCod + StrRight('' ,11) + vSeparador;
              vStr := vStr + StrRight('' ,11) + vSeparador
            end;
          vStr := vStr + StrRight('' ,11) + vSeparador; // total
          vStrCod := vStrCod + StrRight('' ,11) + vSeparador; // total
          vRel.lines.Add(vStrCod);
          vRel.lines.Add(vStr);
        end;

  // RAÇÃO MACHO E FEMEA
  vStr := StrLeft(' RACAO',11) + vSeparador;
  for vI := 0 to 6 do
      vStr := vStr + StrRight('' ,11) + vSeparador;
  vStr := vStr + StrRight('' ,11) + vSeparador; // total
  vRel.lines.Add(vStr);

  vSomaMacho := 0;
  vSomaFemea := 0;
  vStrFemea := StrLeft('  QTDE. FEM',11) + vSeparador;
  vStrMacho := StrLeft('  QTDE. MAC',11) + vSeparador;
  for vI := 0 to 6 do
    with qryRac do
      begin
        //Filter := ' Dat_Movto = ''' + DateToStr(vVetData[vI]) + '''';

        Filter := ' Dat_Movto = {d' + (FormatDateTime('yyyy-mm-dd', vVetData[vI]))+'}';
        if RecordCount > 0 then
          begin
            vStrFemea := vStrFemea + StrRight(FormatFloat('#,0.;; ',FieldByName('soma_qtd_cons_femea').AsInteger) ,10) + ' ' + vSeparador;
            vSomaFemea := vSomaFemea + FieldByName('soma_qtd_cons_femea').AsInteger;
            vStrMacho := vStrMacho + StrRight(FormatFloat('#,0.;; ',FieldByName('soma_qtd_cons_macho').AsInteger) ,10) + ' ' + vSeparador;
            vSomaMacho := vSomaMacho + FieldByName('soma_qtd_cons_macho').AsInteger;
          end
         else
          begin
            vStrMacho := vStrMacho + StrRight('' ,11) + vSeparador;
            vStrFemea := vStrFemea + StrRight('' ,11) + vSeparador;
          end;
      end;
  vStrFemea := vStrFemea + StrRight(FormatFloat('#,0.;; ',vSomaFemea),11) + vSeparador;
  vStrMacho := vStrMacho + StrRight(FormatFloat('#,0.;; ',vSomaMacho),11) + vSeparador;
  vRel.lines.Add(vStrFemea);
  vRel.lines.Add(vStrMacho);

// POSTURA
  vSoma := 0;
  vStrAcum := StrLeft(' POSTURA',11) + vSeparador;
  vStr := StrLeft('  TOTAL DIA',11) + vSeparador;
  vStrG_Dia := StrLeft('  GAL/DIA',11) + vSeparador;
  vStrG_Aloj := StrLeft('  GAL/ALOJ',11) + vSeparador;
  qrySda.First;
  for vI := 0 to 6 do
    with qryOvo do
      begin
        //Filter := ' Dat_Movto = ''' + DateToStr(vVetData[vI]) + '''';
        Filter := ' Dat_Movto = {d' + (FormatDateTime('yyyy-mm-dd', vVetData[vI]))+'}';
        //qrySda.Filter := ' Data = ''' + DateToStr(vVetData[vI]) + '''';
        qrySda.Filter := ' Data = {d' + (FormatDateTime('yyyy-mm-dd', vVetData[vI]))+'}';
        if RecordCount > 0 then
          begin
            vStrAcum := vStrAcum + StrRight(FormatFloat('#,0.;; ',FieldByName('soma_Tot_ovo_acum').AsInteger) ,10) + ' ' + vSeparador;
            if FieldByName('soma_tot_ovo_dia').AsInteger > 0 then
              begin
                vStr := vStr + StrRight(FormatFloat('#,0.;; ',FieldByName('soma_tot_ovo_dia').AsInteger) ,10) + ' ' + vSeparador;
                if qrySda.FieldByName('soma_saldo_fem_final').AsInteger <> 0
                  then vStrG_Dia := vStrG_Dia + StrRight(FormatFloat('#,##0.00;; ', FieldByName('soma_tot_ovo_dia').AsInteger / qrySda.FieldByName('soma_saldo_fem_final').AsInteger * 100) ,10) + ' ' + vSeparador
                  else vStrG_Dia := vStrG_Dia + StrRight('',10) + ' ' + vSeparador;
                if qryAvesProd.RecordCount > 0 then
                  begin
                    if qryAvesProd.FieldByName('qtd_femeas').AsInteger <> 0
                      then vStrG_Aloj := vStrG_Aloj + StrRight(FormatFloat('#,##0.00;; ', FieldByName('soma_tot_ovo_dia').AsInteger / qryAvesProd.FieldByName('qtd_femeas').AsInteger * 100) ,10) + ' ' + vSeparador
                      else vStrG_Aloj := vStrG_Aloj + StrRight('',10) + ' ' + vSeparador;
                  end
                 else
                  begin
                    vStrG_Aloj := vStrG_Aloj + StrRight('' ,11) + vSeparador;
                  end;
                vSoma := vSoma + FieldByName('soma_tot_ovo_dia').AsInteger;
              end
              else
                begin
                  vStr := vStr + StrRight('' ,11) + vSeparador;
                  vStrG_Aloj := vStrG_Aloj + StrRight('' ,11) + vSeparador;
                  vStrG_Dia := vStrG_Dia + StrRight('' ,11) + vSeparador;
                end
          end
          else
            begin
              vStr := vStr + StrRight('' ,11) + vSeparador;
              vStrG_Aloj := vStrG_Aloj + StrRight('' ,11) + vSeparador;
              vStrG_Dia := vStrG_Dia + StrRight('' ,11) + vSeparador;
              vStrAcum := vStrAcum + StrRight('' ,11) + vSeparador;
            end;
      end;
  vStr := vStr + StrRight(FormatFloat('#,0.;; ',vSoma),11) + vSeparador;
  vStrG_Dia := vStrG_Dia + StrRight('' ,11) + vSeparador;
  vStrG_Aloj := vStrG_Aloj + StrRight('' ,11)+ vSeparador;
  vStrAcum := vStrAcum + StrRight('' ,11) + vSeparador;
// ARRACOAMENTO
  vStrAcum := vStrAcum + StrRight('ARRACOAMENTO',17); // ARRACOAMENTO
  vStr := vStr + StrRight('FEMEA  MACHO',22);
  vStrG_Aloj := vStrG_Aloj + StrRight(' GRAMA',8);
  if qryDes.RecordCount > 0
     then vStrG_Aloj := vStrG_Aloj + StrRight(FormatFloat('#,##0.00;; ',qryDes.FieldByName('grama_obtida_fem').AsFloat),7) + StrRight(FormatFloat('#,##0.00;; ',qryDes.FieldByName('grama_obtida_mac').AsFloat),7);
//
  vRel.lines.Add(vStrAcum);
  vRel.lines.Add(vStr);
  vRel.lines.Add(vStrG_Dia);
  vRel.lines.Add(vStrG_Aloj);

// INCUBAVEIS
  vSoma := 0;
  vStrAcum := StrLeft(' INCUBAVEIS',11) + vSeparador;
  vStr := StrLeft('  INCUB.DIA',11) + vSeparador;
  vStrG_Dia := StrLeft('  GAL/DIA',11) + vSeparador;
  vStrG_Aloj := StrLeft('  GAL/ALOJ',11) + vSeparador;
  vStrOvo := StrLeft('  OVO',11) + vSeparador;
  qrySda.First;
  for vI := 0 to 6 do
    with qryInc do
      begin
        //Filter := ' Dat_Movto = ''' + DateToStr(vVetData[vI]) + '''';
        Filter := ' Dat_Movto = {d' + (FormatDateTime('yyyy-mm-dd', vVetData[vI]))+'}';
        //qrySda.Filter := ' Data = ''' + DateToStr(vVetData[vI]) + '''';
        qrySda.Filter := ' Data = {d' + (FormatDateTime('yyyy-mm-dd', vVetData[vI]))+'}';
        if RecordCount > 0 then
          begin
            vStrAcum := vStrAcum + StrRight(FormatFloat('#,0.;; ',FieldByName('SomaOvosIncubAcum').AsInteger) ,10) + ' ' + vSeparador;
            if FieldByName('SomaOvosIncub').AsInteger > 0 then
              begin
                vStr := vStr + StrRight(FormatFloat('#,0.;; ',FieldByName('SomaOvosIncub').AsInteger) ,10) + ' ' + vSeparador;
                vStrOvo := vStrOvo + StrRight(FormatFloat('#,##0.00;; ', FieldByName('Perc_Aproveitamento').AsFloat) ,10) + ' ' + vSeparador;
                if qrySda.RecordCount > 0
                  then
                  begin
                       if qrySda.FieldByName('soma_saldo_fem_inicio').AsInteger <> 0
                          then vStrG_Dia := vStrG_Dia + StrRight(FormatFloat('#,##0.00;; ', FieldByName('SomaOvosIncub').AsInteger / qrySda.FieldByName('soma_saldo_fem_inicio').AsInteger * 100) ,10) + ' ' + vSeparador
                          else vStrG_Dia := vStrG_Dia + StrRight('',10) + ' ' + vSeparador
                  end
                  else
                  begin
                       vStrG_Dia := vStrG_Dia + StrRight('' ,11) + vSeparador;
                  end;
                if qryAvesProd.RecordCount > 0
                  then
                  begin
                       if qryAvesProd.FieldByName('qtd_femeas').AsInteger <> 0
                          then vStrG_Aloj := vStrG_Aloj + StrRight(FormatFloat('#,##0.00;; ', FieldByName('SomaOvosIncub').AsInteger / qryAvesProd.FieldByName('qtd_femeas').AsInteger * 100) ,10) + ' ' + vSeparador
                          else vStrG_Aloj := vStrG_Aloj + StrRight('',10) + ' ' + vSeparador
                  end
                  else vStrG_Aloj := vStrG_Aloj + StrRight('' ,11) + vSeparador;
                vSoma := vSoma + FieldByName('SomaOvosIncub').AsInteger;
              end
              else
                begin
                  vStr := vStr + StrRight('' ,11) + vSeparador;
                  vStrG_Aloj := vStrG_Aloj + StrRight('' ,11) + vSeparador;
                  vStrG_Dia := vStrG_Dia + StrRight('' ,11) + vSeparador;
                  vStrOvo := vStrOvo + StrRight('' ,11) + vSeparador;
                end
          end
          else
            begin
              vStr := vStr + StrRight('' ,11) + vSeparador;
              vStrG_Aloj := vStrG_Aloj + StrRight('' ,11) + vSeparador;
              vStrG_Dia := vStrG_Dia + StrRight('' ,11) + vSeparador;
              vStrAcum := vStrAcum + StrRight('' ,11) + vSeparador;
              vStrOvo := vStrOvo + StrRight('' ,11) + vSeparador;
            end;
      end;
  vStr := vStr + StrRight(FormatFloat('#,0.;; ',vSoma),11) + vSeparador;
  vStrG_Aloj := vStrG_Aloj + StrRight('' ,11) + vSeparador;
  vStrG_Dia := vStrG_Dia + StrRight('' ,11) + vSeparador;
  vStrAcum := vStrAcum + StrRight('' ,11) + vSeparador;
  vStrOvo := vStrOvo + StrRight('' ,11) + vSeparador;

// ARRACOAMENTO
  vStr := vStr + StrRight('CAL.OBT',8);
  vStrG_Dia := vStrG_Dia + StrRight('PAD',8);
  vStrG_Aloj := vStrG_Aloj + StrRight('% DIF',8);
  vStrOvo := vStrOvo + StrRight('GR.MED.',8);
  if qryDes.RecordCount > 0 then
     begin
       vStr := vStr + StrRight(FormatFloat('#,##0.00;; ',qryDes.FieldByName('calor_obtida_fem').AsFloat),7) + StrRight(FormatFloat('#,##0.00;; ',qryDes.FieldByName('calor_obtida_mac').AsFloat),7);
       vStrG_Dia := vStrG_Dia + StrRight(FormatFloat('#,##0.00;; ',qryDes.FieldByName('calor_padrao_fem').AsFloat),7) + StrRight(FormatFloat('#,##0.00;; ',qryDes.FieldByName('calor_padrao_mac').AsFloat),7);
       vStrG_Aloj := vStrG_Aloj + StrRight(FormatFloat('#,##0.00;; ',qryDes.FieldByName('calor_obtida_fem').AsFloat - qryDes.FieldByName('calor_padrao_fem').AsFloat),7) + StrRight(FormatFloat('#,##0.00;; ',qryDes.FieldByName('calor_obtida_mac').AsFloat - qryDes.FieldByName('calor_padrao_mac').AsFloat),7);
       vStrOvo := vStrOvo + StrRight(FormatFloat('#,##0.00;; ',qryDes.FieldByName('racao_obtida').AsFloat),7);
     end;

  vRel.lines.Add(vStrAcum);
  vRel.lines.Add(vStr);
  vRel.lines.Add(vStrG_Dia);
  vRel.lines.Add(vStrG_Aloj);
  vRel.lines.Add(vStrOvo);

  // SEPARACAO (diario X Resumo)
  vRel.lines.Add(Repete('-',132));
  vRel.lines.Add('  RESUMO | MORTALIDADE | P E S A G E M | CALOR.| CONV. |       P  O  S  T  U  R  A       |   O V O    I N C U B A V E L    |       ');
  vRel.lines.Add('         | FEMEA  MACHO| FEMEA   MACHO | MEDIA | OVO   | GALINHA SEMANA | GALINHA ALOJAD | GALINHA SEMANA | GALINHA ALOJAD | APROV.');
  vRel.lines.Add('         |             |               |       |       | PROD %  OV/AVE | PROD %  OV/AVE | PROD %  OV/AVE | PROD %  OV/AVE | OVO');

  // TITULO2
  vStrPadrao := StrLeft(' PADRAO',9) + vSeparador;
  vStrObtido := StrLeft(' OBTIDO',9) + vSeparador;
  vStrDifer := StrLeft(' DIFER.',9) + vSeparador;
  vStrPercDifer := StrLeft(' % DIFER',9) + vSeparador;
  with qryDes do
    if (RecordCount > 0) and (qryPad.RecordCount > 0)then
      begin
        // MORTALIDADE FEMEA
        //vStrObtido := vStrObtido + StrRight(iif(FieldByName('mortal_obtida_fem').AsFloat > 0,FieldByName('mortal_obtida_fem').AsString,''),6) + ' ';
        //vStrPadrao := vStrPadrao + StrRight(iif(qryPad.FieldByName('pct_morte_fem').AsFloat > 0 , qryPad.FieldByName('pct_morte_fem').AsString, ''),6) + ' ';
        vStrObtido := vStrObtido + StrRight(FormatFloat('#,###0.000;; ',FieldByName('mortal_obtida_fem').AsFloat),6) + ' ';
        vStrPadrao := vStrPadrao + StrRight(FormatFloat('#,###0.000;; ',qryPad.FieldByName('pct_morte_fem').AsFloat),6) + ' ';
        vStrDifer := vStrDifer + StrRight(FormatFloat('#,###0.000;; ',FieldByName('mortal_obtida_fem').AsFloat - qryPad.FieldByName('pct_morte_fem').AsFloat),6) + ' ';
        vStrPercDifer := vStrPercDifer + StrRight('',6) + ' ';

        // MORTALIDADE MACHO
        //vStrObtido := vStrObtido + StrRight(iif(FieldByName('mortal_obtida_mac').AsFloat > 0,FieldByName('mortal_obtida_mac').AsString,''),6) + vSeparador;
        //vStrPadrao := vStrPadrao + StrRight(iif(qryPad.FieldByName('pct_morte_mac').AsFloat > 0 , qryPad.FieldByName('pct_morte_mac').AsString, ''),6) + vSeparador;
        vStrObtido := vStrObtido + StrRight(FormatFloat('#,###0.000;; ',FieldByName('mortal_obtida_mac').AsFloat),6) + vSeparador;
        vStrPadrao := vStrPadrao + StrRight(FormatFloat('#,###0.000;; ',qryPad.FieldByName('pct_morte_mac').AsFloat),6) + vSeparador;
        vStrDifer := vStrDifer + StrRight(FormatFloat('#,###0.000;; ',FieldByName('mortal_obtida_mac').AsFloat - qryPad.FieldByName('pct_morte_mac').AsFloat),6) + vSeparador;
        vStrPercDifer := vStrPercDifer + StrRight('',6) + vSeparador;

        // PESAGEM FEMEA
        //vStrObtido := vStrObtido + StrRight(iif(FieldByName('peso_obtido_fem').AsFloat > 0,FieldByName('peso_obtido_fem').AsString,''),7) + ' ';
        //vStrPadrao := vStrPadrao + StrRight(iif(qryPad.FieldByName('peso_fem').AsFloat > 0 , qryPad.FieldByName('peso_fem').AsString, ''),7) + ' ';
        //Difer := FieldByName('peso_obtido_fem').AsFloat - qryPad.FieldByName('peso_fem').AsFloat;
        //vStrDifer := vStrDifer + StrRight(iif(Difer <> 0,FormatFloat('#,#0.0;; ',Difer),''),7) + ' ';
        vStrObtido := vStrObtido + StrRight(FormatFloat('#,###0.000;; ',FieldByName('peso_obtido_fem').AsFloat),7) + ' ';
        vStrPadrao := vStrPadrao + StrRight(FormatFloat('#,###0.000;; ',qryPad.FieldByName('peso_fem').AsFloat),7) + ' ';
        vStrDifer := vStrDifer + StrRight(FormatFloat('#,###0.000;; ',FieldByName('peso_obtido_fem').AsFloat - qryPad.FieldByName('peso_fem').AsFloat),7) + ' ';

        if qryPad.FieldByName('peso_fem').AsFloat <> 0
           then vStrPercDifer := vStrPercDifer + StrRight( FormatFloat('#,##0.00;; ',((FieldByName('peso_obtido_fem').AsFloat - qryPad.FieldByName('peso_fem').AsFloat) / qryPad.FieldByName('peso_fem').AsFloat * 100)) ,7) + ' '
           else vStrPercDifer := vStrPercDifer + StrRight('',7) + ' ';

        // PESAGEM MACHO
        {vStrObtido := vStrObtido + StrRight(iif(FieldByName('peso_obtido_mac').AsFloat > 0,FieldByName('peso_obtido_mac').AsString,''),7) + vSeparador;
        vStrPadrao := vStrPadrao + StrRight(iif(qryPad.FieldByName('peso_mac').AsFloat > 0 , qryPad.FieldByName('peso_mac').AsString, ''),7) + vSeparador;
        Difer := FieldByName('peso_obtido_mac').AsFloat - qryPad.FieldByName('peso_mac').AsFloat;
        vStrDifer := vStrDifer + StrRight(iif(Difer <> 0,FormatFloat('#,#0.0;; ',Difer),''),7) + vSeparador;
        if qryPad.FieldByName('peso_mac').AsFloat <> 0
          then vStrPercDifer := vStrPercDifer + StrRight( FormatFloat('#,#0,0;; ',(Difer / qryPad.FieldByName('peso_mac').AsFloat * 100)) ,7) + vSeparador
          else vStrPercDifer := vStrPercDifer + StrRight('',7) + vSeparador;}
        vStrObtido := vStrObtido + StrRight(FormatFloat('#,###0.000;; ',FieldByName('peso_obtido_mac').AsFloat),7) + vSeparador;
        vStrPadrao := vStrPadrao + StrRight(FormatFloat('#,###0.000;; ',qryPad.FieldByName('peso_mac').AsFloat),7) + vSeparador;
        vStrDifer := vStrDifer + StrRight(FormatFloat('#,###0.000;; ',FieldByName('peso_obtido_mac').AsFloat - qryPad.FieldByName('peso_mac').AsFloat),7) + vSeparador;
        if qryPad.FieldByName('peso_mac').AsFloat <> 0
          then vStrPercDifer := vStrPercDifer + StrRight( FormatFloat('#,##0.00;; ',((FieldByName('peso_obtido_mac').AsFloat - qryPad.FieldByName('peso_mac').AsFloat) / qryPad.FieldByName('peso_mac').AsFloat * 100)) ,7) + vSeparador
          else vStrPercDifer := vStrPercDifer + StrRight('',7) + vSeparador;

        // CALOR. MEDIA
        {vStrObtido := vStrObtido + StrRight(iif(FieldByName('caloria_obtida').AsFloat > 0,FieldByName('caloria_obtida').AsString,''),7) + vSeparador;
        vStrPadrao := vStrPadrao + StrRight(iif(qryPad.FieldByName('qtd_caloria').AsFloat > 0 , qryPad.FieldByName('qtd_caloria').AsString, ''),7) + vSeparador;
        Difer := FieldByName('caloria_obtida').AsFloat - qryPad.FieldByName('qtd_caloria').AsFloat;
        vStrDifer := vStrDifer + StrRight(iif(Difer <> 0,FormatFloat('#,##0.00;; ',Difer),''),7) + vSeparador;
        if qryPad.FieldByName('qtd_caloria').AsFloat <> 0
           then vStrPercDifer := vStrPercDifer + StrRight( FormatFloat('#,#0.0;; ',(Difer / qryPad.FieldByName('qtd_caloria').AsFloat * 100)) ,7) + vSeparador
           else vStrPercDifer := vStrPercDifer + StrRight('',7) + vSeparador;}
        vStrObtido := vStrObtido + StrRight(FormatFloat('#,##0.00;; ',FieldByName('caloria_obtida').AsFloat),7) + vSeparador;
        vStrPadrao := vStrPadrao + StrRight(FormatFloat('#,##0.00;; ',qryPad.FieldByName('qtd_caloria').AsFloat),7) + vSeparador;
        vStrDifer := vStrDifer + StrRight(FormatFloat('#,##0.00;; ',FieldByName('caloria_obtida').AsFloat - qryPad.FieldByName('qtd_caloria').AsFloat),7) + vSeparador;
        if qryPad.FieldByName('qtd_caloria').AsFloat <> 0
           then vStrPercDifer := vStrPercDifer + StrRight(FormatFloat('#,##0.00;; ',((FieldByName('caloria_obtida').AsFloat - qryPad.FieldByName('qtd_caloria').AsFloat) / qryPad.FieldByName('qtd_caloria').AsFloat * 100)) ,7) + vSeparador
           else vStrPercDifer := vStrPercDifer + StrRight('',7) + vSeparador;

        // CONV. OVO
        {vStrObtido := vStrObtido + StrRight(iif(FieldByName('racao_ovo_obtida').AsFloat > 0,FieldByName('racao_ovo_obtida').AsString,''),7) + vSeparador;
        vStrPadrao := vStrPadrao + StrRight(iif(qryPad.FieldByName('qtd_racao').AsFloat > 0 , qryPad.FieldByName('qtd_racao').AsString, ''),7) + vSeparador;
        Difer := FieldByName('racao_ovo_obtida').AsFloat - qryPad.FieldByName('qtd_racao').AsFloat;
        vStrDifer := vStrDifer + StrRight(iif(Difer <> 0,FormatFloat('#,##0.00;; ',Difer),''),7) + vSeparador;
        vStrPercDifer := vStrPercDifer + StrRight('',7) + vSeparador;}
        vStrObtido := vStrObtido + StrRight(FormatFloat('#,##0.00;; ',FieldByName('racao_ovo_obtida').AsFloat),7) + vSeparador;
        vStrPadrao := vStrPadrao + StrRight(FormatFloat('#,##0.00;; ',qryPad.FieldByName('qtd_racao').AsFloat),7) + vSeparador;
        vStrDifer := vStrDifer + StrRight(FormatFloat('#,##0.00;; ',FieldByName('racao_ovo_obtida').AsFloat - qryPad.FieldByName('qtd_racao').AsFloat),7) + vSeparador;
        vStrPercDifer := vStrPercDifer + StrRight('',7) + vSeparador;

        // PERCENTUAL DE POSTURA NA SEMANA
        {vStrObtido := vStrObtido + StrRight(iif(FieldByName('postura_obtida_sem').AsFloat > 0,FieldByName('postura_obtida_sem').AsString,''),7) + ' ';
        vStrPadrao := vStrPadrao + StrRight(iif(qryPad.FieldByName('pct_postura').AsFloat > 0 , qryPad.FieldByName('pct_postura').AsString, ''),7)  + ' ';
        Difer := FieldByName('postura_obtida_sem').AsFloat - qryPad.FieldByName('pct_postura').AsFloat;
        vStrDifer := vStrDifer + StrRight(iif(Difer <> 0,FormatFloat('#,##0.00;; ',Difer),''),7) + ' ';
        vStrPercDifer := vStrPercDifer + StrRight('',7) + ' ';}
        vStrObtido := vStrObtido + StrRight(FormatFloat('#,##0.00;; ',FieldByName('postura_obtida_sem').AsFloat),7) + ' ';
        vStrPadrao := vStrPadrao + StrRight(FormatFloat('#,##0.00;; ',qryPad.FieldByName('pct_postura').AsFloat),7)  + ' ';
        vStrDifer := vStrDifer + StrRight(FormatFloat('#,##0.00;; ',FieldByName('postura_obtida_sem').AsFloat - qryPad.FieldByName('pct_postura').AsFloat),7) + ' ';
        vStrPercDifer := vStrPercDifer + StrRight('',7) + ' ';

        // POSTURA POR AVE SEMANA
        {vStrObtido := vStrObtido + StrRight(iif(FieldByName('ovo_ave_semana').AsFloat > 0,FieldByName('ovo_ave_semana').AsString,''),8) + vSeparador;
        vStrPadrao := vStrPadrao + StrRight(iif(qryPad.FieldByName('qtd_ovo_ave').AsFloat > 0 , qryPad.FieldByName('qtd_ovo_ave').AsString, ''),8) + vSeparador;
        Difer := FieldByName('ovo_ave_semana').AsFloat - qryPad.FieldByName('qtd_ovo_ave').AsFloat;
        vStrDifer := vStrDifer + StrRight(iif(Difer <> 0,FormatFloat('#,###0.000;; ',Difer),''),8) + vSeparador;
        vStrPercDifer := vStrPercDifer + StrRight('',8) + vSeparador;}
        vStrObtido := vStrObtido + StrRight(FormatFloat('#,###0.000;; ',FieldByName('ovo_ave_semana').AsFloat),8) + vSeparador;
        vStrPadrao := vStrPadrao + StrRight(FormatFloat('#,###0.000;; ',qryPad.FieldByName('qtd_ovo_ave').AsFloat),8) + vSeparador;
        vStrDifer := vStrDifer + StrRight(FormatFloat('#,###0.000;; ',FieldByName('ovo_ave_semana').AsFloat - qryPad.FieldByName('qtd_ovo_ave').AsFloat),8) + vSeparador;
        vStrPercDifer := vStrPercDifer + StrRight('',8) + vSeparador;

        // PERCENTUAL POSTURA DE AVES ALOJADAS PROD
        {vStrObtido := vStrObtido + StrRight(iif(FieldByName('postura_obtida').AsFloat > 0,FieldByName('postura_obtida').AsString,''),7) + ' ';
        vStrPadrao := vStrPadrao + StrRight(iif(qryPad.FieldByName('pct_postura').AsFloat > 0 , qryPad.FieldByName('pct_postura').AsString, ''),7) + ' ';
        Difer := FieldByName('postura_obtida').AsFloat - qryPad.FieldByName('pct_postura').AsFloat;
        vStrDifer := vStrDifer + StrRight(iif(Difer <> 0,FormatFloat('#,##0.00;; ',Difer),''),7) + ' ';
        vStrPercDifer := vStrPercDifer + StrRight('',7) + ' ';}
        vStrObtido := vStrObtido + StrRight(FormatFloat('#,##0.00;; ',FieldByName('postura_obtida').AsFloat),7) + ' ';
        vStrPadrao := vStrPadrao + StrRight(FormatFloat('#,##0.00;; ',qryPad.FieldByName('pct_postura').AsFloat),7) + ' ';
        vStrDifer := vStrDifer + StrRight(FormatFloat('#,##0.00;; ',FieldByName('postura_obtida').AsFloat - qryPad.FieldByName('pct_postura').AsFloat),7) + ' ';
        vStrPercDifer := vStrPercDifer + StrRight('',7) + ' ';

        // POSTURA DE AVES ALOJADAS PROD
        {vStrObtido := vStrObtido + StrRight(iif(FieldByName('ovo_ave_alojada').AsFloat > 0,FieldByName('ovo_ave_alojada').AsString,''),8) + vSeparador;
        vStrPadrao := vStrPadrao + StrRight(iif(qryPad.FieldByName('qtd_ovo_ave').AsFloat > 0 , qryPad.FieldByName('qtd_ovo_ave').AsString, ''),8) + vSeparador;
        Difer := FieldByName('ovo_ave_alojada').AsFloat - qryPad.FieldByName('qtd_ovo_ave').AsFloat;
        vStrDifer := vStrDifer + StrRight(iif(Difer <> 0,FormatFloat('#,###0.000;; ',Difer),''),8) + vSeparador;
        vStrPercDifer := vStrPercDifer + StrRight('',8) + vSeparador;}
        vStrObtido := vStrObtido + StrRight(FormatFloat('#,###0.000;; ',FieldByName('ovo_ave_alojada').AsFloat),8) + vSeparador;
        vStrPadrao := vStrPadrao + StrRight(FormatFloat('#,###0.000;; ',qryPad.FieldByName('qtd_ovo_ave').AsFloat),8) + vSeparador;
        vStrDifer := vStrDifer + StrRight(FormatFloat('#,###0.000;; ',FieldByName('ovo_ave_alojada').AsFloat - qryPad.FieldByName('qtd_ovo_ave').AsFloat),8) + vSeparador;
        vStrPercDifer := vStrPercDifer + StrRight('',8) + vSeparador;

        // OVO INCUBAV. AVES SEMANA
        {vStrObtido := vStrObtido + StrRight(iif(FieldByName('postura_incub_sem').AsFloat > 0,FieldByName('postura_incub_sem').AsString,''),7) + ' ';
        vStrPadrao := vStrPadrao + StrRight(iif(qryPad.FieldByName('pct_postura').AsFloat > 0 , qryPad.FieldByName('pct_postura').AsString, ''),7) + ' ';
        Difer := FieldByName('postura_incub_sem').AsFloat - qryPad.FieldByName('pct_postura').AsFloat;
        vStrDifer := vStrDifer + StrRight(iif(Difer <> 0,FormatFloat('#,##0.00;; ',Difer),''),7) + ' ';
        vStrPercDifer := vStrPercDifer + StrRight('',7) + ' ';}
        vStrObtido := vStrObtido + StrRight(FormatFloat('#,##0.00;; ',FieldByName('postura_incub_sem').AsFloat),7) + ' ';
        vStrPadrao := vStrPadrao + StrRight(FormatFloat('#,##0.00;; ',qryPad.FieldByName('pct_postura').AsFloat),7) + ' ';
        vStrDifer := vStrDifer + StrRight(FormatFloat('#,##0.00;; ',FieldByName('postura_incub_sem').AsFloat - qryPad.FieldByName('pct_postura').AsFloat),7) + ' ';
        vStrPercDifer := vStrPercDifer + StrRight('',7) + ' ';

        // OVO INCUBAV. AVES SEMANA
        {vStrObtido := vStrObtido + StrRight(iif(FieldByName('ovo_ave_incub_sem').AsFloat > 0,FieldByName('ovo_ave_incub_sem').AsString,''),8) + vSeparador;
        vStrPadrao := vStrPadrao + StrRight(iif(qryPad.FieldByName('ovo_inc_ave').AsFloat > 0 , qryPad.FieldByName('ovo_inc_ave').AsString, ''),8) + vSeparador;
        Difer := FieldByName('ovo_ave_incub_sem').AsFloat - qryPad.FieldByName('ovo_inc_ave').AsFloat;
        vStrDifer := vStrDifer + StrRight(iif(Difer <> 0,FormatFloat('#,###0.000;; ',Difer),''),8) + vSeparador;
        vStrPercDifer := vStrPercDifer + StrRight('',8) + vSeparador;}
        vStrObtido := vStrObtido + StrRight(FormatFloat('#,###0.000;; ',FieldByName('ovo_ave_incub_sem').AsFloat),8) + vSeparador;
        vStrPadrao := vStrPadrao + StrRight(FormatFloat('#,###0.000;; ',qryPad.FieldByName('ovo_inc_ave').AsFloat),8) + vSeparador;
        vStrDifer := vStrDifer + StrRight(FormatFloat('#,###0.000;; ',FieldByName('ovo_ave_incub_sem').AsFloat - qryPad.FieldByName('ovo_inc_ave').AsFloat),8) + vSeparador;
        vStrPercDifer := vStrPercDifer + StrRight('',8) + vSeparador;

        // OVO INCUBAV. ALOJ. PROD.
        {vStrObtido := vStrObtido + StrRight(iif(FieldByName('postura_incub_aloj').AsFloat > 0,FieldByName('postura_incub_aloj').AsString,''),7) + ' ';
        vStrPadrao := vStrPadrao + StrRight(iif(qryPad.FieldByName('pct_postura').AsFloat > 0 , qryPad.FieldByName('pct_postura').AsString, ''),7) + ' ';
        Difer := FieldByName('postura_incub_aloj').AsFloat - qryPad.FieldByName('pct_postura').AsFloat;
        vStrDifer := vStrDifer + StrRight(iif(Difer <> 0,FormatFloat('#,##0.00;; ',Difer),''),7) + ' ';
        vStrPercDifer := vStrPercDifer + StrRight('',7) + ' ';}
        vStrObtido := vStrObtido + StrRight(FormatFloat('#,##0.00;; ',FieldByName('postura_incub_aloj').AsFloat),7) + ' ';
        vStrPadrao := vStrPadrao + StrRight(FormatFloat('#,##0.00;; ',qryPad.FieldByName('pct_postura').AsFloat),7) + ' ';
        vStrDifer := vStrDifer + StrRight(FormatFloat('#,##0.00;; ',FieldByName('postura_incub_aloj').AsFloat - qryPad.FieldByName('pct_postura').AsFloat),7) + ' ';
        vStrPercDifer := vStrPercDifer + StrRight('',7) + ' ';

        // OVO INCUBAV. AVES SEMANA
        {vStrObtido := vStrObtido + StrRight(iif(FieldByName('ovo_ave_incub_aloj').AsFloat > 0,FieldByName('ovo_ave_incub_aloj').AsString,''),8) + vSeparador;
        vStrPadrao := vStrPadrao + StrRight(iif(qryPad.FieldByName('ovo_inc_ave').AsFloat > 0 , qryPad.FieldByName('ovo_inc_ave').AsString, ''),8) + vSeparador;
        Difer := FieldByName('ovo_ave_incub_aloj').AsFloat - qryPad.FieldByName('ovo_inc_ave').AsFloat;
        vStrDifer := vStrDifer + StrRight(iif(Difer <> 0,FormatFloat('#,###0.000;; ',Difer),''),8) + vSeparador;
        vStrPercDifer := vStrPercDifer + StrRight('',8) + vSeparador;}
        vStrObtido := vStrObtido + StrRight(FormatFloat('#,###0.000;; ',FieldByName('ovo_ave_incub_aloj').AsFloat),8) + vSeparador;
        vStrPadrao := vStrPadrao + StrRight(FormatFloat('#,###0.000;; ',qryPad.FieldByName('ovo_inc_ave').AsFloat),8) + vSeparador;
        vStrDifer := vStrDifer + StrRight(FormatFloat('#,###0.000;; ',FieldByName('ovo_ave_incub_aloj').AsFloat - qryPad.FieldByName('ovo_inc_ave').AsFloat),8) + vSeparador;
        vStrPercDifer := vStrPercDifer + StrRight('',8) + vSeparador;

        // APROVEITAMENTO
        {vStrObtido := vStrObtido + StrRight(iif(FieldByName('aprov_ovo_obtido').AsFloat > 0,FieldByName('aprov_ovo_obtido').AsString,''),8);
        vStrPadrao := vStrPadrao + StrRight(iif(qryPad.FieldByName('aprov_ovo').AsFloat > 0 , qryPad.FieldByName('aprov_ovo').AsString, ''),8);
        Difer := FieldByName('aprov_ovo_obtido').AsFloat - qryPad.FieldByName('aprov_ovo').AsFloat;
        vStrDifer := vStrDifer + StrRight(iif(Difer <> 0,FormatFloat('#,#0.0;; ',Difer),''),8);
        vStrPercDifer := vStrPercDifer + StrRight('',8);}
        vStrObtido := vStrObtido + StrRight(FormatFloat('#,##0.00;; ',FieldByName('aprov_ovo_obtido').AsFloat),8);
        vStrPadrao := vStrPadrao + StrRight(FormatFloat('#,##0.00;; ',qryPad.FieldByName('aprov_ovo').AsFloat),8);
        vStrDifer := vStrDifer + StrRight(FormatFloat('#,##0.00;; ',FieldByName('aprov_ovo_obtido').AsFloat - qryPad.FieldByName('aprov_ovo').AsFloat),8);
        vStrPercDifer := vStrPercDifer + StrRight('',8);
      end
     else
      begin
        vStrObtido := vStrObtido + '             |               |       |       |                |                |                |                |    ';
        vStrPadrao := vStrPadrao + '             |               |       |       |                |                |                |                |    ';
        vStrDifer  := vStrDifer  + '             |               |       |       |                |                |                |                |    ';
        vStrPercDifer := vStrPercDifer + '             |               |       |       |                |                |                |                |    ';
      end;
  vRel.lines.Add(vStrPadrao);
  vRel.lines.Add(vStrObtido);
  vRel.lines.Add(vStrDifer);
  vRel.lines.Add(vStrPercDifer);
  vRel.lines.Add(Repete('-',132));



  
end;

procedure TFRelatDiarioQRP.CabecaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   vRel.lines.clear;
   GeraRelatorioDaIdade(qryLotescod_lote_num.asinteger,qryLotesidade.asinteger);
end;


procedure TFRelatDiarioQRP.BuscaDados(vLote, vIdade: integer);
begin
  qryLot.Filtered := False;
  qrySda.Filtered := False;
  qryEnd.Filtered := False;
  qryAvesProd.Filtered := False;
  qryBoxF.Filtered := False;
  qryBoxM.Filtered := False;
  qryRac.Filtered := False;
  qryOvo.Filtered := False;
  qryDes.Filtered := False;
  qryPad.Filtered := False;
  qryLoc.Filtered := False;
  qryGra.Filtered := False;
  qryMed.Filtered := False;
  qryInc.Filtered := False;

  qryLot.Filter := '';
  qrySda.Filter := '';
  qryEnd.Filter := '';
  qryAvesProd.Filter := '';
  qryBoxF.Filter := '';
  qryBoxM.Filter := '';
  qryRac.Filter := '';
  qryOvo.Filter := '';
  qryDes.Filter := '';
  qryPad.Filter := '';
  qryLoc.Filter := '';
  qryGra.Filter := '';
  qryMed.Filter := '';
  qryInc.Filter := '';

  with qryEmp do
     Open;

  // Ativa todas as consultas necessarias do relatorio diario
  with qryLot do
   begin
     Close;
     ParamByName('Lote').AsInteger := vLote;
     ParamByName('Idade').AsInteger := vIdade;
     Open;
   end;

  with qrySda do
   begin
     Close;
     Open;
   end;

  with qryEnd do
   begin
     Close;
     Open;
   end;

  with qryAvesProd do
   begin
     Close;
     Open;
   end;

  with qryBoxF do
   begin
     Close;
     Open;
   end;

  with qryBoxM do
   begin
     Close;
     Open;
   end;

  with qryMedMaster do
   begin
     Close;
     Open;
   end;

  with qryMed do
   begin
     Close;
     Open;
   end;

  with qryRac do
   begin
     Close;
     Open;
   end;

  with qryOvo do
   begin
     Close;
     Open;
   end;

  with qryDes do
   begin
     Close;
     Open;
   end;

  with qryPad do
   begin
     Close;
     Open;
   end;

  with qryLoc do
   begin
     Close;
     Open;
   end;

  with qryGra do
   begin
     Close;
     Open;
   end;

  with qryInc do
   begin
     Close;
     Open;
   end;

  qryLot.Filtered := True;
  qrySda.Filtered := True;
  qryEnd.Filtered := True;
  qryAvesProd.Filtered := True;
  qryBoxF.Filtered := True;
  qryBoxM.Filtered := True;
  qryRac.Filtered := True;
  qryOvo.Filtered := True;
  qryDes.Filtered := True;
  qryPad.Filtered := True;
  qryLoc.Filtered := True;
  qryGra.Filtered := True;
  qryMed.Filtered := True;
  qryInc.Filtered := True;
end;

end.

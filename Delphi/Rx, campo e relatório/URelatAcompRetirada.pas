{*******************************************************************************}
{                          Avecom Sistemas                                      }
{*******************************************************************************}
{                                                                               }
{ Programa:    UMenu.pas                                                        }
{ Objetivo:   Relatorio Planilha de Nascimentos 2                               }
{ Histórico de Alterações:                                                      }
{                                                                               }
{ Data         Descrição                                         Autor          }
{06/03/2003    Criação                                                          }
{*******************************************************************************}
unit URelatAcompRetirada;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPai, Db, DBTables, Menus, SpeedBar, ExtCtrls, Funcoes, DBCtrls, StdCtrls,
  Mask, ToolEdit, CurrEdit;

type
  TFRelatAcompRetirada = class(TFPai)
    Panel1: TPanel;
    qryEmp: TQuery;
    qryNomeIncubatorio: TQuery;
    qryDados: TQuery;
    qryDadoscod_inc_depto: TStringField;
    qryDadosdat_incub: TDateTimeField;
    qryDadoscod_lote_num: TIntegerField;
    qryDadosidade: TSmallintField;
    qryDadoscod_ovo: TStringField;
    qryDadoside_ave: TStringField;
    qryDadosnro_lote: TStringField;
    qryDadoscod_lm: TStringField;
    qryDadoscod_lf: TStringField;
    qryDadosnro_est: TStringField;
    qryDadoside_espec: TStringField;
    qryDadosqtd_ovo_incub: TIntegerField;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    detDat_Inc: TDateEdit;
    qryEclosaoPadra: TQuery;
    qryEclosaoPadrapct_eclosao: TFloatField;
    qryDadosnro_maq_inc: TSmallintField;
    qryEstocagem: TQuery;
    qryEstocagemcod_lote_num: TIntegerField;
    qryEstocagemdat_post: TDateTimeField;
    qryEstocagemidade: TSmallintField;
    qryEstocagemqtd_ovo: TIntegerField;
    qryDadosdat_aloj_inicial: TDateTimeField;
    qryNomeIncubatorionome: TStringField;
    qryDadoscod_sala_inc: TStringField;
    qryDadosind_lado_sala_inc: TStringField;
    qryDadosnro_maq_eclo: TSmallintField;
    qryDadoscod_sala_eclo: TStringField;
    qryDadosind_lado_sala_eclo: TStringField;
    qryDadoshor_incub: TDateTimeField;
    qryDadosgranja: TStringField;
    qryDadoshor_transf_fim: TDateTimeField;
    qryPrevisaoNascimento: TQuery;
    qryDadoshor_prev_eclo: TDateTimeField;
    chbVisao: TCheckBox;
    qryComercial: TQuery;
    StringField1: TStringField;
    DateTimeField1: TDateTimeField;
    IntegerField1: TIntegerField;
    SmallintField1: TSmallintField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    SmallintField2: TSmallintField;
    StringField5: TStringField;
    StringField6: TStringField;
    SmallintField3: TSmallintField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    DateTimeField2: TDateTimeField;
    StringField13: TStringField;
    DateTimeField3: TDateTimeField;
    DateTimeField4: TDateTimeField;
    DateTimeField5: TDateTimeField;
    IntegerField2: TIntegerField;
    qryNormal: TQuery;
    StringField14: TStringField;
    DateTimeField6: TDateTimeField;
    IntegerField3: TIntegerField;
    SmallintField4: TSmallintField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    SmallintField5: TSmallintField;
    StringField18: TStringField;
    StringField19: TStringField;
    SmallintField6: TSmallintField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    DateTimeField7: TDateTimeField;
    StringField26: TStringField;
    DateTimeField8: TDateTimeField;
    DateTimeField9: TDateTimeField;
    DateTimeField10: TDateTimeField;
    IntegerField4: TIntegerField;
    chbModeloNovo: TCheckBox;
    rdLinhagem: TRadioGroup;
    Label8: TLabel;
    edtLF: TEdit;
    dlcLF: TDBLookupComboBox;
    qryLM: TQuery;
    qryLMcod_linhagem: TStringField;
    qryLMdes_abrev: TStringField;
    dtsLM: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure spiLimpaCamposClick(Sender: TObject);
    procedure spiImprimirClick(Sender: TObject);
    procedure edtLFChange(Sender: TObject);
    procedure edtLFExit(Sender: TObject);
    procedure dlcLFCloseUp(Sender: TObject);
    procedure dlcLFDropDown(Sender: TObject);
  private
    { Private declarations }
    procedure GeraRelatorio();
    function VerificaCampos():Boolean;
  public
    { Public declarations }
    procedure exibe();
  end;

var
  FRelatAcompRetirada: TFRelatAcompRetirada;
  vRel   : TRelatorio;
  vFolha : Integer;
  vPrimeiraPagina : Boolean;

implementation

uses UMenu, UVisProgressoPaginacao, UMensagens, uRelatAcompRetiradaQRP;

{$R *.DFM}

procedure TFRelatAcompRetirada.exibe();
begin
  if FRelatAcompRetirada = nil
    then FRelatAcompRetirada := TFRelatAcompRetirada.Create(nil);

    FRelatAcompRetirada.qryLM.Close;
    FRelatAcompRetirada.qryLM.Open;

  with FRelatAcompRetirada do
      show;

end;

procedure TFRelatAcompRetirada.GeraRelatorio;
var
  vStr            : String;
  vContLinha      : Integer;
  vPodeImprimir   : boolean;
  vPrimeiraLinha  : boolean;

  vIdentidade : string;

  vSomaQtdInc : integer;
  vQtd_X_Dias : real;

  vPintosPrev     : real;

  vTLQtdInc      : integer;    vTGQtdInc      : integer;
  vTotalSomaG    : real;       vTotalSomaL    : real;

  vTLPintosPrev  : real;       vTGPintosPrev  : real;

  vEstocagem     : real;       vSomaGQtd_X_Dias : real;
  vSomaLQtd_X_Dias : real;     vSomaGQtdInc   : integer;
  vSomaLQtdInc     : integer;
  //TL ou L indica total do lote
  //TG ou G indica total geral

  vLote     : integer;

  procedure QuebraLocal();
  begin
    // Cabeçalho

    vStr := '';
    vRel.Add ('','');
    vRel.Add ('','                                       CODIGO  MAQ.  HORA   MAQ.  HORA  RETIR IDA COD QT OVOS  PINTOS -- ECLOSAO -- ESTO-  HORA   MACHOS     PINTOS    PINTOS  PINTOS ECLOSAO');
    vRel.Add ('','GRANJA             IDENT. DO LOTE      REDUZ. INCUB. INCUB ECLOS. TRANS PREV.  DE OVO  INCUB.   PREV. PREVIS PADRAO CAGEM SAQUE ELIMINADOS  VENDAVEIS REPASSE ELIMIN.    REAL');
    vRel.Add ('','------------------ ------------------- ------ ------ ----- ------ ----- ----- --- --- ------- ------- ------ ------ ----- ----- ---------- ---------- ------- ------- -------');
    vRel.Add ('','');
    vContLinha := vContLinha + 5;
  end;

  procedure Cabecalho();
  begin
    // Cabeçalho
    // Cabeçalho Inicial
    inc(vFolha);
    vStr := '';
    vStr := vStr + StrLeft(qryEmp.FieldByName('empresa').AsString,85);
    vStr := vStr + StrRight('CONTROLE DE INCUBATORIO',30);
    vStr := vStr + StrRight('FOLHA: ' + StrRight('000'+ inttostr(vFolha),4),77);

    if vPrimeiraPagina  then
      vRel.Add (visComp,vStr)
    else
      vRel.Add (visNovaPagina + visComp,vStr);

    vPrimeiraPagina := False;
    vStr := '';
    vStr := vStr + StrLeft('EMISSAO: ' + DateToStr(Now),80);
    vStr := vStr + StrRight('  ACOMPANHAMENTO DE RETIRADA DE PINTOS',40);
    vStr := vStr + StrRight('AVECOM SISTEMAS',72);
    vRel.Add ('',vStr);
    vStr := '';
    vRel.Add ('',Repete('*',192));

    qryNomeIncubatorio.close;
    qryNomeIncubatorio.parambyname('cod_inc_depto').asstring := qrydados.fieldbyname('cod_inc_depto').asstring;
    qryNomeIncubatorio.open;

    vStr := StrLeft('INC.: '+qryNomeIncubatorio.fieldbyname('nome').asstring,85);
    vStr := vStr + StrLeft('DATA INCUB. : '+datetostr(qrydados.fieldbyname('dat_incub').asdatetime),40);
    vStr := vStr + Strright('NASCTO: '+datetostr(qrydados.fieldbyname('dat_incub').asdatetime+21),67);
    vRel.Add ('',vStr);
    vRel.Add ('',Repete('-',192));

    vContLinha := 5;
    QuebraLocal;
  end;

begin
 //cabecalho;
  with qryDados do
  begin

      Cabecalho;

      vTLQtdInc        := 0;       vTGQtdInc        := 0;
      vTotalSomaL      := 0;       vTotalSomaG      := 0;
      vSomaQtdInc      := 0;

      vTLPintosPrev    := 0;       vTGPintosPrev    := 0;

      vEstocagem       := 0;
      vSomaGQtd_X_Dias := 0;       vSomaLQtd_X_Dias :=0;
      vSomaGQtdInc     := 0;       vSomaLQtdInc     := 0;

      while (Not Eof) do

      begin

         if (vContLinha >= 65) then  Cabecalho;

         vStr := '';

         vStr := vStr + Strleft(FieldByName('granja').Asstring,18);
         vStr := vStr + ' ';
         vIdentidade :=  FieldByName('ide_ave').asstring + FieldByName('nro_lote').asstring +' '+ FieldByName('cod_lf').asstring + fieldByName('cod_lm').asstring + FieldByName('ide_espec').asstring + ' '+FieldByName('nro_est').asstring;
         vStr := vStr + Strleft(vIdentidade,19);
         vStr := vStr + Strright(inttostr(FieldByName('cod_lote_num').Asinteger) ,7);
         vStr := vStr + ' ';
         // vStr := vStr + Strleft(FieldByName('cod_sala_inc').asstring+' '+FieldByName('ind_lado_sala_inc').asstring+' '+inttostr(FieldByName('nro_maq_inc').Asinteger) ,7);
         vStr := vStr + Strleft( '  ' + FieldByName('nro_maq_inc').AsString ,7);
         vStr := vStr + Strright(formatdatetime('hh:mm',FieldByName('hor_incub').Asdatetime),5);
         vStr := vStr + ' ';
         // vStr := vStr + Strleft(FieldByName('cod_sala_eclo').asstring+' '+FieldByName('ind_lado_sala_eclo').asstring+' '+inttostr(FieldByName('nro_maq_eclo').Asinteger) ,7);
         vStr := vStr + Strleft('  ' + FieldByName('nro_maq_eclo').AsString,7);
         vStr := vStr + Strright(formatdatetime('hh:mm',FieldByName('hor_transf_fim').Asdatetime),5);

         // Hora Prevista Retirada
         vStr := vStr + Strright(formatdatetime('hh:mm',FieldByName('hor_prev_eclo').Asdatetime),6);

         vStr := vStr + Strright(inttostr(FieldByName('idade').Asinteger),4);
         vStr := vStr + Strright(FieldByName('cod_ovo').Asstring,4);

         //Quantidade Incubada
         vStr := vStr + Strright(FormatFloat('#,0.;; ',FieldByName('qtd_ovo_incub').Asinteger),8);

         //Previsão de Nascimento
         qryPrevisaoNascimento.close;
         qryPrevisaoNascimento.parambyname('cod_inc_depto').asstring    :=  fieldbyname('cod_inc_depto').asstring;
         qryPrevisaoNascimento.parambyname('dat_incub').asdatetime    :=  fieldbyname('dat_incub').asdatetime;
         qryPrevisaoNascimento.parambyname('cod_lote_num').asinteger    :=  fieldbyname('cod_lote_num').asinteger;
         qryPrevisaoNascimento.parambyname('idade').asinteger    :=  fieldbyname('idade').asinteger;
         qryPrevisaoNascimento.parambyname('cod_ovo').asstring := fieldbyname('cod_ovo').asstring;
         qryPrevisaoNascimento.open;

         vPintosPrev := round((FieldByName('qtd_ovo_incub').Asinteger * qryPrevisaoNascimento.FieldByName('pct_eclosao_prev').Asfloat) / 100);
         vStr := vStr + Strright(formatFloat('#,0.;; ',vPintosPrev),8);
         vStr := vStr + Strright(formatFloat('#,##0.00;; ',qryPrevisaoNascimento.FieldByName('pct_eclosao_prev').Asfloat),7);

         //Eclosao Padrao
         qryEclosaoPadra.close;
         qryEclosaoPadra.parambyname('cod_lm').asstring    :=  fieldbyname('cod_lm').asstring;
         qryEclosaoPadra.parambyname('cod_lf').asstring    :=  fieldbyname('cod_lf').asstring;
         qryEclosaoPadra.parambyname('ide_ave').asstring   :=  fieldbyname('ide_ave').asstring;
         qryEclosaoPadra.parambyname('nro_est').asstring   :=  fieldbyname('nro_est').asstring;
         qryEclosaoPadra.parambyname('idade').asinteger    :=  fieldbyname('idade').asinteger;
         qryEclosaoPadra.parambyname('data').asdatetime    :=  fieldbyname('dat_aloj_inicial').asdatetime;
         qryEclosaoPadra.open;

         vStr := vStr + Strright(FormatFloat('#,##0.00;; ',qryEclosaoPadra.FieldByName('pct_eclosao').Asfloat),7);

         qryEstocagem.close;
         qryEstocagem.parambyname('COD_INC_DEPTO').asstring     := fieldbyname('COD_INC_DEPTO').asstring;
         qryEstocagem.parambyname('COD_LOTE_NUM').asinteger     := fieldbyname('COD_LOTE_NUM').asinteger;
         qryEstocagem.parambyname('DAT_INCUB').asdatetime       := fieldbyname('DAT_INCUB').asdatetime;
         qryEstocagem.open;

         vSomaQtdInc := 0;
         vQtd_X_Dias := 0;
         while not qryEstocagem.eof do
         begin
            vSomaQtdInc := vSomaQtdInc + qryEstocagem.fieldbyname('qtd_ovo').asinteger;
            vQtd_X_Dias := vQtd_X_Dias + ( qryEstocagem.fieldbyname('qtd_ovo').asinteger * ( fieldbyname('DAT_INCUB').asdatetime - qryEstocagem.fieldbyname('Dat_Post').asdatetime ) );
            qryEstocagem.next;
         end;

         try
           vEstocagem := 0;
           if vSomaQtdInc > 0 then
              vEstocagem := vQtd_X_Dias / vSomaQtdInc;
         except
           vEstocagem := 0;
         end;

         vSomaLQtd_X_Dias := vSomaLQtd_X_Dias + vQtd_X_Dias;
         vSomaLQtdInc     := vSomaLQtdInc     + vSomaQtdInc;

         vStr := vStr +  StrRight(FormatFloat('#,#0.0;; ',vEstocagem),6);

         vRel.Add ('',vStr);
         inc(vContLinha);
         if (vContLinha >= 65) then  Cabecalho;
         //Acrescentar ao Total do lote

         vTLQtdInc    := vTLQtdInc    + FieldByName('qtd_ovo_incub').Asinteger;

         vTLPintosPrev := vTLPintosPrev + vPintosPrev;

         FMenu.ggeProgresso.Progress := FMenu.ggeProgresso.Progress + 1;
         vTotalSomaL := vTotalSomaL + (FieldByName('qtd_ovo_incub').Asinteger * qryEclosaoPadra.FieldByName('pct_eclosao').Asfloat ) / 10000;
         vLote     := fieldbyname('cod_lote_num').asinteger;

         Next;

         if (EOF) or
            (vLote <> fieldbyname('cod_lote_num').asinteger)  then
         begin

            //imprimir o total do lote
            if (vContLinha >= 65) then  Cabecalho;

            vRel.Add ('','                                                                                                                          -----|----------|----------|-------|-------|-------');
            inc(vContLinha);
            vStr := 'TOTAL LOTE.......................................................................... ';
            vStr := vStr + StrRight(FormatFloat('#,0.;; ',vTLQtdInc),8);
            vStr := vStr + StrRight(FormatFloat('#,0.;; ',vTLPintosPrev),8);

            //% Eclosao Previsto
            vStr := vStr + StrRight(FormatFloat('#,##0.00;; ',((vTLPintosPrev * 100 ) / vTLQtdInc) ),7);

            //% Eclosao Padrao
            vStr := vStr + StrRight(FormatFloat('#,##0.00;; ',((vTotalSomaL * 10000 ) / vTLQtdInc) ),7);

            // Estocagem
            vEstocagem := vSomaLQtd_X_Dias / vSomaLQtdInc;
            vStr := vStr + StrRight(FormatFloat('#,#0.0;; ',vEstocagem),6);
            vStr := vStr + '      |          |          |       |       |       ';
            vRel.Add ('',vStr);
            inc(vContLinha);
            vStr      := '                                                                                                                          -----|----------|----------|-------|-------|-------';
            vRel.Add ('',vStr);
            inc(vContLinha);

            if (vContLinha >= 65) then  Cabecalho;

            vRel.Add ('','');
            inc(vContLinha);
            if (vContLinha >= 65) then  Cabecalho;

            //Acrescentar ao total geral
            vTGQtdInc        := vTGQtdInc        + vTLQtdInc    ;

            vTGPintosPrev    := vTGPintosPrev    + vTLPintosPrev;

            vTotalSomaG      := vTotalSomaG      + vTotalSomaL  ;
            vSomaGQtd_X_Dias := vSomaGQtd_X_Dias + vSomaLQtd_X_Dias;
            vSomaGQtdInc     := vSomaGQtdInc     + vSomaLQtdInc;

            //Zerar os totais do lote
            vTLQtdInc    := 0;
            vTLPintosPrev:= 0;
            vSomaLQtd_X_Dias := 0;  vSomaLQtdInc     := 0;       vTotalSomaL      := 0;

            if (EOF) or
               (vLote = fieldbyname('cod_lote_num').asinteger)  then
            begin
                //Total Geral
                if (vContLinha >= 65) then  Cabecalho;

                vRel.Add ('','                                                                                                                          -----|----------|----------|-------|-------|-------');
                inc(vContLinha);
                vStr:='TOTAL GERAL......................................................................... ';
                vStr := vStr + StrRight(FormatFloat('#,0.;; ',vTGQtdInc),8);
                vStr := vStr + StrRight(FormatFloat('#,0.;; ',vTGPintosPrev),8);

                //% Eclosao Previsto
                vStr := vStr + StrRight(FormatFloat('#,##0.00;; ',((vTGPintosPrev * 100 ) / vTGQtdInc) ),7);

                //% Eclosao Padrao
                vStr := vStr + StrRight(FormatFloat('#,##0.00;; ',((vTotalSomaG * 10000 ) / vTGQtdInc) ),7);

                //Estocagem
                vEstocagem := vSomaGQtd_X_Dias / vSomaGQtdInc;
                vStr := vStr +  StrRight(FormatFloat('#,#0.0;; ',vEstocagem),6);
                vStr := vStr + '      |          |          |       |       |       ';
                vRel.Add ('',vStr);
                inc(vContLinha);
                vStr      := '                                                                                                                          -----|----------|----------|-------|-------|-------';
                vRel.Add ('',vStr);

                if (vContLinha >= 65) then  Cabecalho;

            end;
         end;
      end;
  end;
end;

procedure TFRelatAcompRetirada.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  action := cafree;
  FRelatAcompRetirada := nil;
end;


procedure TFRelatAcompRetirada.FormCreate(Sender: TObject);
begin
  inherited;
  SetBounds(0, 0, width, Height);
end;

function TFRelatAcompRetirada.VerificaCampos():Boolean;
begin
  Result := False;

  if detDat_Inc.Date <= 0 then
  begin
      MessageDlg(Format(Msg00011,['Data Incubação']), mtInformation, [mbOK], 0);
      try detDat_Inc.SetFocus finally end;
      Exit;
  end;
  Result := True;
end;

procedure TFRelatAcompRetirada.spiLimpaCamposClick(Sender: TObject);
begin
  inherited;
  detDat_Inc.clear;
  try detDat_Inc.SetFocus finally end;
end;

procedure TFRelatAcompRetirada.spiImprimirClick(Sender: TObject);
var
  StrSql : String;
begin
  inherited;
  if Not VerificaCampos then  Exit;

  if chbModeloNovo.Checked then
  begin
    FRelatAcompRetiradaQRP.Exibe();
    exit;
  end;

  {qryEmp.Open;

  vFolha := 0;
  StrSql := '';
  with qryDados do
  begin

     close;

     if chbVisao.checked then
        qryDados.sql.text := qryComercial.sql.text
     else
        qryDados.sql.text := qryNormal.sql.text;



     parambyname('dat_incub').asdatetime := detDat_Inc.date;
     parambyname('cod_inc_depto').asstring := Incubatorio;
     Open;
     if not isempty then
     begin
        // Gera o Relatorio
        FMenu.ggeProgresso.MinValue := 0;
        FMenu.ggeProgresso.MaxValue := RecordCount;
        FMenu.ggeProgresso.Progress := 0;
        FMenu.ggeProgresso.Visible  := True;

        vRel := TRelatorio.Create;
        vRel.Tudo_Maius := True; // todos os caracteres maiusculos
        vPrimeiraPagina := True;
        GeraRelatorio;
        FMenu.ggeProgresso.Visible  := False;;
        FVisProgressoPaginacao.Exibe(vRel, False, 6, False);  // exibe o relatorio
     end
     else
       MessageDlg(Msg00013, mtInformation, [mbOk], 0);
  end;  }
end;

procedure TFRelatAcompRetirada.edtLFChange(Sender: TObject);
begin
  inherited;
  if Length(edtLF.Text) = (edtLF.MaxLength) then
     SelectNext(ActiveControl, True, True);
end;

procedure TFRelatAcompRetirada.edtLFExit(Sender: TObject);
begin
  inherited;
  dlcLF.KeyValue := edtLF.Text;
end;

procedure TFRelatAcompRetirada.dlcLFCloseUp(Sender: TObject);
begin
  inherited;
  edtLF.Text := qryLM.FieldByName('Cod_linhagem').AsString;
end;

procedure TFRelatAcompRetirada.dlcLFDropDown(Sender: TObject);
begin
  inherited;
  with qryLM do
  begin
      Close;
      Open;
  end;
end;

end.

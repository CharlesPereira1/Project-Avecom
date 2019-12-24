inherited FMovimentoUsoVacinas: TFMovimentoUsoVacinas
  Tag = 39
  Left = 349
  Top = 238
  Caption = 'Consumo de Insumos'
  ClientHeight = 346
  ClientWidth = 650
  FormStyle = fsMDIChild
  Position = poDefaultPosOnly
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Label14: TLabel [0]
    Left = 24
    Top = 306
    Width = 58
    Height = 14
    Caption = 'Quantidade:'
  end
  inherited Panel2: TPanel
    Width = 650
    inherited spbSistema: TSpeedBar
      Left = 535
    end
    inherited spbFerramentas: TSpeedBar
      Width = 380
      inherited spiImprimir: TSpeedItem [1]
      end
      inherited spiAdicionar: TSpeedItem [2]
        OnClick = AdicionarClick
      end
      inherited spiModificar: TSpeedItem [3]
        OnClick = ModificarClick
      end
      inherited spiExcluir: TSpeedItem [4]
        OnClick = ExcluirClick
      end
      inherited spiLimpaCampos: TSpeedItem [5]
        OnClick = LimpaCamposClick
      end
      inherited spiConsulta: TSpeedItem [6]
        OnClick = ConsultaClick
      end
      inherited spiVoltar: TSpeedItem
        OnClick = VoltarClick
      end
      object Responsavel: TSpeedItem
        Caption = 'Responsável'
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D800000000000000000000001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
          DDDDDD000000DDDDDDD0FFFFFFFF0D000000DDDDDDD0FFFFFFFF0D000000DDDD
          D000007FFFFF0D000000DDDDD0FBFB0FFFF70D000000DDDDD00FBF30FF70DD00
          0000DDDDD0F03BF3000DDD000000DDD000B3BFBFB0DDDD000000DDD0FBFBFBFB
          F0DDDD000000DDD73F0F0FBFB0DDDD000000DDDD0B00FBFBF0DDDD000000DDDD
          D0BFBFBFB0DDDD000000D0000CCCCCCCC4DDDD000000DDDDD4CCCCCCC4DDDD00
          0000DDDDDD4CCCCC4DDDDD000000DDDDDDD44444DDDDDD000000DDDDDDDDDDDD
          DDDDDD000000DDDDDDDDDDDDDDDDDD000000}
        Hint = 'Responsáveis do Movimento'
        Spacing = 1
        Left = 344
        Top = 2
        Visible = True
        OnClick = ResponsavelClick
        SectionName = 'Menu1'
      end
    end
  end
  object ntbPaginas: TNotebook [2]
    Left = 0
    Top = 37
    Width = 650
    Height = 309
    Align = alClient
    Color = clSilver
    ParentColor = False
    TabOrder = 1
    object TPage
      Left = 0
      Top = 0
      Caption = 'Uso de Vacinas'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 650
        Height = 309
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 24
          Top = 57
          Width = 60
          Height = 14
          Caption = 'Data Movto.:'
        end
        object Label4: TLabel
          Left = 24
          Top = 87
          Width = 37
          Height = 14
          Caption = 'Insumo:'
        end
        object Label5: TLabel
          Left = 24
          Top = 117
          Width = 59
          Height = 14
          Caption = 'Fornecedor:'
        end
        object Label6: TLabel
          Left = 24
          Top = 212
          Width = 55
          Height = 14
          Caption = 'No. Partida:'
        end
        object Label7: TLabel
          Left = 24
          Top = 241
          Width = 58
          Height = 14
          Caption = 'Quantidade:'
        end
        object Label3: TLabel
          Left = 264
          Top = 182
          Width = 44
          Height = 14
          Caption = 'Validade:'
        end
        object Label2: TLabel
          Left = 25
          Top = 29
          Width = 24
          Height = 14
          Caption = 'Lote:'
        end
        object Label8: TLabel
          Left = 24
          Top = 182
          Width = 57
          Height = 14
          Caption = 'Fabricação:'
        end
        object Label13: TLabel
          Left = 24
          Top = 150
          Width = 38
          Height = 14
          Caption = 'Método:'
        end
        object Label15: TLabel
          Left = 26
          Top = 270
          Width = 70
          Height = 14
          Caption = 'Preço Unitário:'
        end
        object detDat_Movto: TDateEdit
          Left = 104
          Top = 53
          Width = 121
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 2
          OnExit = detDat_MovtoExit
        end
        object dlcVacinas: TDBLookupComboBox
          Left = 192
          Top = 83
          Width = 241
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'COD_VAC_MEDIC'
          ListField = 'des_abrev;metodo'
          ListSource = dtsQryVacinas
          ParentFont = False
          TabOrder = 3
          TabStop = False
          OnCloseUp = dlcVacinasCloseUp
          OnDropDown = dlcVacinasDropDown
        end
        object cedCod_Laboratorio: TCurrencyEdit
          Left = 104
          Top = 113
          Width = 73
          Height = 22
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 6
          ParentFont = False
          TabOrder = 4
          OnChange = cedCod_LaboratorioChange
          OnExit = cedCod_LaboratorioExit
        end
        object dlcLaboratorio: TDBLookupComboBox
          Left = 192
          Top = 113
          Width = 241
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'COD_LABORATORIO'
          ListField = 'des_abrev'
          ListSource = dtsQryLaboratorio
          ParentFont = False
          TabOrder = 5
          TabStop = False
          OnCloseUp = dlcLaboratorioCloseUp
          OnDropDown = dlcLaboratorioDropDown
        end
        object edtNro_Partida: TEdit
          Left = 104
          Top = 208
          Width = 105
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 8
          ParentFont = False
          TabOrder = 10
        end
        object cedQtd_Doses: TCurrencyEdit
          Left = 104
          Top = 238
          Width = 105
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 6
          ParentFont = False
          TabOrder = 11
        end
        object detDat_Validade: TDateEdit
          Left = 312
          Top = 178
          Width = 121
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 9
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 650
          Height = 18
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 12
          object Label9: TLabel
            Left = 480
            Top = 2
            Width = 29
            Height = 14
            Caption = 'Idade:'
          end
          object Label10: TLabel
            Left = 309
            Top = 2
            Width = 49
            Height = 14
            Caption = 'Endereço:'
          end
          object DBText1: TDBText
            Left = 513
            Top = 2
            Width = 40
            Height = 14
            AutoSize = True
            DataField = 'idade'
            DataSource = dtsIdadeEndereco
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object DBText2: TDBText
            Left = 362
            Top = 2
            Width = 40
            Height = 14
            AutoSize = True
            DataField = 'Endereco'
            DataSource = dtsIdadeEndereco
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 5
            Top = 2
            Width = 49
            Height = 14
            Caption = 'Cód. Lote:'
          end
          object DBText3: TDBText
            Left = 57
            Top = 2
            Width = 40
            Height = 14
            AutoSize = True
            DataField = 'Cod_Lote'
            DataSource = dtsIdadeEndereco
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 205
            Top = 2
            Width = 37
            Height = 14
            Caption = 'Reduz.:'
          end
          object DBText4: TDBText
            Left = 247
            Top = 2
            Width = 40
            Height = 14
            AutoSize = True
            DataField = 'cod_lote_num'
            DataSource = dtsIdadeEndereco
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object cedCod_Lote_Num: TCurrencyEdit
          Left = 104
          Top = 25
          Width = 73
          Height = 22
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          MaxLength = 6
          TabOrder = 0
          OnChange = cedCod_Lote_NumChange
          OnExit = cedCod_Lote_NumExit
        end
        object dlcLotes: TDBLookupComboBox
          Left = 192
          Top = 25
          Width = 305
          Height = 22
          KeyField = 'Cod_Lote_Num'
          ListField = 'Chave'
          ListSource = dtsQryLotes
          TabOrder = 1
          TabStop = False
          OnCloseUp = dlcLotesCloseUp
          OnDropDown = dlcLotesDropDown
        end
        object edtFab: TDateEdit
          Left = 104
          Top = 178
          Width = 121
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 8
        end
        object cedCod_Metodo: TCurrencyEdit
          Left = 104
          Top = 146
          Width = 73
          Height = 22
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          FormatOnEditing = True
          MaxLength = 6
          TabOrder = 6
          OnChange = cedCod_MetodoChange
          OnExit = cedCod_MetodoExit
        end
        object dlcMetodo: TDBLookupComboBox
          Left = 192
          Top = 146
          Width = 241
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'COD_METODO'
          ListField = 'des_abrev'
          ListSource = dtsQryMetodo
          ParentFont = False
          TabOrder = 7
          TabStop = False
          OnCloseUp = dlcMetodoCloseUp
        end
        object cedCod_Vac_Medic: TEdit
          Left = 104
          Top = 82
          Width = 73
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 8
          ParentFont = False
          TabOrder = 13
          OnChange = cedCod_Vac_MedicChange
          OnExit = cedCod_Vac_MedicExit
        end
        object edtPreco: TCurrencyEdit
          Left = 104
          Top = 264
          Width = 121
          Height = 21
          AutoSize = False
          TabOrder = 14
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Tabela'
      object dgrGrupos: TDBGrid
        Left = 0
        Top = 0
        Width = 650
        Height = 283
        Align = alClient
        DataSource = dtsQryConsulta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'DAT_MOVTO'
            Title.Caption = 'Data Movto.'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_LOTE_NUM'
            Title.Caption = 'Reduz.'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_VAC_MEDIC'
            Title.Caption = 'Insumo'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_LABORATORIO'
            Title.Caption = 'Laboratório'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dat_validade'
            Title.Caption = 'Validade'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtd_doses'
            Title.Caption = 'Quantidade'
            Width = 70
            Visible = True
          end>
      end
    end
  end
  inherited ppmPrincipal: TPopupMenu
    Left = 464
    Top = 72
    inherited Adicionar1: TMenuItem
      OnClick = AdicionarClick
    end
    inherited Modificar1: TMenuItem
      OnClick = ModificarClick
    end
    inherited Excluir1: TMenuItem
      OnClick = ExcluirClick
    end
    inherited LimparCampos1: TMenuItem
      OnClick = LimpaCamposClick
    end
    inherited Consulta1: TMenuItem
      OnClick = ConsultaClick
    end
    inherited Voltar1: TMenuItem
      OnClick = VoltarClick
    end
  end
  inherited QryCursor: TADQuery
    Left = 296
    Top = 256
  end
  inherited QryLock: TADQuery
    Left = 488
    Top = 256
  end
  object QryBusca: TADQuery
    ConnectionName = 'Manejo'
    Left = 392
    Top = 256
  end
  object QryOperacao: TADQuery
    ConnectionName = 'Manejo'
    Left = 424
    Top = 256
  end
  object dtsQryConsulta: TDataSource
    DataSet = QryConsulta
    Left = 328
    Top = 256
  end
  object QryConsulta: TADQuery
    Connection = FMenu.dbsManejo
    SQL.Strings = (
      'Select * From avfsmva1')
    Left = 360
    Top = 256
    object QryConsultaCOD_REGISTRO: TADAutoIncField
      FieldName = 'COD_REGISTRO'
    end
    object QryConsultaDAT_MOVTO: TDateTimeField
      FieldName = 'DAT_MOVTO'
    end
    object QryConsultaCOD_LOTE_NUM: TIntegerField
      FieldName = 'COD_LOTE_NUM'
    end
    object QryConsultanro_partida: TStringField
      FieldName = 'nro_partida'
      Size = 8
    end
    object QryConsultaCOD_ATIVIDADE: TIntegerField
      FieldName = 'COD_ATIVIDADE'
    end
    object QryConsultaCOD_LABORATORIO: TIntegerField
      FieldName = 'COD_LABORATORIO'
    end
    object QryConsultadat_validade: TDateTimeField
      FieldName = 'dat_validade'
    end
    object QryConsultadat_prevista: TDateTimeField
      FieldName = 'dat_prevista'
    end
    object QryConsultaqtd_doses: TIntegerField
      FieldName = 'qtd_doses'
    end
    object QryConsultaqtd_aves: TIntegerField
      FieldName = 'qtd_aves'
    end
    object QryConsultaCOD_VAC_MEDIC: TStringField
      FieldName = 'COD_VAC_MEDIC'
      Size = 10
    end
  end
  object QryLotes: TADQuery
    ConnectionName = 'Manejo'
    SQL.Strings = (
      'Select l.Cod_Lote_Num,'
      '       (Nro_Lote+'
      '        Convert(Char(3), '#39' - '#39') +'
      '        Convert(Char(2), Ide_Ave) +'
      '        Convert(Char(3), '#39' - '#39') +'
      '        Convert(Char(2), Cod_Lm) +'
      '        Convert(Char(3), '#39' - '#39') +'
      '        Convert(Char(2), Cod_Lf) +'
      '        Convert(Char(3), '#39' - '#39') +'
      '        Convert(Char(1), Nro_Est) +'
      '        Convert(Char(5), '#39' - '#39') +'
      '        Convert(Char(6), l.Cod_Lote_Num)'
      '        ) Chave'
      'From avfslot1 l,  avfsend1 e'
      'Where      '
      
        '  Dat_Efet_Desc = '#39'01/01/1900'#39'  and l.cod_lote_num = e.cod_lote_' +
        'num'
      
        'and lote_proprio <> 0     and e.dat_inicio = (select max(x.dat_i' +
        'nicio) from avfsend1 x where x.cod_lote_num = l.cod_lote_num)'
      'and Upper(ide_espec) <> '#39'J'#39
      ''
      'Order By nro_lote'
      '-- Cod_Lote_Num Desc'
      ' '
      ' '
      ' '
      ' ')
    Left = 496
    Top = 72
  end
  object dtsQryLotes: TDataSource
    DataSet = QryLotes
    Left = 456
    Top = 256
  end
  object QryVacinas: TADQuery
    Connection = FMenu.dbsManejo
    SQL.Strings = (
      
        'Select cvm.cod_vac_medic, cvm.des_abrev, met.des_abrev metodo,me' +
        't.cod_metodo From avfscvm1 cvm, avfsmet1 met'
      'where cvm.cod_metodo = met.cod_metodo'
      'Order By Cod_Vac_Medic'
      ' '
      ' ')
    Left = 456
    Top = 145
    object QryVacinascod_vac_medic: TStringField
      FieldName = 'cod_vac_medic'
      Required = True
      Size = 10
    end
    object QryVacinasdes_abrev: TStringField
      FieldName = 'des_abrev'
      FixedChar = True
    end
    object QryVacinasmetodo: TStringField
      FieldName = 'metodo'
      FixedChar = True
    end
    object QryVacinascod_metodo: TADAutoIncField
      FieldName = 'cod_metodo'
    end
  end
  object dtsQryVacinas: TDataSource
    DataSet = QryVacinas
    Left = 488
    Top = 145
  end
  object QryLaboratorio: TADQuery
    ConnectionName = 'Manejo'
    SQL.Strings = (
      'Select * From avfslab1'
      'Order By Cod_Laboratorio')
    Left = 456
    Top = 177
  end
  object dtsQryLaboratorio: TDataSource
    DataSet = QryLaboratorio
    Left = 488
    Top = 177
  end
  object dtsIdadeEndereco: TDataSource
    DataSet = QryIdadeEndereco
    Left = 468
    Top = 53
  end
  object QryIdadeEndereco: TADQuery
    ConnectionName = 'Manejo'
    SQL.Strings = (
      'declare @Data datetime'
      'declare @Lote Int'
      ''
      'select @Data = :Data'
      'select @Lote = :Cod_Lote_Num'
      ''
      'Select d.cod_lote_num, '
      '       d.idade,'
      '       ( convert(char(2),e.cod_local) + '#39' - '#39' +'
      '         convert(char(2),e.cod_granja)+ '#39' - '#39' +'
      '         convert(char(2),e.cod_grupo)+ '#39' - '#39' +'
      '         convert(char(3),e.cod_galinheiro)) Endereco,'
      '       (Convert(Char(2), l.Ide_Ave) + '#39' - '#39' +'
      '        Convert(Char(4), l.Nro_Lote) + '#39' - '#39' +'
      '        Convert(Char(2), l.Cod_Lm) + '#39' - '#39' +'
      '        Convert(Char(2), l.Cod_Lf) + '#39' - '#39' +'
      '        Convert(Char(1), l.Nro_Est)) Cod_Lote'
      'From avfsdat1 d,'
      '     avfsend1 e,'
      '     avfslot1 l'
      ''
      'Where l.cod_lote_num = @Lote'
      '  and e.cod_lote_num = l.cod_lote_num'
      '  and d.cod_lote_num = l.cod_lote_num'
      
        '  and ((e.dat_inicio between d.dat_inicio and d.dat_fim and d.da' +
        't_fim <= e.dat_fim) or'
      
        '       (d.dat_inicio >= e.dat_inicio and d.dat_fim <= e.dat_fim)' +
        ')'
      '  and @Data between d.dat_inicio and d.dat_Fim')
    Left = 499
    Top = 53
    ParamData = <
      item
        Name = 'Data'
        DataType = ftDateTime
        Value = 37043d
      end
      item
        Name = 'Cod_Lote_Num'
        DataType = ftInteger
        Value = 1771
      end>
  end
  object QryMetodo: TADQuery
    ConnectionName = 'Manejo'
    SQL.Strings = (
      'Select * From avfsmet1'
      'Order By Cod_Metodo')
    Left = 456
    Top = 212
  end
  object dtsQryMetodo: TDataSource
    DataSet = QryMetodo
    Left = 488
    Top = 212
  end
end

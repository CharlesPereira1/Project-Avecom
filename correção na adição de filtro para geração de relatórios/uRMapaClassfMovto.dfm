object FRMapaClassfMovto: TFRMapaClassfMovto
  Left = 531
  Top = 221
  Width = 712
  Height = 456
  Caption = 'Relatório de Mapa de Classificação x Recebimento'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 696
    Height = 417
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 694
      Height = 328
      Align = alTop
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 1
        Top = 38
        Width = 692
        Height = 275
        Align = alTop
        Caption = 'Filtros'
        TabOrder = 0
        object Label1: TLabel
          Left = 12
          Top = 19
          Width = 112
          Height = 20
          Caption = 'Data Postura:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 12
          Top = 172
          Width = 42
          Height = 20
          Caption = 'Lote:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 12
          Top = 119
          Width = 98
          Height = 20
          Caption = 'Fornecedor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 12
          Top = 46
          Width = 156
          Height = 20
          Caption = 'Data Recebimento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 11
          Top = 196
          Width = 76
          Height = 20
          Caption = 'Tipo Ovo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 288
          Top = 20
          Width = 11
          Height = 20
          Caption = 'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 289
          Top = 46
          Width = 11
          Height = 20
          Caption = 'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 12
          Top = 70
          Width = 156
          Height = 20
          Caption = 'Data Classificação:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 289
          Top = 70
          Width = 11
          Height = 20
          Caption = 'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 12
          Top = 95
          Width = 96
          Height = 20
          Caption = 'Nota Fiscal:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 11
          Top = 221
          Width = 84
          Height = 20
          Caption = 'Linhagem:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 12
          Top = 145
          Width = 75
          Height = 20
          Caption = 'Nro Lote:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 316
          Top = 95
          Width = 42
          Height = 20
          Caption = 'GTA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EdDtPostIni: TDateEdit
          Left = 178
          Top = 20
          Width = 105
          Height = 21
          NumGlyphs = 2
          TabOrder = 0
          OnChange = EdDtPostIniChange
          OnExit = EdDtPostIniExit
        end
        object CbLote: TDBLookupComboBox
          Left = 117
          Top = 172
          Width = 386
          Height = 21
          KeyField = 'Cod_Lote_Num'
          ListField = 'Chave'
          ListSource = DsLote
          TabOrder = 7
        end
        object CbGranja: TDBLookupComboBox
          Left = 117
          Top = 119
          Width = 386
          Height = 21
          KeyField = 'COD_GRANJA'
          ListField = 'des_abrev'
          ListSource = DsFornecedor
          TabOrder = 6
          OnCloseUp = CbGranjaCloseUp
          OnDropDown = CbGranjaCloseUp
          OnExit = CbGranjaCloseUp
        end
        object EdDtRecebIni: TDateEdit
          Left = 178
          Top = 47
          Width = 105
          Height = 21
          NumGlyphs = 2
          TabOrder = 2
          OnChange = EdDtRecebIniChange
          OnExit = EdDtRecebIniExit
        end
        object EdDtPostFim: TDateEdit
          Left = 306
          Top = 20
          Width = 105
          Height = 21
          NumGlyphs = 2
          TabOrder = 1
          OnChange = EdDtPostFimChange
          OnExit = EdDtPostFimExit
        end
        object EdDtRecebFim: TDateEdit
          Left = 306
          Top = 46
          Width = 105
          Height = 21
          NumGlyphs = 2
          TabOrder = 3
          OnChange = EdDtRecebFimChange
          OnExit = EdDtRecebFimExit
        end
        object CbTipoOvo: TDBLookupComboBox
          Left = 116
          Top = 196
          Width = 386
          Height = 21
          KeyField = 'cod_tip'
          ListField = 'des_abrev'
          ListSource = DsTipOvo
          TabOrder = 8
        end
        object EdDtClassifIni: TDateEdit
          Left = 178
          Top = 71
          Width = 105
          Height = 21
          NumGlyphs = 2
          TabOrder = 4
          OnChange = EdDtClassifIniChange
          OnExit = EdDtClassifIniExit
        end
        object EdDtClassifFim: TDateEdit
          Left = 306
          Top = 70
          Width = 105
          Height = 21
          NumGlyphs = 2
          TabOrder = 5
          OnChange = EdDtClassifFimChange
          OnExit = EdDtClassifFimExit
        end
        object EdNroNota: TCurrencyEdit
          Left = 178
          Top = 95
          Width = 121
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          TabOrder = 9
        end
        object CbLinhagem: TDBLookupComboBox
          Left = 116
          Top = 221
          Width = 386
          Height = 21
          KeyField = 'cod_linhagem'
          ListField = 'des_abrev'
          ListSource = DsLinhagem
          TabOrder = 10
        end
        object cbNroLote: TDBLookupComboBox
          Left = 117
          Top = 145
          Width = 386
          Height = 21
          KeyField = 'nro_lote'
          ListSource = dsNroLote
          TabOrder = 11
        end
        object edtGta: TCurrencyEdit
          Left = 362
          Top = 95
          Width = 121
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          TabOrder = 12
        end
      end
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 692
        Height = 37
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvNone
        Locked = True
        TabOrder = 1
        object spbSistema: TSpeedBar
          Left = 577
          Top = 1
          Width = 114
          Height = 35
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Position = bpCustom
          Align = alRight
          Options = [sbFlatBtns, sbGrayedBtns]
          BtnOffsetHorz = 2
          BtnOffsetVert = 2
          BtnWidth = 36
          BtnHeight = 30
          BevelOuter = bvNone
          Locked = True
          TabOrder = 0
          InternalVer = 1
          object SpeedbarSection2: TSpeedbarSection
            Caption = 'Menu2'
          end
          object spiSaida: TSpeedItem
            Caption = 'Saída'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              0400000000000001000000000000000000001000000010000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
              03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
              0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
              0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
              0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
              0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
              0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
              0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
              0333337F777FFFFF7F3333000000000003333377777777777333}
            Hint = 'Saída'
            NumGlyphs = 2
            Spacing = 1
            Left = 74
            Top = 2
            Visible = True
            OnClick = spiSaidaClick
            SectionName = 'Menu2'
          end
          object spiInfo: TSpeedItem
            Caption = 'Informação'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              0400000000000001000000000000000000001000000010000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333300333
              33333333333773FF333333333330F0033333333333373773FF333333330FFFF0
              03333333337F333773FF3333330FFFFFF003333333733FF33773333330FF00FF
              FF80333337F3773F3337333330FFFF0FFFF03FFFF7FFF3733F3700000000FFFF
              0FF0777777773FF373370000000000FFFFF07FFFFFF377FFF3370CCCCC000000
              FF037777773337773F7300CCC000003300307F77733337F37737000C00000033
              33307F373333F7F333370000007B703333307FFFF337F7F33337099900BBB033
              33307777F37777FF33370999007B700333037777F3373773FF73099900000030
              00337777FFFFF7F7773300000000003333337777777777333333}
            Hint = 'Sobre o Sistema'
            NumGlyphs = 2
            Spacing = 1
            Left = 2
            Top = 2
            Visible = True
            SectionName = 'Menu2'
          end
          object spiAjuda: TSpeedItem
            Caption = 'Ajuda'
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000010000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888000888888
              8888880555000000000888050055555555088805F000788FF5088055F08F7000
              F508055FF08FFFB7F50805FFF08FBFF7F50805FFF08FFFB7F50805FFF08FBFF7
              F50805FFF08FFFB7F50805FFF08FBFF7F50805FF877FFFB7008805FF78877FF7
              888805F878888777888887878888888888888878888888888888}
            Hint = 'Ajuda Sobre este módulo'
            Spacing = 1
            Left = 38
            Top = 2
            Visible = True
            SectionName = 'Menu2'
          end
        end
        object spbFerramentas: TSpeedBar
          Left = 1
          Top = 1
          Width = 256
          Height = 35
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Position = bpCustom
          Align = alLeft
          Options = [sbFlatBtns, sbGrayedBtns]
          BtnOffsetHorz = 2
          BtnOffsetVert = 2
          BtnWidth = 36
          BtnHeight = 30
          BevelOuter = bvNone
          Locked = True
          TabOrder = 1
          InternalVer = 1
          object SpeedbarSection1: TSpeedbarSection
            Caption = 'Menu1'
          end
          object spiAdicionar: TSpeedItem
            Tag = 1
            Caption = 'Adicionar'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              0400000000000001000000000000000000001000000010000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
              0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
              33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            Hint = 'Adicionar - F2'
            NumGlyphs = 2
            Spacing = 1
            Left = 2
            Top = 2
            SectionName = 'Menu1'
          end
          object spiModificar: TSpeedItem
            Tag = 2
            Caption = 'Modificar'
            Glyph.Data = {
              66010000424D6601000000000000760000002800000014000000140000000100
              040000000000F000000000000000000000001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              77777777000077777777777777777777000077777771171177777777000078FF
              FFFFF1FFFFFFFFF70000780000000100000000F70000780FFFFFF1FFFFFFF0F7
              0000780FFFFFF1FFFFFFF0F70000780FCCCCF1FCCCCFF0F70000780FCFCCF1FC
              CFCCF0F70000780FCCCCF1FCCFCCF0F70000780FFFCCF1FCCFCCF0F70000780F
              CCCFF1FCCCCFF0F70000780FFFFFF1FCCFFFF0F70000780FFFFFF1FCCFFFF0F7
              0000780FFFFFF1FFFFFFF0F70000780000000100000000F70000788888888188
              8888888700007777777117117777777700007777777777777777777700007777
              77777777777777770000}
            Hint = 'Modificar - F3'
            Spacing = 1
            Left = 38
            Top = 2
            SectionName = 'Menu1'
          end
          object spiExcluir: TSpeedItem
            Tag = 3
            Caption = 'Excluir'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              0400000000000001000000000000000000001000000010000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333333333333333333333333FFF33FF333FFF339993370733
              999333777FF37FF377733339993000399933333777F777F77733333399970799
              93333333777F7377733333333999399933333333377737773333333333990993
              3333333333737F73333333333331013333333333333777FF3333333333910193
              333333333337773FF3333333399000993333333337377737FF33333399900099
              93333333773777377FF333399930003999333337773777F777FF339993370733
              9993337773337333777333333333333333333333333333333333333333333333
              3333333333333333333333333333333333333333333333333333}
            Hint = 'Excluir - F4'
            NumGlyphs = 2
            Spacing = 1
            Left = 74
            Top = 2
            SectionName = 'Menu1'
          end
          object spiLimpaCampos: TSpeedItem
            Caption = 'Limpar'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              0400000000000001000000000000000000001000000010000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
              0EEE333377777777777733330FF00FBFB0EE33337F37733F377733330F0BFB0B
              FB0E33337F73FF73337733330FF000BFBFB033337F377733333733330FFF0BFB
              FBF033337FFF733F333733300000BF0FBFB03FF77777F3733F37000FBFB0F0FB
              0BF077733FF7F7FF7337E0FB00000000BF0077F377777777F377E0BFBFBFBFB0
              F0F077F3333FFFF7F737E0FBFB0000000FF077F3337777777337E0BFBFBFBFB0
              FFF077F3333FFFF73FF7E0FBFB00000F000077FF337777737777E00FBFBFB0FF
              0FF07773FFFFF7337F37003000000FFF0F037737777773337F7333330FFFFFFF
              003333337FFFFFFF773333330000000003333333777777777333}
            Hint = 'Limpa campos para novo registro - F5'
            NumGlyphs = 2
            Spacing = 1
            Left = 56
            Top = 2
            Visible = True
            OnClick = spiLimpaCamposClick
            SectionName = 'Menu1'
          end
          object spiConsulta: TSpeedItem
            Tag = 5
            Caption = 'Consultar'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              0400000000000001000000000000000000001000000010000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
              FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
              FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
              FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
              FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
              FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
              C8807FF7777777777FF700000000000000007777777777777777333333333333
              3333333333333333333333333333333333333333333333333333}
            Hint = 'Consultar - F6'
            ImageIndex = 0
            NumGlyphs = 2
            Spacing = 1
            Left = 191
            Top = 2
            SectionName = 'Menu1'
          end
          object spiImprimir: TSpeedItem
            Tag = 6
            Caption = 'Imprimir'
            Glyph.Data = {
              66010000424D6601000000000000760000002800000014000000140000000100
              040000000000F000000000000000000000001000000010000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
              DDDDDDDD0000DDDDDDDDDDDDDDDDDDDD0000DD000DDDDDDDDDD000DD0000D000
              000000000000000D0000D0F8888888888888880D0000D0F8888888888888880D
              0000D0F8888888822899880D0000D0FFFFFFFFFFFFFFFF0D0000D70077777777
              7777007D0000DDD00000000000000DDD0000DDD00FFFFFFFFFF00DDD0000DDDD
              0F00000000F0DDDD0000DDDD0FFFFFFFFFF0DDDD0000DDDD0F00000000F0DDDD
              0000DDDD0FFFFFFFFFF0DDDD0000DDDD0F00FFFFFFF0DDDD0000DDDD0FFFFFFF
              FFF0DDDD0000DDDD000000000000DDDD0000DDDDDDDDDDDDDDDDDDDD0000DDDD
              DDDDDDDDDDDDDDDD0000}
            Hint = 'Imprimir - F7'
            ImageIndex = 6
            Spacing = 1
            Left = 11
            Top = 2
            Visible = True
            OnClick = spiImprimirClick
            SectionName = 'Menu1'
          end
          object spiVoltar: TSpeedItem
            Tag = 5
            Caption = 'Voltar'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              0400000000000001000000000000000000001000000010000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333333333333333333333333333333333333333333333333333
              3333333333333FF3333333333333003333333333333F77F33333333333009033
              333333333F7737F333333333009990333333333F773337FFFFFF330099999000
              00003F773333377777770099999999999990773FF33333FFFFF7330099999000
              000033773FF33777777733330099903333333333773FF7F33333333333009033
              33333333337737F3333333333333003333333333333377333333333333333333
              3333333333333333333333333333333333333333333333333333333333333333
              3333333333333333333333333333333333333333333333333333}
            Hint = 'Volta para o modo Edição - F8'
            NumGlyphs = 2
            Spacing = 1
            Left = 308
            Top = 2
            SectionName = 'Menu1'
          end
        end
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 329
      Width = 694
      Height = 24
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
    end
    object BmsXPTopBar1: TBmsXPTopBar
      Left = 1
      Top = 376
      Width = 694
      Height = 40
      Align = alBottom
      Caption = 'BmsXPTopBar1'
      TabOrder = 2
      GradientColors.StartColor = 14798784
      GradientColors.EndColor = 14632751
      object Label34: TLabel
        Left = 1
        Top = 1
        Width = 692
        Height = 38
        Align = alClient
        Alignment = taRightJustify
        Caption = 'Relatório Rascunho da Classificação de Ovos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -35
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
      end
    end
  end
  object DsLote: TDataSource
    DataSet = QryLote
    Left = 608
    Top = 117
  end
  object DsFornecedor: TDataSource
    DataSet = QryFornecedor
    Left = 608
    Top = 80
  end
  object QryLote: TADQuery
    BeforeOpen = QryLoteBeforeOpen
    Filtered = True
    Connection = FMenu.DbsIncub2
    SQL.Strings = (
      
        'select  lot.Cod_Lote_Num,lot.ide_ave,lot.nro_lote,lot.cod_lm,lot' +
        '.cod_lf,lot.nro_est,'
      '       ('
      '        Convert(Char(2), edr.cod_granja) +'
      '        Convert(Char(3), '#39' - '#39') +'
      '        Convert(Char(4), lot.Nro_Lote) +'
      '        Convert(Char(3), '#39' - '#39') +'
      '        Convert(Char(2), lot.Ide_Ave) +'
      '        Convert(Char(3), '#39' - '#39') +'
      '        Convert(Char(2), lot.Cod_Lf) +'
      '        Convert(Char(3), '#39' - '#39') +'
      '        Convert(Char(1), lot.Nro_Est) +'
      '        Convert(Char(5), '#39' - '#39') +'
      
        '        Convert(Char(6), lot.Cod_Lote_Num) + '#39' GLP: '#39'+edr.cod_ga' +
        'linheiro    ) Chave,edr.cod_granja'
      'from dbav2.uav.avfslot1 lot,avfvend edr'
      'where lot.flg_mov_inc = 1'
      
        '  and (lot.dat_efet_desc = '#39'01/01/1900'#39' or datediff(day,lot.dat_' +
        'efet_desc, getdate()) <= 45)'
      '  and edr.cod_lote_num = lot.cod_lote_num'
      
        '  and edr.dat_inicio = (select max(edr1.dat_inicio) from avfvend' +
        ' edr1 where edr1.cod_lote_num = lot.cod_lote_num)'
      '  and edr.cod_granja = :cod_granja'
      ''
      'order by edr.cod_granja,edr.dat_inicio desc, lot.nro_lote'
      ''
      ''
      ''
      ''
      ''
      ' '
      ' '
      ' '
      ''
      ' '
      ' '
      ' '
      ' '
      ''
      ' '
      ' '
      ' '
      ' ')
    Left = 640
    Top = 117
    ParamData = <
      item
        Name = 'COD_GRANJA'
        DataType = ftString
        ParamType = ptInput
      end>
    object QryLoteCod_Lote_Num: TADAutoIncField
      FieldName = 'Cod_Lote_Num'
    end
    object QryLoteide_ave: TStringField
      FieldName = 'ide_ave'
      FixedChar = True
      Size = 2
    end
    object QryLotenro_lote: TStringField
      FieldName = 'nro_lote'
      FixedChar = True
      Size = 4
    end
    object QryLotecod_lm: TStringField
      FieldName = 'cod_lm'
      FixedChar = True
      Size = 2
    end
    object QryLotecod_lf: TStringField
      FieldName = 'cod_lf'
      FixedChar = True
      Size = 2
    end
    object QryLotenro_est: TStringField
      FieldName = 'nro_est'
      FixedChar = True
      Size = 1
    end
    object QryLoteChave: TStringField
      FieldName = 'Chave'
      ReadOnly = True
      Size = 43
    end
    object QryLotecod_granja: TStringField
      FieldName = 'cod_granja'
      FixedChar = True
      Size = 2
    end
  end
  object QryFornecedor: TADQuery
    Filtered = True
    Connection = FMenu.DbsIncub2
    SQL.Strings = (
      'Select distinct gra.*'
      'from  '
      'dbug2.uug.ugfsgra1 gra,'
      'dbug2.uug.ugfsgal1 gal'
      ''
      'where '
      ' gal.cod_granja = gra.cod_granja '
      ''
      '  '
      ''
      ''
      'ORDER BY GRA.DES_ABREV')
    Left = 640
    Top = 82
    object QryFornecedorCOD_GRANJA: TStringField
      FieldName = 'COD_GRANJA'
      Required = True
      FixedChar = True
      Size = 2
    end
    object QryFornecedorCOD_GERENTE: TIntegerField
      FieldName = 'COD_GERENTE'
    end
    object QryFornecedordes_abrev: TStringField
      FieldName = 'des_abrev'
      FixedChar = True
    end
    object QryFornecedorobservacao: TStringField
      FieldName = 'observacao'
      FixedChar = True
      Size = 50
    end
    object QryFornecedortimestamp: TBytesField
      FieldName = 'timestamp'
      Size = 8
    end
    object QryFornecedorregistro: TStringField
      FieldName = 'registro'
      FixedChar = True
    end
    object QryFornecedorunidade: TStringField
      FieldName = 'unidade'
      Size = 50
    end
    object QryFornecedorcod_responsavel: TIntegerField
      FieldName = 'cod_responsavel'
    end
    object QryFornecedorcod_municipio: TIntegerField
      FieldName = 'cod_municipio'
    end
    object QryFornecedorCOD_SIF: TStringField
      FieldName = 'COD_SIF'
      Size = 50
    end
    object QryFornecedorflg_tipo: TStringField
      FieldName = 'flg_tipo'
      Size = 10
    end
    object QryFornecedorflg_especie: TStringField
      FieldName = 'flg_especie'
      Size = 10
    end
    object QryFornecedorvalid_certificado: TDateTimeField
      FieldName = 'valid_certificado'
    end
    object QryFornecedorendereco: TStringField
      FieldName = 'endereco'
      Size = 200
    end
    object QryFornecedordocumento: TStringField
      FieldName = 'documento'
      Size = 50
    end
    object QryFornecedordesc_gta: TStringField
      FieldName = 'desc_gta'
      Size = 100
    end
  end
  object QryCadTipOVO: TADQuery
    Filtered = True
    Connection = FMenu.DbsIncub2
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      
        'SELECT COD_OVO, DESCRICAO, nro_ordem_ovo, nro_pos_exibicao, flg_' +
        'chega_no_inc, flg_desativado'
      'FROM CIFSTOV1'
      'ORDER BY nro_pos_exibicao'
      ' ')
    Left = 992
    Top = 21
  end
  object QryConsultaReceb: TADQuery
    Active = True
    AutoCalcFields = False
    Filtered = True
    Connection = FMenu.DbsIncub2
    SQL.Strings = (
      
        'select distinct rec.gta, rec.nro_nf, DRO.COD_TIP,lot.COD_LF,lot.' +
        'COD_LM,edr.COD_GRANJA, GRA.DES_ABREV AS NOME_GRANJA,'
      
        'lot.nro_lote,rec.DAT_REC,CONVERT(VARCHAR,rec.HOR_REC,24) HOR_REC' +
        ',rec.dat_post,dat.idade,qtd_post_receb,(SELECT SUM(isnull(X.qtd_' +
        'ovo_01,0) +isnull(X.qtd_ovo_02,0)+isnull(X.qtd_ovo_03,0)+isnull(' +
        'X.QTD_OVO_04,0)+isnull(X.QTD_OVO_05,0)+isnull(X.QTD_OVO_06,0)+is' +
        'null(X.QTD_OVO_07,0)+isnull(X.QTD_OVO_08,0)+isnull(X.QTD_OVO_09,' +
        '0)+isnull(X.QTD_OVO_10,0)+isnull(X.QTD_OVO_11,0)+isnull(X.QTD_OV' +
        'O_12,0)+isnull(X.QTD_OVO_13,0)+isnull(X.QTD_OVO_14,0)+isnull(X.Q' +
        'TD_OVO_15,0)+isnull(X.QTD_OVO_16,0)+isnull(X.QTD_OVO_17,0)+isnul' +
        'l(X.QTD_OVO_18,0)+isnull(X.QTD_OVO_19,0)+isnull(X.QTD_OVO_20,0))' +
        ' FROM CIFSCLA1 X WHERE X.COD_INC_DEPTO=CLA.COD_INC_DEPTO AND X.C' +
        'OD_LOTE_NUM=CLA.COD_LOTE_NUM AND X.DAT_POST=CLA.DAT_POST AND X.C' +
        'OD_TIP=CLA.COD_TIP AND X.DAT_REC=CLA.DAT_REC AND X.HOR_REC=CLA.H' +
        'OR_REC AND (X.DAT_CLASSIF+X.HOR_CLASSIF<=CLA.DAT_CLASSIF+CLA.HOR' +
        '_CLASSIF))CLASSIFICADOS,CONVERT(VARCHAR,cla.DAT_CLASSIF,103) dat' +
        '_classif,CONVERT(VARCHAR,cla.hor_classif,24) hor_classif,1 as or' +
        'dem,'
      
        'CASE'#9'WHEN DRO.COD_TIP = '#39'BOM'#39' AND LOT.COD_LF IN ('#39'BW'#39','#39'DW'#39','#39'HW'#39')' +
        ' AND REC.IDADE >= 25 AND REC.IDADE <= 28 AND ((CLA.QTD_OVO_01 + ' +
        'CLA.QTD_OVO_02 + CLA.QTD_OVO_03) / DRO.qtd_post_receb * 100) >= ' +
        '80 THEN '#39'Sim'#39
      
        #9'WHEN DRO.COD_TIP = '#39'BOM'#39' AND LOT.COD_LF IN ('#39'BW'#39','#39'DW'#39','#39'HW'#39') AND' +
        ' REC.IDADE >= 29 AND REC.IDADE <= 33 AND ((CLA.QTD_OVO_01 + CLA.' +
        'QTD_OVO_02 + CLA.QTD_OVO_03) / DRO.qtd_post_receb * 100) >= 90 T' +
        'HEN '#39'Sim'#39
      
        #9'WHEN DRO.COD_TIP = '#39'BOM'#39' AND LOT.COD_LF IN ('#39'BW'#39','#39'DW'#39','#39'HW'#39') AND' +
        ' REC.IDADE >= 34 AND REC.IDADE <= 56 AND ((CLA.QTD_OVO_01 + CLA.' +
        'QTD_OVO_02 + CLA.QTD_OVO_03) / DRO.qtd_post_receb * 100) >= 96 T' +
        'HEN '#39'Sim'#39
      
        #9'WHEN DRO.COD_TIP = '#39'BOM'#39' AND LOT.COD_LF IN ('#39'BW'#39','#39'DW'#39','#39'HW'#39') AND' +
        ' REC.IDADE >= 57 AND REC.IDADE <= 68 AND ((CLA.QTD_OVO_01 + CLA.' +
        'QTD_OVO_02 + CLA.QTD_OVO_03) / DRO.qtd_post_receb * 100) >= 94 T' +
        'HEN '#39'Sim'#39
      
        #9'WHEN DRO.COD_TIP = '#39'BOM'#39' AND LOT.COD_LF IN ('#39'BW'#39','#39'DW'#39','#39'HW'#39') AND' +
        ' REC.IDADE >= 69 AND ((CLA.QTD_OVO_01 + CLA.QTD_OVO_02 + CLA.QTD' +
        '_OVO_03) / DRO.qtd_post_receb * 100) >= 92 THEN '#39'Sim'#39
      
        #9'WHEN DRO.COD_TIP = '#39'BOM'#39' AND LOT.COD_LF IN ('#39'DB'#39','#39'HB'#39') AND REC.' +
        'IDADE >= 25 AND REC.IDADE <= 28 AND ((CLA.QTD_OVO_01 + CLA.QTD_O' +
        'VO_02 + CLA.QTD_OVO_03) / DRO.qtd_post_receb * 100) >= 75 THEN '#39 +
        'Sim'#39
      
        #9'WHEN DRO.COD_TIP = '#39'BOM'#39' AND LOT.COD_LF IN ('#39'DB'#39','#39'HB'#39') AND REC.' +
        'IDADE >= 29 AND REC.IDADE <= 33 AND ((CLA.QTD_OVO_01 + CLA.QTD_O' +
        'VO_02 + CLA.QTD_OVO_03) / DRO.qtd_post_receb * 100) >= 88 THEN '#39 +
        'Sim'#39
      
        #9'WHEN DRO.COD_TIP = '#39'BOM'#39' AND LOT.COD_LF IN ('#39'DB'#39','#39'HB'#39') AND REC.' +
        'IDADE >= 34 AND REC.IDADE <= 56 AND ((CLA.QTD_OVO_01 + CLA.QTD_O' +
        'VO_02 + CLA.QTD_OVO_03) / DRO.qtd_post_receb * 100) >= 96 THEN '#39 +
        'Sim'#39
      
        #9'WHEN DRO.COD_TIP = '#39'BOM'#39' AND LOT.COD_LF IN ('#39'DB'#39','#39'HB'#39') AND REC.' +
        'IDADE >= 57 AND REC.IDADE <= 68 AND ((CLA.QTD_OVO_01 + CLA.QTD_O' +
        'VO_02 + CLA.QTD_OVO_03) / DRO.qtd_post_receb * 100) >= 92 THEN '#39 +
        'Sim'#39
      
        #9'WHEN DRO.COD_TIP = '#39'BOM'#39' AND LOT.COD_LF IN ('#39'DB'#39','#39'HB'#39') AND REC.' +
        'IDADE >= 69 AND ((CLA.QTD_OVO_01 + CLA.QTD_OVO_02 + CLA.QTD_OVO_' +
        '03) / DRO.qtd_post_receb * 100) >= 90 THEN '#39'Sim'#39
      #9'WHEN DRO.COD_TIP <> '#39'BOM'#39' THEN '#39' '#39
      '    ELSE  '#39'Não'#39
      'END AS APROV_REPROV'
      ''
      ''
      ''
      ''
      
        '        ,CLA.qtd_ovo_01, CLA.qtd_ovo_02, CLA.qtd_ovo_03, CLA.QTD' +
        '_OVO_04, CLA.QTD_OVO_05, CLA.QTD_OVO_06, CLA.QTD_OVO_07, CLA.QTD' +
        '_OVO_08, CLA.QTD_OVO_09, CLA.QTD_OVO_10, CLA.QTD_OVO_11, CLA.QTD' +
        '_OVO_12, CLA.QTD_OVO_13, CLA.QTD_OVO_14, CLA.QTD_OVO_15, CLA.QTD' +
        '_OVO_16, CLA.QTD_OVO_17, CLA.QTD_OVO_18, CLA.QTD_OVO_19, CLA.QTD' +
        '_OVO_20'
      ''
      ''
      
        'from CIFSREC1 rec  join CIFSDRO1 dro  ON (rec.COD_LOTE_NUM = dro' +
        '.COD_LOTE_NUM and rec.DAT_POST = dro.DAT_POST and rec.DAT_REC = ' +
        'dro.DAT_REC and dro.nurec = rec.nurec and rec.cod_tip = dro.COD_' +
        'TIP and rec.COD_INC_DEPTO = dro.COD_INC_DEPTO)'
      
        '  JOIN dbav3.uav.avfslot1 lot ON ( rec.COD_LOTE_NUM = lot.cod_lo' +
        'te_num and lot.flg_mov_inc = 1 and (lot.dat_efet_desc = '#39'01/01/1' +
        '900'#39' or datediff(day,lot.dat_efet_desc, getdate()) <= 45))'
      
        '  JOIN avfvend edr ON (edr.cod_lote_num = lot.cod_lote_num and e' +
        'dr.dat_inicio = (select max(edr1.dat_inicio) from avfvend edr1 w' +
        'here edr1.cod_lote_num = lot.cod_lote_num))'
      
        '  LEFT JOIN DBUG2.UUG.ugfsgra1 GRA ON ( EDR.COD_GRANJA = GRA.COD' +
        '_GRANJA)'
      
        '  JOIN DBAV3.UAV.avfsdat1 dat ON ( lot.cod_lote_num = dat.cod_lo' +
        'te_num and rec.DAT_POST between dat.dat_inicio and dat.dat_fim )'
      
        '  LEFT JOIN CIFSCLA1 CLA ON ( REC.DAT_REC = CLA.DAT_REC AND REC.' +
        'HOR_REC = CLA.HOR_REC AND DRO.COD_LOTE_NUM = CLA.COD_LOTE_NUM AN' +
        'D DRO.DAT_POST = CLA.DAT_POST AND REC.COD_INC_DEPTO = CLA.COD_IN' +
        'C_DEPTO AND DRO.COD_TIP = CLA.COD_TIP )'
      '  WHERE  REC.NUREC IS NOT NULL'
      ''
      ''
      ''
      ''
      ''
      ''
      'union'
      
        'select distinct rec.gta, rec.nro_nf,  DRO.COD_TIP,lot.COD_LF,lot' +
        '.COD_LM,edr.COD_GRANJA,GRA.DES_ABREV AS NOME_GRANJA, lot.nro_lot' +
        'e,rec.DAT_REC, CONVERT(VARCHAR,rec.HOR_REC,24) HOR_REC,rec.dat_p' +
        'ost,dat.idade,dro.qtd_post_receb,(SELECT SUM(isnull(X.qtd_ovo_01' +
        ',0)+isnull(X.qtd_ovo_02,0)+isnull(X.qtd_ovo_03,0)+isnull(X.QTD_O' +
        'VO_04,0)+isnull(X.QTD_OVO_05,0)+isnull(X.QTD_OVO_06,0)+isnull(X.' +
        'QTD_OVO_07,0)+isnull(X.QTD_OVO_08,0)+isnull(X.QTD_OVO_09,0)+isnu' +
        'll(X.QTD_OVO_10,0)+isnull(X.QTD_OVO_11,0)+isnull(X.QTD_OVO_12,0)' +
        '+isnull(X.QTD_OVO_13,0)+isnull(X.QTD_OVO_14,0)+isnull(X.QTD_OVO_' +
        '15,0)+isnull(X.QTD_OVO_16,0)+isnull(X.QTD_OVO_17,0)+isnull(X.QTD' +
        '_OVO_18,0)+isnull(X.QTD_OVO_19,0)+isnull(X.QTD_OVO_20,0)) FROM C' +
        'IFSCLA1 X WHERE X.COD_INC_DEPTO = CLA.COD_INC_DEPTO AND X.COD_LO' +
        'TE_NUM = CLA.COD_LOTE_NUM AND X.DAT_POST = CLA.DAT_POST AND X.CO' +
        'D_TIP = CLA.COD_TIP AND X.DAT_REC = CLA.DAT_REC AND X.HOR_REC = ' +
        'CLA.HOR_REC AND (X.DAT_CLASSIF + X.HOR_CLASSIF <= DATEADD(DAY,10' +
        '00, CLA.DAT_CLASSIF + CLA.HOR_CLASSIF))) CLASSIFICADOS'
      
        '                ,ISNULL(NULL,'#39' '#39') dat_classif, '#39' '#39' as hor_classi' +
        'f,2 as ordem, '#39' '#39'APROV_REPROV'
      ''
      ''
      
        '                ,null , null , null , null , null , null , null ' +
        ', null , null , null , null , null , null , null , null , null ,' +
        ' null , null , null , null'
      ''
      ''
      
        'from CIFSREC1 rec  join CIFSDRO1 dro  ON (rec.COD_LOTE_NUM = dro' +
        '.COD_LOTE_NUM and rec.DAT_POST = dro.DAT_POST and rec.DAT_REC = ' +
        'dro.DAT_REC and dro.nurec = rec.nurec and rec.cod_tip = dro.COD_' +
        'TIP and rec.COD_INC_DEPTO = dro.COD_INC_DEPTO)'
      
        '  JOIN dbav3.uav.avfslot1 lot ON ( rec.COD_LOTE_NUM = lot.cod_lo' +
        'te_num and lot.flg_mov_inc = 1 and (lot.dat_efet_desc = '#39'01/01/1' +
        '900'#39' or datediff(day,lot.dat_efet_desc, getdate()) <= 45))'
      
        '  JOIN avfvend edr ON (edr.cod_lote_num = lot.cod_lote_num and e' +
        'dr.dat_inicio = (select max(edr1.dat_inicio) from avfvend edr1 w' +
        'here edr1.cod_lote_num = lot.cod_lote_num))'
      
        '  JOIN DBAV3.UAV.avfsdat1 dat ON ( lot.cod_lote_num = dat.cod_lo' +
        'te_num and rec.DAT_POST between dat.dat_inicio and dat.dat_fim )'
      
        '  LEFT JOIN DBUG2.UUG.ugfsgra1 GRA ON ( EDR.COD_GRANJA = GRA.COD' +
        '_GRANJA)'
      
        '  LEFT JOIN CIFSCLA1 CLA ON ( REC.DAT_REC = CLA.DAT_REC AND REC.' +
        'HOR_REC = CLA.HOR_REC AND DRO.COD_LOTE_NUM = CLA.COD_LOTE_NUM AN' +
        'D DRO.DAT_POST = CLA.DAT_POST AND REC.COD_INC_DEPTO = CLA.COD_IN' +
        'C_DEPTO AND DRO.COD_TIP = CLA.COD_TIP )'
      '  WHERE  REC.NUREC IS NOT NULL'
      
        '    AND (SELECT SUM(isnull(X.qtd_ovo_01,0) + isnull(X.qtd_ovo_02' +
        ',0) + isnull(X.qtd_ovo_03,0) + isnull(X.QTD_OVO_04,0) + isnull(X' +
        '.QTD_OVO_05,0) + isnull(X.QTD_OVO_06,0) + isnull(X.QTD_OVO_07,0)' +
        ' + isnull(X.QTD_OVO_08,0) + isnull(X.QTD_OVO_09,0) + isnull(X.QT' +
        'D_OVO_10,0) + isnull(X.QTD_OVO_11,0) + isnull(X.QTD_OVO_12,0) + ' +
        'isnull(X.QTD_OVO_13,0) + isnull(X.QTD_OVO_14,0) + isnull(X.QTD_O' +
        'VO_15,0) + isnull(X.QTD_OVO_16,0) + isnull(X.QTD_OVO_17,0) + isn' +
        'ull(X.QTD_OVO_18,0) + isnull(X.QTD_OVO_19,0) + isnull(X.QTD_OVO_' +
        '20,0)) FROM CIFSCLA1 X WHERE X.COD_INC_DEPTO = CLA.COD_INC_DEPTO' +
        ' AND X.COD_LOTE_NUM = CLA.COD_LOTE_NUM AND X.DAT_POST = CLA.DAT_' +
        'POST AND X.COD_TIP = CLA.COD_TIP AND X.DAT_REC = CLA.DAT_REC AND' +
        ' X.HOR_REC = CLA.HOR_REC AND (X.DAT_CLASSIF + X.HOR_CLASSIF <= D' +
        'ATEADD(DAY,1000, CLA.DAT_CLASSIF + CLA.HOR_CLASSIF) ))< dro.qtd_' +
        'post_receb'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      
        'order by  DAT_REC,  HOR_REC, nro_lote, DAT_POST, COD_TIP, ordem,' +
        ' DAT_CLASSIF, cod_granja'
      ''
      ''
      ''
      ''
      ''
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 472
    Top = 64
    object QryConsultaRecebCOD_TIP: TStringField
      FieldName = 'COD_TIP'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 3
    end
    object QryConsultaRecebCOD_LF: TStringField
      FieldName = 'COD_LF'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object QryConsultaRecebCOD_LM: TStringField
      FieldName = 'COD_LM'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object QryConsultaRecebCOD_GRANJA: TStringField
      FieldName = 'COD_GRANJA'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object QryConsultaRecebNOME_GRANJA: TStringField
      FieldName = 'NOME_GRANJA'
      ReadOnly = True
      FixedChar = True
    end
    object QryConsultaRecebnro_lote: TStringField
      FieldName = 'nro_lote'
      ReadOnly = True
      Size = 10
    end
    object QryConsultaRecebDAT_REC: TDateTimeField
      FieldName = 'DAT_REC'
      ReadOnly = True
      Required = True
    end
    object QryConsultaRecebHOR_REC: TStringField
      FieldName = 'HOR_REC'
      ReadOnly = True
      Size = 30
    end
    object QryConsultaRecebdat_post: TDateTimeField
      FieldName = 'dat_post'
      ReadOnly = True
      Required = True
    end
    object QryConsultaRecebidade: TSmallintField
      FieldName = 'idade'
      ReadOnly = True
      Required = True
    end
    object QryConsultaRecebqtd_post_receb: TIntegerField
      FieldName = 'qtd_post_receb'
      ReadOnly = True
    end
    object QryConsultaRecebCLASSIFICADOS: TIntegerField
      FieldName = 'CLASSIFICADOS'
      ReadOnly = True
    end
    object QryConsultaRecebdat_classif: TStringField
      FieldName = 'dat_classif'
      ReadOnly = True
      Size = 30
    end
    object QryConsultaRecebhor_classif: TStringField
      FieldName = 'hor_classif'
      ReadOnly = True
      Size = 30
    end
    object QryConsultaRecebordem: TIntegerField
      FieldName = 'ordem'
      ReadOnly = True
      Required = True
    end
    object QryConsultaRecebAPROV_REPROV: TStringField
      FieldName = 'APROV_REPROV'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object QryConsultaRecebqtd_ovo_01: TIntegerField
      FieldName = 'qtd_ovo_01'
      ReadOnly = True
    end
    object QryConsultaRecebqtd_ovo_02: TIntegerField
      FieldName = 'qtd_ovo_02'
      ReadOnly = True
    end
    object QryConsultaRecebqtd_ovo_03: TIntegerField
      FieldName = 'qtd_ovo_03'
      ReadOnly = True
    end
    object QryConsultaRecebQTD_OVO_04: TIntegerField
      FieldName = 'QTD_OVO_04'
      ReadOnly = True
    end
    object QryConsultaRecebQTD_OVO_05: TIntegerField
      FieldName = 'QTD_OVO_05'
      ReadOnly = True
    end
    object QryConsultaRecebQTD_OVO_06: TIntegerField
      FieldName = 'QTD_OVO_06'
      ReadOnly = True
    end
    object QryConsultaRecebQTD_OVO_07: TIntegerField
      FieldName = 'QTD_OVO_07'
      ReadOnly = True
    end
    object QryConsultaRecebQTD_OVO_08: TIntegerField
      FieldName = 'QTD_OVO_08'
      ReadOnly = True
    end
    object QryConsultaRecebQTD_OVO_09: TIntegerField
      FieldName = 'QTD_OVO_09'
      ReadOnly = True
    end
    object QryConsultaRecebQTD_OVO_10: TIntegerField
      FieldName = 'QTD_OVO_10'
      ReadOnly = True
    end
    object QryConsultaRecebQTD_OVO_11: TIntegerField
      FieldName = 'QTD_OVO_11'
      ReadOnly = True
    end
    object QryConsultaRecebQTD_OVO_12: TIntegerField
      FieldName = 'QTD_OVO_12'
      ReadOnly = True
    end
    object QryConsultaRecebQTD_OVO_13: TIntegerField
      FieldName = 'QTD_OVO_13'
      ReadOnly = True
    end
    object QryConsultaRecebQTD_OVO_14: TIntegerField
      FieldName = 'QTD_OVO_14'
      ReadOnly = True
    end
    object QryConsultaRecebQTD_OVO_15: TIntegerField
      FieldName = 'QTD_OVO_15'
      ReadOnly = True
    end
    object QryConsultaRecebQTD_OVO_16: TIntegerField
      FieldName = 'QTD_OVO_16'
      ReadOnly = True
    end
    object QryConsultaRecebQTD_OVO_17: TIntegerField
      FieldName = 'QTD_OVO_17'
      ReadOnly = True
    end
    object QryConsultaRecebQTD_OVO_18: TIntegerField
      FieldName = 'QTD_OVO_18'
      ReadOnly = True
    end
    object QryConsultaRecebQTD_OVO_19: TIntegerField
      FieldName = 'QTD_OVO_19'
      ReadOnly = True
    end
    object QryConsultaRecebQTD_OVO_20: TIntegerField
      FieldName = 'QTD_OVO_20'
      ReadOnly = True
    end
    object QryConsultaRecebgta: TIntegerField
      FieldName = 'gta'
      ReadOnly = True
    end
    object QryConsultaRecebnro_nf: TIntegerField
      FieldName = 'nro_nf'
      ReadOnly = True
      Required = True
    end
  end
  object frxDBQryConsultaReceb: TfrxDBDataset
    UserName = 'frxDBQryConsultaReceb'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COD_TIP=COD_TIP'
      'COD_LF=COD_LF'
      'COD_LM=COD_LM'
      'COD_GRANJA=COD_GRANJA'
      'NOME_GRANJA=NOME_GRANJA'
      'nro_lote=nro_lote'
      'DAT_REC=DAT_REC'
      'HOR_REC=HOR_REC'
      'dat_post=dat_post'
      'idade=idade'
      'qtd_post_receb=qtd_post_receb'
      'CLASSIFICADOS=Classificados'
      'dat_classif=dat_classif'
      'hor_classif=hor_classif'
      'ordem=ordem'
      'APROV_REPROV=APROV_REPROV'
      'qtd_ovo_01=qtd_ovo_01'
      'qtd_ovo_02=qtd_ovo_02'
      'qtd_ovo_03=qtd_ovo_03'
      'QTD_OVO_04=QTD_OVO_04'
      'QTD_OVO_05=QTD_OVO_05'
      'QTD_OVO_06=QTD_OVO_06'
      'QTD_OVO_07=QTD_OVO_07'
      'QTD_OVO_08=QTD_OVO_08'
      'QTD_OVO_09=QTD_OVO_09'
      'QTD_OVO_10=QTD_OVO_10'
      'QTD_OVO_11=QTD_OVO_11'
      'QTD_OVO_12=QTD_OVO_12'
      'QTD_OVO_13=QTD_OVO_13'
      'QTD_OVO_14=QTD_OVO_14'
      'QTD_OVO_15=QTD_OVO_15'
      'QTD_OVO_16=QTD_OVO_16'
      'QTD_OVO_17=QTD_OVO_17'
      'QTD_OVO_18=QTD_OVO_18'
      'QTD_OVO_19=QTD_OVO_19'
      'QTD_OVO_20=QTD_OVO_20'
      'gta=gta'
      'nro_nf=nro_nf')
    DataSet = QryConsultaReceb
    BCDToCurrency = False
    Left = 544
    Top = 56
  end
  object DsConsultaReceb: TDataSource
    DataSet = QryConsultaReceb
    Left = 504
    Top = 62
  end
  object frxReport1: TfrxReport
    Version = '4.15.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Padrão'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42817.473651412
    ReportOptions.LastChange = 43816.4201617014
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      '  '
      ''
      ''
      ''
      'procedure GroupHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin    '
      
        '//  try logo.LoadFromFile(Report.Variables['#39'vImg'#39']) except end; ' +
        '           '
      'end;'
      ''
      ''
      ''
      ''
      'procedure Header1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    { if Report.Variables['#39'vLargura'#39'] = null then   }  '
      
        '    Report.Variables['#39'vLargura'#39'] := 55;                         ' +
        ' '
      '                   '
      '  if Aprovacao.visible then'
      '    Aprovacao.Width  :=  Report.Variables['#39'vLargura'#39'];'
      '  if Acidente.visible then'
      '    Acidente.Width  :=  Report.Variables['#39'vLargura'#39'];  '
      '      '
      '  if frxDBqtd_ovo_01TXT.visible then'
      
        '    frxDBqtd_ovo_01TXT.Width  :=  Report.Variables['#39'vLargura'#39']; ' +
        '    '
      '  if frxDBqtd_ovo_02TXT.visible then'
      
        '      frxDBqtd_ovo_02TXT.Width  := Report.Variables['#39'vLargura'#39'];' +
        '      '
      '  if frxDBqtd_ovo_03TXT.visible then'
      
        '      frxDBqtd_ovo_03TXT.Width  := Report.Variables['#39'vLargura'#39'];' +
        '      '
      '  if frxDBqtd_ovo_04TXT.visible then'
      
        '      frxDBqtd_ovo_04TXT.Width  := Report.Variables['#39'vLargura'#39'];' +
        '        '
      '  if frxDBqtd_ovo_05TXT.visible then'
      
        '      frxDBqtd_ovo_05TXT.Width  := Report.Variables['#39'vLargura'#39'];' +
        '      '
      '  if frxDBqtd_ovo_06TXT.visible then'
      
        '      frxDBqtd_ovo_06TXT.Width  := Report.Variables['#39'vLargura'#39'];' +
        '      '
      '  if frxDBqtd_ovo_07TXT.visible then'
      
        '      frxDBqtd_ovo_07TXT.Width  := Report.Variables['#39'vLargura'#39'];' +
        '      '
      '  if frxDBqtd_ovo_08TXT.visible then'
      
        '      frxDBqtd_ovo_08TXT.Width  := Report.Variables['#39'vLargura'#39'];' +
        '      '
      '  if frxDBqtd_ovo_09TXT.visible then'
      
        '      frxDBqtd_ovo_09TXT.Width  := Report.Variables['#39'vLargura'#39'];' +
        '      '
      '  if frxDBqtd_ovo_10TXT.visible then'
      
        '      frxDBqtd_ovo_10TXT.Width  := Report.Variables['#39'vLargura'#39'];' +
        '      '
      '  if frxDBqtd_ovo_11TXT.visible then'
      
        '      frxDBqtd_ovo_11TXT.Width  := Report.Variables['#39'vLargura'#39'];' +
        '      '
      '  if frxDBqtd_ovo_12TXT.visible then'
      
        '      frxDBqtd_ovo_12TXT.Width  := Report.Variables['#39'vLargura'#39'];' +
        '          '
      '  if frxDBqtd_ovo_13TXT.visible then'
      
        '      frxDBqtd_ovo_13TXT.Width  := Report.Variables['#39'vLargura'#39'];' +
        '      '
      '  if frxDBqtd_ovo_14TXT.visible then'
      
        '      frxDBqtd_ovo_14TXT.Width  := Report.Variables['#39'vLargura'#39'];' +
        '      '
      '  if frxDBqtd_ovo_15TXT.visible then'
      
        '      frxDBqtd_ovo_15TXT.Width  := Report.Variables['#39'vLargura'#39'];' +
        '      '
      '  if frxDBqtd_ovo_16TXT.visible then'
      
        '      frxDBqtd_ovo_16TXT.Width  := Report.Variables['#39'vLargura'#39'];' +
        '      '
      '  if frxDBqtd_ovo_17TXT.visible then'
      
        '      frxDBqtd_ovo_17TXT.Width  := Report.Variables['#39'vLargura'#39'];' +
        '      '
      '  if frxDBqtd_ovo_18TXT.visible then'
      
        '      frxDBqtd_ovo_18TXT.Width  := Report.Variables['#39'vLargura'#39'];' +
        '      '
      '  if frxDBqtd_ovo_19TXT.visible then'
      
        '      frxDBqtd_ovo_19TXT.Width  := Report.Variables['#39'vLargura'#39'];' +
        '      '
      '  if frxDBqtd_ovo_20TXT.visible then'
      
        '      frxDBqtd_ovo_20TXT.Width  := Report.Variables['#39'vLargura'#39'];' +
        '      '
      ''
      '  '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  {  if Frac(<Line> / 2) = 0.5 then'
      '    frxCanvas.Color := $00EBEBEB'
      '  else'
      '    frxCanvas.Color := clWhite;            '
      ' }'
      ' {if Report.Variables['#39'vLargura'#39'] = null then}  '
      
        '    Report.Variables['#39'vLargura'#39'] := 55;                         ' +
        ' '
      '            '
      '  if Aprovacao.visible then'
      '    begin                                   '
      '      MemoAprovado.Width  :=  Report.Variables['#39'vLargura'#39'];'
      
        '      MemoAprovacaoT.Width  :=  Report.Variables['#39'vLargura'#39'];   ' +
        '       '
      '    end;  '
      '  if Acidente.visible then'
      '    begin                                   '
      '      MemoAcidente.Width  :=  Report.Variables['#39'vLargura'#39'];'
      
        '      MemoAcidenteT.Width  :=  Report.Variables['#39'vLargura'#39'];    ' +
        '      '
      '    end;  '
      ''
      '      '
      '  if frxDBqtd_ovo_01.visible then'
      '    begin                                   '
      '      frxDBqtd_ovo_01.Width  :=  Report.Variables['#39'vLargura'#39'];'
      
        '      frxDBqtd_ovo_01T.Width  :=  Report.Variables['#39'vLargura'#39']; ' +
        '         '
      '    end;                      '
      '  if frxDBqtd_ovo_02.visible then'
      '    begin                         '
      '      frxDBqtd_ovo_02.Width  := Report.Variables['#39'vLargura'#39'];'
      
        '      frxDBqtd_ovo_02T.Width  := Report.Variables['#39'vLargura'#39'];  ' +
        '              '
      '    end;                      '
      '  if frxDBqtd_ovo_03.visible then'
      '    begin                         '
      '      frxDBqtd_ovo_03.Width  := Report.Variables['#39'vLargura'#39'];'
      
        '      frxDBqtd_ovo_03T.Width  := Report.Variables['#39'vLargura'#39'];  ' +
        '        '
      '    end;                      '
      '  if frxDBqtd_ovo_04.visible then'
      '    begin                         '
      '      frxDBqtd_ovo_04.Width  := Report.Variables['#39'vLargura'#39'];'
      
        '      frxDBqtd_ovo_04T.Width  := Report.Variables['#39'vLargura'#39'];  ' +
        '        '
      '    end;                        '
      '  if frxDBqtd_ovo_05.visible then'
      '    begin                         '
      '      frxDBqtd_ovo_05.Width  := Report.Variables['#39'vLargura'#39'];'
      
        '      frxDBqtd_ovo_05T.Width  := Report.Variables['#39'vLargura'#39'];  ' +
        '        '
      '    end;                      '
      '  if frxDBqtd_ovo_06.visible then'
      '    begin                         '
      '      frxDBqtd_ovo_06.Width  := Report.Variables['#39'vLargura'#39'];'
      
        '      frxDBqtd_ovo_06T.Width  := Report.Variables['#39'vLargura'#39'];  ' +
        '        '
      '    end;                      '
      '  if frxDBqtd_ovo_07.visible then'
      '    begin                         '
      '      frxDBqtd_ovo_07.Width  := Report.Variables['#39'vLargura'#39'];'
      
        '      frxDBqtd_ovo_07T.Width  := Report.Variables['#39'vLargura'#39'];  ' +
        '        '
      '    end;                      '
      '  if frxDBqtd_ovo_08.visible then'
      '    begin                         '
      '      frxDBqtd_ovo_08.Width  := Report.Variables['#39'vLargura'#39'];'
      
        '      frxDBqtd_ovo_08T.Width  := Report.Variables['#39'vLargura'#39'];  ' +
        '        '
      '    end;                      '
      '  if frxDBqtd_ovo_09.visible then'
      '    begin                         '
      '      frxDBqtd_ovo_09.Width  := Report.Variables['#39'vLargura'#39'];'
      
        '      frxDBqtd_ovo_09T.Width  := Report.Variables['#39'vLargura'#39'];  ' +
        '        '
      '    end;                      '
      '  if frxDBqtd_ovo_10.visible then'
      '    begin                         '
      '      frxDBqtd_ovo_10.Width  := Report.Variables['#39'vLargura'#39'];'
      
        '      frxDBqtd_ovo_10T.Width  := Report.Variables['#39'vLargura'#39'];  ' +
        '        '
      '    end;                      '
      '  if frxDBqtd_ovo_11.visible then'
      '    begin                         '
      '      frxDBqtd_ovo_11.Width  := Report.Variables['#39'vLargura'#39'];'
      
        '      frxDBqtd_ovo_11T.Width  := Report.Variables['#39'vLargura'#39'];  ' +
        '        '
      '    end;                            '
      '  if frxDBqtd_ovo_12.visible then'
      '    begin                         '
      '      frxDBqtd_ovo_12.Width  := Report.Variables['#39'vLargura'#39'];'
      
        '      frxDBqtd_ovo_12T.Width  := Report.Variables['#39'vLargura'#39'];  ' +
        '        '
      '    end;                      '
      '  if frxDBqtd_ovo_13.visible then'
      '    begin                         '
      '      frxDBqtd_ovo_13.Width  := Report.Variables['#39'vLargura'#39'];'
      
        '      frxDBqtd_ovo_13T.Width  := Report.Variables['#39'vLargura'#39'];  ' +
        '        '
      '    end;                      '
      '  if frxDBqtd_ovo_14.visible then'
      '    begin                         '
      '      frxDBqtd_ovo_14.Width  := Report.Variables['#39'vLargura'#39'];'
      
        '      frxDBqtd_ovo_14T.Width  := Report.Variables['#39'vLargura'#39'];  ' +
        '        '
      '    end;                      '
      '  if frxDBqtd_ovo_15.visible then'
      '    begin                                '
      '      frxDBqtd_ovo_15.Width  := Report.Variables['#39'vLargura'#39'];'
      
        '      frxDBqtd_ovo_15T.Width  := Report.Variables['#39'vLargura'#39'];  ' +
        '        '
      '    end;                      '
      '  if frxDBqtd_ovo_16.visible then'
      '    begin                         '
      '      frxDBqtd_ovo_16.Width  := Report.Variables['#39'vLargura'#39'];'
      
        '      frxDBqtd_ovo_16T.Width  := Report.Variables['#39'vLargura'#39'];  ' +
        '        '
      '    end;                      '
      '  if frxDBqtd_ovo_17.visible then'
      '    begin                         '
      '      frxDBqtd_ovo_17.Width  := Report.Variables['#39'vLargura'#39'];'
      
        '      frxDBqtd_ovo_17T.Width  := Report.Variables['#39'vLargura'#39'];  ' +
        '        '
      '    end;                      '
      '  if frxDBqtd_ovo_18.visible then'
      '    begin                         '
      '      frxDBqtd_ovo_18.Width  := Report.Variables['#39'vLargura'#39'];'
      
        '      frxDBqtd_ovo_18T.Width  := Report.Variables['#39'vLargura'#39'];  ' +
        '        '
      '    end;                      '
      '  if frxDBqtd_ovo_19.visible then'
      '    begin                         '
      '      frxDBqtd_ovo_19.Width  := Report.Variables['#39'vLargura'#39'];'
      
        '      frxDBqtd_ovo_19T.Width  := Report.Variables['#39'vLargura'#39'];  ' +
        '        '
      '    end;                      '
      '  if frxDBqtd_ovo_20.visible then'
      '    begin                         '
      '      frxDBqtd_ovo_20.Width  := Report.Variables['#39'vLargura'#39'];'
      
        '      frxDBqtd_ovo_20T.Width  := Report.Variables['#39'vLargura'#39'];  ' +
        '        '
      '    end;                      '
      ''
      '    '
      ''
      ''
      ''
      ''
      '  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 577
    Top = 57
    Datasets = <
      item
        DataSet = frxDBQryConsultaReceb
        DataSetName = 'frxDBQryConsultaReceb'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'vFiltro1'
        Value = Null
      end
      item
        Name = 'vFiltro2'
        Value = Null
      end
      item
        Name = 'vFiltro3'
        Value = Null
      end
      item
        Name = 'vLargura;'
        Value = Null
      end
      item
        Name = 'vImg'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 297
      PaperHeight = 210
      PaperSize = 9
      LeftMargin = 3
      RightMargin = 3
      TopMargin = 5
      BottomMargin = 5
      object GroupFooter2: TfrxGroupFooter
        Height = 18.89765
        Top = 351.49629
        Width = 1099.84323
        object Memo12: TfrxMemoView
          Align = baLeft
          Width = 253.22833913
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '%  ')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBqtd_ovo_01T: TfrxMemoView
          Align = baLeft
          ShiftMode = smDontShift
          Left = 253.22833913
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_02T: TfrxMemoView
          Align = baLeft
          Left = 291.02361472
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_03T: TfrxMemoView
          Align = baLeft
          Left = 328.81889031
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_04T: TfrxMemoView
          Align = baLeft
          Left = 366.6141659
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_05T: TfrxMemoView
          Align = baLeft
          Left = 442.20471708
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_06T: TfrxMemoView
          Align = baLeft
          Left = 479.99999267
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_07T: TfrxMemoView
          Align = baLeft
          Left = 517.79526826
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_08T: TfrxMemoView
          Align = baLeft
          Left = 593.38581944
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_09T: TfrxMemoView
          Align = baLeft
          Left = 631.18109503
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_10T: TfrxMemoView
          Align = baLeft
          Left = 668.97637062
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_11T: TfrxMemoView
          Align = baLeft
          Left = 706.77164621
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_12T: TfrxMemoView
          Align = baLeft
          Left = 744.5669218
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_13T: TfrxMemoView
          Align = baLeft
          Left = 782.36219739
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_14T: TfrxMemoView
          Align = baLeft
          Left = 820.15747298
          Width = 37.79527559
          Height = 18.89765
          Visible = False
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_15T: TfrxMemoView
          Align = baLeft
          Left = 857.95274857
          Width = 37.79527559
          Height = 18.89765
          Visible = False
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_16T: TfrxMemoView
          Align = baLeft
          Left = 895.74802416
          Width = 37.79527559
          Height = 18.89765
          Visible = False
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_17T: TfrxMemoView
          Align = baLeft
          Left = 933.54329975
          Width = 37.79527559
          Height = 18.89765
          Visible = False
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_18T: TfrxMemoView
          Align = baLeft
          Left = 971.33857534
          Width = 37.79527559
          Height = 18.89765
          Visible = False
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_19T: TfrxMemoView
          Align = baLeft
          Left = 1009.13385093
          Width = 34.01574559
          Height = 18.89765
          Visible = False
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_20T: TfrxMemoView
          Align = baLeft
          Left = 1043.14959652
          Width = 34.01574559
          Height = 18.89765
          Visible = False
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Align = baLeft
          Left = 1077.16534211
          Width = 45.35433071
          Height = 18.89765
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[((<frxDBQryConsultaReceb."Classificados">)/<frxDBQryConsultaRec' +
              'eb."qtd_post_receb">* 100)]')
          ParentFont = False
        end
        object MemoAprovacaoT: TfrxMemoView
          Align = baLeft
          Left = 404.40944149
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object MemoAcidenteT: TfrxMemoView
          Align = baLeft
          Left = 555.59054385
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.67718
        Top = 430.86642
        Width = 1099.84323
        object Memo17: TfrxMemoView
          Align = baLeft
          Top = 3.02362205
          Width = 415.7480315
          Height = 15.11811024
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Memo.UTF8 = (
            'Controle de IncubatÃ³rios')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Align = baLeft
          Left = 667.08664103
          Top = 3.02362205
          Width = 430.8661515
          Height = 15.11811024
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8 = (
            'Avecom Sistemas - (34) 3235 4982')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Align = baLeft
          Left = 415.7480315
          Top = 3.02362205
          Width = 251.33860953
          Height = 15.11811024
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Page]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 45.35434047
        Top = 147.40167
        Width = 1099.84323
        OnBeforePrint = 'Header1OnBeforePrint'
        ReprintOnNewPage = True
        object Memo1: TfrxMemoView
          Align = baLeft
          Top = 15.11811024
          Width = 41.57481047
          Height = 30.23622047
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Fornecedor')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          Left = 71.81103094
          Top = 15.11811024
          Width = 30.23621559
          Height = 30.23622047
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Lote')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBqtd_ovo_01TXT: TfrxMemoView
          Align = baLeft
          Left = 253.228331800551
          Top = 15.11811024
          Width = 37.79527559
          Height = 30.23622047
          ShowHint = False
          Color = 15000804
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'qtd_ovo_01')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 102.04724653
          Top = 15.11811024
          Width = 45.35432827
          Height = 30.23622047
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Data Postura')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBqtd_ovo_02TXT: TfrxMemoView
          Align = baLeft
          Left = 291.023607390551
          Top = 15.1181102362205
          Width = 37.79527559
          Height = 30.23622047
          ShowHint = False
          Color = 15000804
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'qtd_ovo_02')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBqtd_ovo_03TXT: TfrxMemoView
          Align = baLeft
          Left = 328.818882980551
          Top = 15.1181102362205
          Width = 37.79527559
          Height = 30.23622047
          ShowHint = False
          Color = 15000804
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'qtd_ovo_03')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBqtd_ovo_04TXT: TfrxMemoView
          Align = baLeft
          Left = 366.614158570551
          Top = 15.11811024
          Width = 37.79527559
          Height = 30.23622047
          ShowHint = False
          Color = 15000804
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'QTD_OVO_04')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBqtd_ovo_05TXT: TfrxMemoView
          Align = baLeft
          Left = 442.204709750551
          Top = 15.11811024
          Width = 37.79527559
          Height = 30.23622047
          ShowHint = False
          Color = 15000804
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'QTD_OVO_05')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBqtd_ovo_06TXT: TfrxMemoView
          Align = baLeft
          Left = 479.999985340551
          Top = 15.11811024
          Width = 37.79527559
          Height = 30.23622047
          ShowHint = False
          Color = 15000804
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'QTD_OVO_06')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBqtd_ovo_07TXT: TfrxMemoView
          Align = baLeft
          Left = 517.795260930551
          Top = 15.11811024
          Width = 37.79527559
          Height = 30.23622047
          ShowHint = False
          Color = 15000804
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'QTD_OVO_07')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBqtd_ovo_08TXT: TfrxMemoView
          Align = baLeft
          Left = 593.385812110551
          Top = 15.11811024
          Width = 37.79527559
          Height = 30.23622047
          ShowHint = False
          Color = 15000804
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'QTD_OVO_08')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBqtd_ovo_09TXT: TfrxMemoView
          Align = baLeft
          Left = 631.181087700551
          Top = 15.11811024
          Width = 37.79527559
          Height = 30.23622047
          ShowHint = False
          Color = 15000804
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'QTD_OVO_09')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBqtd_ovo_10TXT: TfrxMemoView
          Align = baLeft
          Left = 668.976363290551
          Top = 15.11811024
          Width = 37.79527559
          Height = 30.23622047
          ShowHint = False
          Color = 15000804
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'QTD_OVO_10')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBqtd_ovo_11TXT: TfrxMemoView
          Align = baLeft
          Left = 706.771638880551
          Top = 15.11811024
          Width = 37.79527559
          Height = 30.23622047
          ShowHint = False
          Color = 15000804
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'QTD_OVO_11')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBqtd_ovo_12TXT: TfrxMemoView
          Align = baLeft
          Left = 744.566914470551
          Top = 15.11811024
          Width = 37.79527559
          Height = 30.23622047
          ShowHint = False
          Color = 15000804
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'QTD_OVO_12')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBqtd_ovo_13TXT: TfrxMemoView
          Align = baLeft
          Left = 782.362190060551
          Top = 15.11811024
          Width = 37.79527559
          Height = 30.23622047
          ShowHint = False
          Color = 15000804
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PESO OVO MEDIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBqtd_ovo_14TXT: TfrxMemoView
          Align = baLeft
          Left = 820.157465650551
          Top = 15.11811024
          Width = 37.79527559
          Height = 30.23622047
          Visible = False
          ShowHint = False
          Color = 15000804
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'QTD_OVO_14')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBqtd_ovo_15TXT: TfrxMemoView
          Align = baLeft
          Left = 857.952741240551
          Top = 15.11811024
          Width = 37.79527559
          Height = 30.23622047
          Visible = False
          ShowHint = False
          Color = 15000804
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'QTD_OVO_15')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBqtd_ovo_16TXT: TfrxMemoView
          Align = baLeft
          Left = 895.748016830551
          Top = 15.11811024
          Width = 37.79527559
          Height = 30.23622047
          Visible = False
          ShowHint = False
          Color = 15000804
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'QTD_OVO_16')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBqtd_ovo_17TXT: TfrxMemoView
          Align = baLeft
          Left = 933.543292420551
          Top = 15.11811024
          Width = 37.79527559
          Height = 30.23622047
          Visible = False
          ShowHint = False
          Color = 15000804
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'QTD_OVO_17')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBqtd_ovo_18TXT: TfrxMemoView
          Align = baLeft
          Left = 971.338568010551
          Top = 15.11811024
          Width = 37.79527559
          Height = 30.23622047
          Visible = False
          ShowHint = False
          Color = 15000804
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'QTD_OVO_18')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBqtd_ovo_19TXT: TfrxMemoView
          Align = baLeft
          Left = 1009.13384360055
          Top = 15.11811024
          Width = 34.01574559
          Height = 30.23622047
          Visible = False
          ShowHint = False
          Color = 15000804
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'QTD_OVO_19')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBqtd_ovo_20TXT: TfrxMemoView
          Align = baLeft
          Left = 1043.14958919055
          Top = 15.11811024
          Width = 34.01574559
          Height = 30.23622047
          Visible = False
          ShowHint = False
          Color = 15000804
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'QTD_OVO_20')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Align = baLeft
          Left = 147.4015748
          Top = 15.11811024
          Width = 30.23622047
          Height = 30.23622047
          ShowHint = False
          Color = 15000804
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'Idade Matriz')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          Left = 1077.16533478055
          Top = 15.11811024
          Width = 45.35432827
          Height = 30.23622047
          ShowHint = False
          Color = 15000804
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Left = 215.43305621
          Top = 15.11811024
          Width = 37.7952755905512
          Height = 30.23622047
          ShowHint = False
          Color = 15000804
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Saldo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Align = baLeft
          Left = 177.63779527
          Top = 15.11811024
          Width = 37.79526094
          Height = 30.23622047
          ShowHint = False
          Color = 15000804
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Recebidos')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Align = baLeft
          Width = 215.43319047
          Height = 15.11810047
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Recebimento')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Align = baLeft
          Left = 215.43319047
          Width = 854.173228346457
          Height = 15.11810047
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ClassificaÃ§Ã£o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Align = baLeft
          Left = 41.57481047
          Top = 15.11812
          Width = 30.23622047
          Height = 30.23622047
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Linhagem')
          ParentFont = False
          VAlign = vaCenter
        end
        object Aprovacao: TfrxMemoView
          Align = baLeft
          Left = 404.409434160551
          Top = 15.11812
          Width = 37.79527559
          Height = 30.23622047
          ShowHint = False
          Color = 15000804
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'APROV')
          ParentFont = False
          VAlign = vaCenter
        end
        object Acidente: TfrxMemoView
          Align = baLeft
          Left = 555.590536520551
          Top = 15.11812
          Width = 37.79527559
          Height = 30.23622047
          ShowHint = False
          Color = 15000804
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'AÃ‡IDENTE')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 68.03154
        Top = 18.89765
        Width = 1099.84323
        object Picture1: TfrxPictureView
          Width = 154.96073
          Height = 64.25201
          ShowHint = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo18: TfrxMemoView
          Left = 854.17378
          Top = 22.67718
          Width = 37.7953
          Height = 18.89765
          ShowHint = False
          Color = clBtnHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBackground
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'NF:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 854.17378
          Top = 41.57483
          Width = 37.7953
          Height = 18.89765
          ShowHint = False
          Color = clBtnHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBackground
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'GTA:')
          ParentFont = False
        end
        object frxDBQryConsultaRecebgta: TfrxMemoView
          Left = 891.96908
          Top = 41.57483
          Width = 79.37013
          Height = 18.89765
          ShowHint = False
          DataField = 'gta'
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBackground
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBQryConsultaReceb."gta"]')
          ParentFont = False
        end
        object frxDBQryConsultaRecebnro_nf: TfrxMemoView
          Left = 891.96908
          Top = 22.67718
          Width = 79.37013
          Height = 18.89765
          ShowHint = False
          DataField = 'nro_nf'
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBackground
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBQryConsultaReceb."nro_nf"]')
          ParentFont = False
        end
      end
      object Memo25: TfrxMemoView
        Left = 854.17378
        Width = 230.55133
        Height = 18.89765
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        HAlign = haRight
        Memo.UTF8 = (
          'EmissÃ£o: [Date] [Time]')
        ParentFont = False
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 22.67718
        Top = 241.88992
        Width = 1099.84323
        Condition = 
          'VarToStr(<frxDBQryConsultaReceb."DAT_REC">)+'#39'.'#39'+VarToStr(<frxDBQ' +
          'ryConsultaReceb."HOR_REC">)+'#39'.'#39'+VarToStr(<frxDBQryConsultaReceb.' +
          '"nro_lote">)+'#39'.'#39'+VarToStr(<frxDBQryConsultaReceb."DAT_POST">)+'#39'.' +
          #39'+VarToStr(<frxDBQryConsultaReceb."cod_tip">)+'#39'.'#39'+VarToStr(<frxD' +
          'BQryConsultaReceb."dat_classif">)'
        object frxDBQryConsultaRecebDAT_REC: TfrxMemoView
          Align = baLeft
          Top = 4
          Width = 211.65368
          Height = 15.11812
          ShowHint = False
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Dt. Receb: [frxDBQryConsultaReceb."DAT_REC"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Left = 211.65368
          Top = 3.77953
          Width = 287.24428
          Height = 15.11812
          ShowHint = False
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              'Dt. ClassificaÃ§Ã£o:  [IIF(<frxDBQryConsultaReceb."dat_classif">' +
              ' = '#39' '#39','#39'___/___/___'#39',<frxDBQryConsultaReceb."dat_classif">)]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baLeft
          Left = 498.89796
          Top = 3.77953
          Width = 275.90569
          Height = 15.11812
          ShowHint = False
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBQryConsultaReceb."COD_TIP"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Top = 328.81911
        Width = 1099.84323
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 3.77953
        Top = 215.43321
        Width = 1099.84323
        Condition = 
          'VarToStr(<frxDBQryConsultaReceb."DAT_REC">)+'#39'.'#39'+VarToStr(<frxDBQ' +
          'ryConsultaReceb."HOR_REC">)+'#39'.'#39'+VarToStr(<frxDBQryConsultaReceb.' +
          '"nro_lote">)+'#39'.'#39'+VarToStr(<frxDBQryConsultaReceb."DAT_POST">)+'#39'.' +
          #39'+VarToStr(<frxDBQryConsultaReceb."cod_tip">)'
      end
      object MasterData1: TfrxMasterData
        Height = 18.8976378
        Top = 287.24428
        Width = 1099.84323
        OnBeforePrint = 'MasterData1OnBeforePrint'
        AllowSplit = True
        DataSet = frxDBQryConsultaReceb
        DataSetName = 'frxDBQryConsultaReceb'
        RowCount = 0
        object frxDBQryConsultaRecebCOD_GRANJA: TfrxMemoView
          Align = baLeft
          Width = 41.57481047
          Height = 18.89765
          ShowHint = False
          DataField = 'NOME_GRANJA'
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBQryConsultaReceb."NOME_GRANJA"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 71.81103094
          Width = 30.23621559
          Height = 18.89765
          ShowHint = False
          DataField = 'nro_lote'
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBQryConsultaReceb."nro_lote"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 102.04724653
          Width = 45.3543307086614
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = 'dd/mm/yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBQryConsultaReceb."dat_post"]')
          ParentFont = False
        end
        object frxDBqtd_ovo_01: TfrxMemoView
          Align = baLeft
          ShiftMode = smDontShift
          Left = 253.228348889213
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_02: TfrxMemoView
          Align = baLeft
          Left = 291.023624479213
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_03: TfrxMemoView
          Align = baLeft
          Left = 328.818900069213
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_04: TfrxMemoView
          Align = baLeft
          Left = 366.614175659213
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_05: TfrxMemoView
          Align = baLeft
          Left = 442.204726839213
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_06: TfrxMemoView
          Align = baLeft
          Left = 480.000002429213
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_07: TfrxMemoView
          Align = baLeft
          Left = 517.795278019213
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_08: TfrxMemoView
          Align = baLeft
          Left = 593.385829199213
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_09: TfrxMemoView
          Align = baLeft
          Left = 631.181104789213
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_10: TfrxMemoView
          Align = baLeft
          Left = 668.976380379213
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_11: TfrxMemoView
          Align = baLeft
          Left = 706.771655969213
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_12: TfrxMemoView
          Align = baLeft
          Left = 744.566931559213
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_13: TfrxMemoView
          Align = baLeft
          Left = 782.362207149213
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_14: TfrxMemoView
          Align = baLeft
          Left = 820.157482739213
          Width = 37.79527559
          Height = 18.89765
          Visible = False
          ShowHint = False
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_15: TfrxMemoView
          Align = baLeft
          Left = 857.952758329213
          Width = 37.79527559
          Height = 18.89765
          Visible = False
          ShowHint = False
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_16: TfrxMemoView
          Align = baLeft
          Left = 895.748033919213
          Width = 37.79527559
          Height = 18.89765
          Visible = False
          ShowHint = False
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_17: TfrxMemoView
          Align = baLeft
          Left = 933.543309509213
          Width = 37.79527559
          Height = 18.89765
          Visible = False
          ShowHint = False
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_18: TfrxMemoView
          Align = baLeft
          Left = 971.338585099213
          Width = 37.79527559
          Height = 18.89765
          Visible = False
          ShowHint = False
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_19: TfrxMemoView
          Align = baLeft
          Left = 1009.13386068921
          Width = 34.01574559
          Height = 18.89765
          Visible = False
          ShowHint = False
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object frxDBqtd_ovo_20: TfrxMemoView
          Align = baLeft
          Left = 1043.14960627921
          Width = 34.01574559
          Height = 18.89765
          Visible = False
          ShowHint = False
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Align = baLeft
          Left = 147.401577238661
          Width = 30.23622047
          Height = 18.89765
          ShowHint = False
          DataField = 'idade'
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBQryConsultaReceb."idade"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Align = baLeft
          Left = 1077.16535186921
          Width = 45.35432827
          Height = 18.89765
          ShowHint = False
          DataField = 'Classificados'
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBQryConsultaReceb."Classificados"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 215.433073299213
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[<frxDBQryConsultaReceb."qtd_post_receb">-<frxDBQryConsultaReceb' +
              '."Classificados">]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          Left = 177.637797708661
          Width = 37.7952755905512
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBQryConsultaReceb."qtd_post_receb"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Align = baLeft
          Left = 41.57481047
          Width = 30.23622047
          Height = 18.89765
          ShowHint = False
          DataField = 'COD_LF'
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBQryConsultaReceb."COD_LF"]')
          ParentFont = False
        end
        object MemoAprovado: TfrxMemoView
          Align = baLeft
          Left = 404.409451249213
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBQryConsultaReceb."APROV_REPROV"]')
          ParentFont = False
        end
        object memoAcidente: TfrxMemoView
          Align = baLeft
          Left = 555.590553609213
          Width = 37.79527559
          Height = 18.89765
          ShowHint = False
          DataSet = frxDBQryConsultaReceb
          DataSetName = 'frxDBQryConsultaReceb'
          DisplayFormat.FormatStr = '#,##0.'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
      end
      object frxDBQryConsultaCheckListMestreTIPO: TfrxMemoView
        Align = baCenter
        Left = 338.267935
        Top = 3.685065
        Width = 423.30736
        Height = 26.45671
        ShowHint = False
        DataSetName = 'frxDBQryConsultaCheckListMestre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8 = (
          'Rascunho da ClassificaÃ§Ã£o de Ovos')
        ParentFont = False
      end
    end
  end
  object QryTipOvo: TADQuery
    Filtered = True
    Connection = FMenu.DbsIncub2
    SQL.Strings = (
      'select cod_tip,des_abrev'
      'from cifstip1'
      'where flg_ativo = 1 '
      'order by des_abrev')
    Left = 640
    Top = 197
    object QryTipOvocod_tip: TStringField
      FieldName = 'cod_tip'
      Required = True
      FixedChar = True
      Size = 3
    end
    object QryTipOvodes_abrev: TStringField
      FieldName = 'des_abrev'
      FixedChar = True
      Size = 10
    end
  end
  object DsTipOvo: TDataSource
    DataSet = QryTipOvo
    Left = 608
    Top = 197
  end
  object QryLinhagem: TADQuery
    Filtered = True
    Connection = FMenu.DbsIncub2
    SQL.Strings = (
      'select cod_linhagem, des_abrev'
      'from AVFVLIN'
      'order by des_abrev')
    Left = 640
    Top = 237
    object QryLinhagemcod_linhagem: TStringField
      FieldName = 'cod_linhagem'
      Required = True
      FixedChar = True
      Size = 2
    end
    object QryLinhagemdes_abrev: TStringField
      FieldName = 'des_abrev'
      FixedChar = True
    end
  end
  object DsLinhagem: TDataSource
    DataSet = QryLinhagem
    Left = 608
    Top = 237
  end
  object dsNroLote: TDataSource
    DataSet = qryNroLote
    Left = 608
    Top = 157
  end
  object qryNroLote: TADQuery
    BeforeOpen = qryNroLoteBeforeOpen
    Filtered = True
    Connection = FMenu.DbsIncub2
    SQL.Strings = (
      'select  distinct lot.nro_lote'
      'from dbav3.uav.avfslot1 lot,avfvend edr'
      'where --lot.flg_mov_inc = 1 and '
      '   edr.cod_lote_num = lot.cod_lote_num'
      '  and edr.cod_granja = :cod_granja')
    Left = 640
    Top = 157
    ParamData = <
      item
        Name = 'COD_GRANJA'
        DataType = ftString
        ParamType = ptInput
      end>
    object qryNroLotenro_lote: TStringField
      FieldName = 'nro_lote'
      Size = 10
    end
  end
end

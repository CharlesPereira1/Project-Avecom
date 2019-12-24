inherited FPedidoRacao: TFPedidoRacao
  Tag = 37
  Left = 291
  Top = 108
  Caption = 'Movimento Pedido de Ração'
  ClientHeight = 551
  ClientWidth = 751
  FormStyle = fsMDIChild
  Position = poDefaultPosOnly
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel2: TPanel
    Width = 751
    object Label8: TLabel [0]
      Left = 487
      Top = 11
      Width = 64
      Height = 14
      Caption = 'Total Ração:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    inherited spbSistema: TSpeedBar
      Left = 636
    end
    inherited spbFerramentas: TSpeedBar
      Width = 345
      inherited spiModificar: TSpeedItem [1]
      end
      inherited spiVoltar: TSpeedItem [2]
        OnClick = VoltarClick
      end
      inherited spiAdicionar: TSpeedItem [3]
        OnClick = AdicionarClick
      end
      inherited spiConsulta: TSpeedItem [4]
        OnClick = ConsultaClick
      end
      inherited spiImprimir: TSpeedItem [5]
      end
      inherited spiLimpaCampos: TSpeedItem [6]
        OnClick = LimpaCamposClick
      end
      inherited spiExcluir: TSpeedItem [7]
        OnClick = ExcluirClick
      end
    end
    object cedTotalRacao: TCurrencyEdit
      Left = 553
      Top = 7
      Width = 73
      Height = 22
      TabStop = False
      AutoSize = False
      BorderStyle = bsNone
      Color = clBtnFace
      DecimalPlaces = 0
      DisplayFormat = '#,##0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      MaxLength = 6
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
  end
  object ntbPaginas: TNotebook [1]
    Left = 0
    Top = 37
    Width = 751
    Height = 514
    Align = alClient
    Color = clSilver
    ParentColor = False
    TabOrder = 1
    object TPage
      Left = 0
      Top = 0
      Caption = 'Edição'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 751
        Height = 514
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 25
          Top = 92
          Width = 65
          Height = 14
          Caption = 'Data Entrega:'
        end
        object Label4: TLabel
          Left = 25
          Top = 274
          Width = 75
          Height = 14
          Caption = 'Qtde Solicitada:'
        end
        object Label18: TLabel
          Left = 25
          Top = 36
          Width = 35
          Height = 14
          Caption = 'Granja:'
        end
        object Label22: TLabel
          Left = 25
          Top = 64
          Width = 36
          Height = 14
          Caption = 'Núcleo:'
        end
        object Label2: TLabel
          Left = 25
          Top = 11
          Width = 50
          Height = 14
          Caption = 'Nº Pedido:'
        end
        object Label3: TLabel
          Left = 25
          Top = 247
          Width = 34
          Height = 14
          Caption = 'Ração:'
        end
        object Label23: TLabel
          Left = 202
          Top = 11
          Width = 87
          Height = 14
          Caption = 'Somente Consulta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 25
          Top = 300
          Width = 72
          Height = 14
          Caption = 'Obs Complem.:'
        end
        object BitBtn1: TBitBtn
          Left = 200
          Top = 87
          Width = 129
          Height = 25
          Caption = 'Buscar Arraçoamento'
          TabOrder = 0
          OnClick = BitBtn1Click
        end
        object cedNumPedido: TCurrencyEdit
          Left = 104
          Top = 8
          Width = 75
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          TabOrder = 1
        end
        object edtCod_Granja: TEdit
          Left = 104
          Top = 32
          Width = 75
          Height = 22
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 2
          ParentFont = False
          TabOrder = 2
          Text = 'EDTCOD_GRANJA'
          OnChange = edtCod_GranjaChange
          OnExit = edtCod_GranjaExit
        end
        object dlcGranja: TDBLookupComboBox
          Left = 200
          Top = 32
          Width = 329
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'COD_GRANJA'
          ListField = 'DES_ABREV'
          ListSource = dtsQryGranja
          ParentFont = False
          TabOrder = 3
          TabStop = False
          OnCloseUp = dlcGranjaCloseUp
        end
        object edtCod_Grupo: TEdit
          Left = 104
          Top = 60
          Width = 75
          Height = 22
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 2
          ParentFont = False
          TabOrder = 4
          Text = 'EDTCOD_GRUPO'
          OnChange = edtCod_GrupoChange
          OnExit = edtCod_GrupoExit
        end
        object dlcGrupo: TDBLookupComboBox
          Left = 200
          Top = 60
          Width = 329
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'COD_GRUPO'
          ListField = 'des_abrev'
          ListSource = dtsQryGrupo
          ParentFont = False
          TabOrder = 5
          TabStop = False
          OnCloseUp = dlcGrupoCloseUp
        end
        object detDat_Entrada: TDateEdit
          Left = 104
          Top = 88
          Width = 90
          Height = 22
          NumGlyphs = 2
          TabOrder = 6
        end
        object DBGrid2: TDBGrid
          Left = 104
          Top = 113
          Width = 425
          Height = 124
          DataSource = dtsArracoamento
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          TabOrder = 7
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'sexo_ave'
              Title.Caption = 'Sexo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cod_galinheiro'
              Title.Caption = 'Galpão'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtd_rac_saco_maq'
              Title.Caption = 'Qtd Ração'
              Width = 86
              Visible = True
            end>
        end
        object cedCodRacao: TCurrencyEdit
          Left = 104
          Top = 243
          Width = 75
          Height = 22
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          TabOrder = 8
          OnChange = cedCodRacaoChange
          OnExit = cedCodRacaoExit
        end
        object dlcRacao: TDBLookupComboBox
          Left = 184
          Top = 243
          Width = 345
          Height = 22
          KeyField = 'Cod_racao'
          ListField = 'Des_Abrev'
          ListSource = dtsQryRacao
          TabOrder = 9
          TabStop = False
          OnCloseUp = dlcRacaoCloseUp
        end
        object cedQtd_Entrada: TCurrencyEdit
          Left = 104
          Top = 270
          Width = 75
          Height = 22
          AutoSize = False
          DecimalPlaces = 3
          DisplayFormat = '0.000'
          MaxLength = 5
          TabOrder = 10
        end
        object edtObsComplementar: TEdit
          Left = 104
          Top = 296
          Width = 300
          Height = 22
          TabOrder = 11
          Text = 'edtObsComplementar'
        end
        object BitBtn2: TBitBtn
          Left = 536
          Top = 203
          Width = 75
          Height = 25
          Caption = 'Somar'
          TabOrder = 12
          OnClick = BitBtn2Click
        end
        object PageControl1: TPageControl
          Left = 16
          Top = 320
          Width = 713
          Height = 192
          ActivePage = TabSheet2
          TabOrder = 13
          object TabSheet1: TTabSheet
            Caption = 'Cargas'
            object BitBtn3: TBitBtn
              Left = 549
              Top = 90
              Width = 90
              Height = 30
              Hint = 'Excluir Vacina'
              Caption = '&Excluir'
              ModalResult = 2
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = BitBtn3Click
              Glyph.Data = {
                DE010000424DDE01000000000000760000002800000024000000120000000100
                0400000000006801000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333333333333000033338833333333333333333F333333333333
                0000333911833333983333333388F333333F3333000033391118333911833333
                38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
                911118111118333338F3338F833338F3000033333911111111833333338F3338
                3333F8330000333333911111183333333338F333333F83330000333333311111
                8333333333338F3333383333000033333339111183333333333338F333833333
                00003333339111118333333333333833338F3333000033333911181118333333
                33338333338F333300003333911183911183333333383338F338F33300003333
                9118333911183333338F33838F338F33000033333913333391113333338FF833
                38F338F300003333333333333919333333388333338FFF830000333333333333
                3333333333333333333888330000333333333333333333333333333333333333
                0000}
              NumGlyphs = 2
            end
            object BitBtn4: TBitBtn
              Left = 549
              Top = 50
              Width = 90
              Height = 30
              Hint = 'Adicionar Vacina'
              Caption = '&Adicionar'
              Default = True
              ModalResult = 6
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = BitBtn4Click
              Glyph.Data = {
                DE010000424DDE01000000000000760000002800000024000000120000000100
                0400000000006801000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333333333333333330000333333333333333333333333F33333333333
                00003333344333333333333333388F3333333333000033334224333333333333
                338338F3333333330000333422224333333333333833338F3333333300003342
                222224333333333383333338F3333333000034222A22224333333338F338F333
                8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
                33333338F83338F338F33333000033A33333A222433333338333338F338F3333
                0000333333333A222433333333333338F338F33300003333333333A222433333
                333333338F338F33000033333333333A222433333333333338F338F300003333
                33333333A222433333333333338F338F00003333333333333A22433333333333
                3338F38F000033333333333333A223333333333333338F830000333333333333
                333A333333333333333338330000333333333333333333333333333333333333
                0000}
              NumGlyphs = 2
            end
            object DBGrid4: TDBGrid
              Left = 8
              Top = 1
              Width = 529
              Height = 160
              DataSource = dtsCarga
              TabOrder = 2
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -11
              TitleFont.Name = 'Arial'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Cod_racao'
                  Title.Caption = 'Código'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Des_Abrev'
                  Title.Caption = 'Ração'
                  Width = 191
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'quantidade'
                  Title.Caption = 'Quantidade'
                  Width = 93
                  Visible = True
                end>
            end
          end
          object TabSheet2: TTabSheet
            Caption = 'Medicamentos'
            ImageIndex = 1
            object Label25: TLabel
              Left = 6
              Top = 10
              Width = 72
              Height = 14
              Caption = 'Medicamentos:'
            end
            object cedCod_Vac_Medic1: TCurrencyEdit
              Left = 621
              Top = 21
              Width = 75
              Height = 22
              AutoSize = False
              DecimalPlaces = 0
              DisplayFormat = '0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              MaxLength = 10
              ParentFont = False
              TabOrder = 0
              Visible = False
              OnChange = cedCod_Vac_Medic1Change
              OnExit = cedCod_Vac_Medic1Exit
            end
            object dlcVacinas: TDBLookupComboBox
              Left = 162
              Top = 5
              Width = 371
              Height = 22
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'COD_VAC_MEDIC'
              ListField = 'Des_Detal;metodo'
              ListSource = dtsQryVacinas
              ParentFont = False
              TabOrder = 1
              TabStop = False
              OnCloseUp = dlcVacinasCloseUp
            end
            object DBGrid3: TDBGrid
              Left = 5
              Top = 32
              Width = 527
              Height = 121
              DataSource = dtsVac
              TabOrder = 2
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -11
              TitleFont.Name = 'Arial'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Cod_Vac_Medic'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'des_abrev'
                  Width = 424
                  Visible = True
                end>
            end
            object btnAdicionar: TBitBtn
              Left = 549
              Top = 50
              Width = 90
              Height = 30
              Hint = 'Adicionar Vacina'
              Caption = '&Adicionar'
              Default = True
              ModalResult = 6
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnClick = btnAdicionarClick
              Glyph.Data = {
                DE010000424DDE01000000000000760000002800000024000000120000000100
                0400000000006801000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333333333333333330000333333333333333333333333F33333333333
                00003333344333333333333333388F3333333333000033334224333333333333
                338338F3333333330000333422224333333333333833338F3333333300003342
                222224333333333383333338F3333333000034222A22224333333338F338F333
                8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
                33333338F83338F338F33333000033A33333A222433333338333338F338F3333
                0000333333333A222433333333333338F338F33300003333333333A222433333
                333333338F338F33000033333333333A222433333333333338F338F300003333
                33333333A222433333333333338F338F00003333333333333A22433333333333
                3338F38F000033333333333333A223333333333333338F830000333333333333
                333A333333333333333338330000333333333333333333333333333333333333
                0000}
              NumGlyphs = 2
            end
            object btnExcluir: TBitBtn
              Left = 549
              Top = 90
              Width = 90
              Height = 30
              Hint = 'Excluir Vacina'
              Caption = '&Excluir'
              ModalResult = 2
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              OnClick = btnExcluirClick
              Glyph.Data = {
                DE010000424DDE01000000000000760000002800000024000000120000000100
                0400000000006801000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333333333333000033338833333333333333333F333333333333
                0000333911833333983333333388F333333F3333000033391118333911833333
                38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
                911118111118333338F3338F833338F3000033333911111111833333338F3338
                3333F8330000333333911111183333333338F333333F83330000333333311111
                8333333333338F3333383333000033333339111183333333333338F333833333
                00003333339111118333333333333833338F3333000033333911181118333333
                33338333338F333300003333911183911183333333383338F338F33300003333
                9118333911183333338F33838F338F33000033333913333391113333338FF833
                38F338F300003333333333333919333333388333338FFF830000333333333333
                3333333333333333333888330000333333333333333333333333333333333333
                0000}
              NumGlyphs = 2
            end
            object cedCod_Vac_Medic: TEdit
              Left = 82
              Top = 5
              Width = 75
              Height = 22
              TabOrder = 5
              Text = 'cedCod_Vac_Medic'
              OnChange = cedCod_Vac_MedicChange
              OnExit = cedCod_Vac_MedicExit
            end
          end
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Tabela'
      object Label13: TLabel
        Left = 25
        Top = 65
        Width = 29
        Height = 14
        Caption = 'Local:'
      end
      object dgrGrupos: TDBGrid
        Left = 0
        Top = 0
        Width = 751
        Height = 394
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'cod_granja'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'cod_grupo'
            Title.Caption = 'Núcleo'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'data_entrega'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'seq_pedido'
            Width = 28
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'cod_racao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'des_abrev'
            Title.Caption = 'Ração'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtde_solicitada'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nro_pedido'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nom_digit_inclusao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dat_digit_inclusao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'obs_complementar'
            Title.Caption = 'Obs Complementar'
            Width = 200
            Visible = True
          end>
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 394
        Width = 751
        Height = 120
        Align = alBottom
        DataSource = dtsMed
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Cod_Vac_Medic'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'des_abrev'
            Width = 262
            Visible = True
          end>
      end
    end
  end
  inherited ppmPrincipal: TPopupMenu
    Left = 512
    Top = 16
    inherited Adicionar1: TMenuItem
      OnClick = AdicionarClick
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
    Left = 576
    Top = 16
  end
  inherited QryLock: TADQuery
    Left = 544
    Top = 16
  end
  object QryBusca: TADQuery
    ConnectionName = 'Manejo'
    Left = 448
    Top = 16
  end
  object QryOperacao: TADQuery
    ConnectionName = 'Manejo'
    Left = 480
    Top = 16
  end
  object dtsQryConsulta: TDataSource
    DataSet = QryConsulta
    Left = 352
    Top = 16
  end
  object QryConsulta: TADQuery
    ConnectionName = 'Manejo'
    SQL.Strings = (
      'Select'
      ''
      '  pra.cod_granja,'
      '  pra.cod_grupo,'
      ''
      '  pra.data_entrega,'
      '  pra.cod_racao,'
      '  cra.des_abrev,'
      ''
      '  pra.nro_pedido,'
      '  pra.qtde_solicitada,'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '  pra.nom_digit_inclusao,'
      '  pra.dat_digit_inclusao,'
      ''
      ''
      ''
      '  pra.obs_complementar,'
      ''
      '  seq_pedido , pra.pedido_int'
      ''
      'From avfspra1 pra, avfscra1 cra, ugfvgra1 gra'
      ''
      ''
      
        ' Where pra.cod_racao = cra.cod_racao and pra.cod_granja = gra.co' +
        'd_granja'
      ''
      ''
      ''
      ''
      'Order By  pra.cod_granja, pra.cod_grupo, pra.data_entrega'
      ''
      ''
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 320
    Top = 16
    object QryConsultacod_granja: TStringField
      DisplayLabel = 'Cód.Granja'
      FieldName = 'cod_granja'
      Size = 2
    end
    object QryConsultacod_grupo: TStringField
      DisplayLabel = 'Cód.Grupo'
      FieldName = 'cod_grupo'
      Size = 2
    end
    object QryConsultadata_entrega: TDateTimeField
      DisplayLabel = 'Data Entrega'
      FieldName = 'data_entrega'
    end
    object QryConsultacod_racao: TIntegerField
      DisplayLabel = 'Cód.Ração'
      FieldName = 'cod_racao'
    end
    object QryConsultanro_pedido: TADAutoIncField
      DisplayLabel = 'Nº Pedido'
      FieldName = 'nro_pedido'
    end
    object QryConsultaqtde_solicitada: TFloatField
      DisplayLabel = 'Qtd.Solicitada'
      FieldName = 'qtde_solicitada'
      DisplayFormat = '0,000'
    end
    object QryConsultanom_digit_inclusao: TStringField
      DisplayLabel = 'Nome Digit.Inclusão'
      FieldName = 'nom_digit_inclusao'
    end
    object QryConsultadat_digit_inclusao: TDateTimeField
      DisplayLabel = 'Data Digit.Inclusão'
      FieldName = 'dat_digit_inclusao'
    end
    object QryConsultades_abrev: TStringField
      FieldName = 'des_abrev'
    end
    object QryConsultaseq_pedido: TIntegerField
      DisplayLabel = 'Seq'
      FieldName = 'seq_pedido'
    end
    object QryConsultaobs_complementar: TStringField
      FieldName = 'obs_complementar'
      Size = 50
    end
    object QryConsultapedido_int: TIntegerField
      FieldName = 'pedido_int'
    end
  end
  object dtsQryGranja: TDataSource
    DataSet = QryGranja
    Left = 376
    Top = 56
  end
  object QryGranja: TADQuery
    ConnectionName = 'Geral'
    SQL.Strings = (
      
        'Select GRA.COD_GRANJA, GRA.DES_ABREV ,centro_custo, cod_filial  ' +
        ' , tipo'
      'from'
      ' ugfsgra1 gra'
      ' WHERE COD_FILIAL <> '#39#39
      ''
      'ORDER BY  GRA.DES_ABREV'
      ''
      ' '
      '  '
      ''
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 344
    Top = 56
    object QryGranjaCOD_GRANJA: TStringField
      FieldName = 'COD_GRANJA'
      FixedChar = True
      Size = 2
    end
    object QryGranjaDES_ABREV: TStringField
      FieldName = 'DES_ABREV'
      FixedChar = True
    end
    object QryGranjacentro_custo: TStringField
      FieldName = 'centro_custo'
      FixedChar = True
      Size = 100
    end
    object QryGranjacod_filial: TStringField
      FieldName = 'cod_filial'
      FixedChar = True
      Size = 50
    end
    object QryGranjatipo: TStringField
      FieldName = 'tipo'
      FixedChar = True
      Size = 100
    end
  end
  object QryGrupo: TADQuery
    MasterSource = dtsQryGranja
    MasterFields = 'COD_GRANJA'
    ConnectionName = 'Geral'
    SQL.Strings = (
      
        'Select distinct gru.*  , gal.cod_local , (select max(x.centro_cu' +
        'sto) from ugfsccc1 x where x.cod_granja = gal.cod_granja and x.c' +
        'od_grupo = gru.cod_grupo and x.cod_local = gal.cod_local   )   c' +
        'entro_custo'
      'from'
      ' ugfsgru1 gru,'
      ' ugfsgal1 gal'
      ''
      'where'
      ' gal.cod_grupo = gru.cod_grupo and'
      ''
      '  gal.cod_granja = :COD_GRANJA'
      ' '
      ' ')
    Left = 344
    Top = 95
    ParamData = <
      item
        Name = 'COD_GRANJA'
        DataType = ftFixedChar
      end>
    object QryGrupoCOD_GRUPO: TStringField
      FieldName = 'COD_GRUPO'
      FixedChar = True
      Size = 2
    end
    object QryGrupodes_abrev: TStringField
      FieldName = 'des_abrev'
      FixedChar = True
    end
    object QryGrupoobservacao: TStringField
      FieldName = 'observacao'
      FixedChar = True
      Size = 50
    end
    object QryGrupotimestamp: TBytesField
      FieldName = 'timestamp'
      Size = 8
    end
    object QryGrupocod_local: TStringField
      FieldName = 'cod_local'
      FixedChar = True
      Size = 2
    end
    object QryGrupocentro_custo: TStringField
      FieldName = 'centro_custo'
      FixedChar = True
      Size = 50
    end
  end
  object dtsQryGrupo: TDataSource
    DataSet = QryGrupo
    Left = 376
    Top = 96
  end
  object QryRacao: TADQuery
    Filtered = True
    ConnectionName = 'Manejo'
    SQL.Strings = (
      'Select '
      '  Cod_racao, '
      '  Seq_Racao,'
      '  Des_Abrev , cod_auxiliar'
      'From avfscra1'
      'where flg_ativo = 1')
    Left = 376
    Top = 320
    object QryRacaoCod_racao: TIntegerField
      FieldName = 'Cod_racao'
    end
    object QryRacaoSeq_Racao: TIntegerField
      FieldName = 'Seq_Racao'
    end
    object QryRacaoDes_Abrev: TStringField
      FieldName = 'Des_Abrev'
      FixedChar = True
    end
    object QryRacaocod_auxiliar: TStringField
      FieldName = 'cod_auxiliar'
      FixedChar = True
      Size = 50
    end
  end
  object dtsQryRacao: TDataSource
    DataSet = QryRacao
    Left = 408
    Top = 320
  end
  object quyInclusao: TADQuery
    ConnectionName = 'Manejo'
    SQL.Strings = (
      'insert into avfspra1'
      '( nro_pedido,'
      '   cod_granja,'
      '  cod_grupo,'
      '  data_entrega,'
      '  cod_racao,'
      '  qtde_solicitada,'
      '  nom_digit_inclusao,'
      '  dat_digit_inclusao,'
      '  obs_complementar,'
      '  seq_pedido)'
      ''
      'values'
      ''
      '('
      ':nro_pedido,'
      ':cod_granja,'
      ':cod_grupo, '
      ':data_entrega,'
      ':cod_racao,'
      ':qtde_solicitada,'
      ':nom_digit_inclusao,'
      ':dat_digit_inclusao,'
      ':obs_complementar,'
      ':seq_pedido)'
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 384
    Top = 16
    ParamData = <
      item
        Name = 'nro_pedido'
      end
      item
        Name = 'cod_granja'
      end
      item
        Name = 'cod_grupo'
      end
      item
        Name = 'data_entrega'
      end
      item
        Name = 'cod_racao'
      end
      item
        Name = 'qtde_solicitada'
      end
      item
        Name = 'nom_digit_inclusao'
      end
      item
        Name = 'dat_digit_inclusao'
      end
      item
        Name = 'obs_complementar'
      end
      item
        Name = 'seq_pedido'
      end>
  end
  object quyAlteracao: TADQuery
    ConnectionName = 'Manejo'
    SQL.Strings = (
      'update avfspra1'
      'set'
      ''
      '  nom_digit_cancelamento=:nom_digit_cancelamento,'
      '  dat_digit_cancelamento=:dat_digit_cancelamento,'
      '  flg_cancelado=:flg_cancelado,'
      '  obs_cancelamento=:obs_cancelamento'
      ''
      'where'
      ''
      'nro_pedido=:nro_pedido'
      ''
      ''
      ' '
      ' '
      ' '
      ''
      ' ')
    Left = 416
    Top = 16
    ParamData = <
      item
        Name = 'nom_digit_cancelamento'
      end
      item
        Name = 'dat_digit_cancelamento'
      end
      item
        Name = 'flg_cancelado'
      end
      item
        Name = 'obs_cancelamento'
      end
      item
        Name = 'nro_pedido'
      end>
  end
  object QryVacinas: TADQuery
    Connection = FMenu.dbsManejo
    SQL.Strings = (
      
        'Select cvm.cod_vac_medic, cvm.Des_Detal, met.des_abrev metodo Fr' +
        'om avfscvm1 cvm, avfsmet1 met'
      'where cvm.cod_metodo = met.cod_metodo'
      'Order By Cod_Vac_Medic'
      ' '
      ' ')
    Left = 616
    Top = 337
    object QryVacinasmetodo: TStringField
      FieldName = 'metodo'
    end
    object QryVacinasDes_Detal: TStringField
      FieldName = 'Des_Detal'
      Size = 50
    end
    object QryVacinascod_vac_medic: TStringField
      FieldName = 'cod_vac_medic'
      Required = True
      Size = 10
    end
  end
  object dtsQryVacinas: TDataSource
    DataSet = QryVacinas
    Left = 640
    Top = 337
  end
  object rxqVac: TRxMemoryData
    FieldDefs = <
      item
        Name = 'nro_partida'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'qtd_doses'
        DataType = ftInteger
      end
      item
        Name = 'validade'
        DataType = ftDateTime
      end
      item
        Name = 'cod_laboratorio'
        DataType = ftInteger
      end
      item
        Name = 'Laboratorio'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'fabricacao'
        DataType = ftDate
      end
      item
        Name = 'des_abrev'
        DataType = ftString
        Size = 100
      end>
    Left = 610
    Top = 365
    object rxqVacdes_abrev: TStringField
      DisplayLabel = 'Medicamento'
      FieldName = 'des_abrev'
      Size = 100
    end
    object rxqVacnro_partida: TStringField
      DisplayLabel = 'Partida'
      FieldName = 'nro_partida'
      Size = 8
    end
    object rxqVacqtd_doses: TIntegerField
      DisplayLabel = 'Qtd Doses'
      FieldName = 'qtd_doses'
    end
    object rxqVacvalidade: TDateTimeField
      DisplayLabel = 'Validade'
      FieldName = 'validade'
    end
    object rxqVaccod_laboratorio: TIntegerField
      DisplayLabel = 'Cód Lab'
      FieldName = 'cod_laboratorio'
    end
    object rxqVacLaboratorio: TStringField
      DisplayLabel = 'Laboratório'
      FieldName = 'Laboratorio'
    end
    object rxqVaccod_vac_medic: TStringField
      DisplayLabel = 'Código'
      FieldName = 'Cod_Vac_Medic'
    end
    object rxqVacfabricacao: TDateField
      DisplayLabel = 'Fabricação'
      FieldName = 'fabricacao'
    end
  end
  object dtsVac: TDataSource
    DataSet = rxqVac
    Left = 646
    Top = 373
  end
  object qryMedicamentos: TADQuery
    MasterSource = dtsQryConsulta
    MasterFields = 'nro_pedido'
    ConnectionName = 'Manejo'
    SQL.Strings = (
      'SELECT m.*,'
      '       c.Des_Detal des_abrev'
      '  FROM avfsmpr1 m, avfscvm1 c'
      ' WHERE nro_pedido  =:nro_pedido'
      '  and m.Cod_Vac_Medic = c.Cod_Vac_Medic'
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 592
    Top = 277
    ParamData = <
      item
        Name = 'nro_pedido'
        DataType = ftAutoInc
      end>
    object qryMedicamentosCod_Vac_Medic: TIntegerField
      DisplayLabel = 'Código'
      FieldName = 'Cod_Vac_Medic'
    end
    object qryMedicamentosdes_abrev: TStringField
      FieldName = 'des_abrev'
      Size = 50
    end
  end
  object dtsMed: TDataSource
    DataSet = qryMedicamentos
    Left = 616
    Top = 277
  end
  object qryVerificaControle: TADQuery
    ConnectionName = 'Manejo'
    SQL.Strings = (
      'select isnull(max(seq_pedido),0) + 1 seq_pedido'
      '  from avfspra1'
      ' where cod_granja=:cod_granja'
      '   and cod_grupo=:cod_grupo'
      '   and data_entrega=:data_entrega '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 408
    Top = 221
    ParamData = <
      item
        Name = 'cod_granja'
        DataType = ftString
      end
      item
        Name = 'cod_grupo'
        DataType = ftString
      end
      item
        Name = 'data_entrega'
        DataType = ftDateTime
      end>
    object qryVerificaControleseq_pedido: TIntegerField
      FieldName = 'seq_pedido'
    end
  end
  object qryVacMed: TADQuery
    ConnectionName = 'Manejo'
    SQL.Strings = (
      'Select * From avfscvm1 cvm'
      'where cvm.cod_vac_medic = :codigo'
      ''
      ' '
      ' ')
    Left = 608
    Top = 412
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
      end>
    object qryVacMedflg_tipo: TStringField
      FieldName = 'flg_tipo'
      Size = 1
    end
    object qryVacMeddes_abrev: TStringField
      FieldName = 'des_abrev'
      Size = 40
    end
    object qryVacMeddes_detal: TStringField
      FieldName = 'des_detal'
      Size = 50
    end
  end
  object qryArracoamento: TADQuery
    ConnectionName = 'Manejo'
    SQL.Strings = (
      'select a.sexo_ave,'
      '       e.cod_galinheiro,'
      '       sum(a.maq_qtd_total) qtd_rac_saco_maq'
      '  from avfsmab1 a, avfsend1 e'
      ' where a.cod_lote_num = e.cod_lote_num'
      '   and a.data between e.dat_inicio and e.dat_fim'
      '   and e.cod_granja = :cod_granja'
      '   and e.cod_grupo  = :cod_grupo'
      '   and :data between a.data -3 and a.data +3'
      ''
      'group by a.sexo_ave,'
      '         e.cod_galinheiro'
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 264
    Top = 197
    ParamData = <
      item
        Name = 'cod_granja'
        DataType = ftString
      end
      item
        Name = 'cod_grupo'
        DataType = ftString
      end
      item
        Name = 'data'
        DataType = ftDateTime
      end>
    object qryArracoamentosexo_ave: TStringField
      FieldName = 'sexo_ave'
      FixedChar = True
      Size = 1
    end
    object qryArracoamentocod_galinheiro: TStringField
      FieldName = 'cod_galinheiro'
      FixedChar = True
      Size = 3
    end
    object qryArracoamentoqtd_rac_saco_maq: TFloatField
      FieldName = 'qtd_rac_saco_maq'
    end
  end
  object dtsArracoamento: TDataSource
    DataSet = qryArracoamento
    Left = 296
    Top = 197
  end
  object qryApagaCabeca: TADQuery
    ConnectionName = 'ConexaoMGE'
    SQL.Strings = (
      'delete from INT_TGFCAB_AVS'
      '  where ORDEMCARGA=:ORDEMCARGA'
      '    and DTNEG=:DTNEG'
      ''
      ''
      '    '
      ''
      ''
      ' '
      ' '
      ' '
      ' ')
    Left = 672
    Top = 490
    ParamData = <
      item
        Name = 'ORDEMCARGA'
      end
      item
        Name = 'DTNEG'
      end>
  end
  object qryInserirCabeca: TADQuery
    ConnectionName = 'ConexaoMGE'
    SQL.Strings = (
      'insert into INT_TGFCAB_AVS'
      '  (ORDEMCARGA,DTNEG,STATUS,tipo,obs)'
      'values'
      '  (:ORDEMCARGA,:DTNEG,:STATUS,:tipo,:obs )'
      ''
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 672
    Top = 466
    ParamData = <
      item
        Name = 'ORDEMCARGA'
      end
      item
        Name = 'DTNEG'
      end
      item
        Name = 'STATUS'
      end
      item
        Name = 'tipo'
      end
      item
        Name = 'obs'
      end>
  end
  object qryInserirDetalhe: TADQuery
    ConnectionName = 'ConexaoMGE'
    SQL.Strings = (
      'insert into INT_TGFDET_AVS'
      '( ORDEMCARGA,DTNEG,CODCENCUS,CODPARC,CODPROD,QTDNEG,SEQCARGA)'
      'values'
      
        '( :ORDEMCARGA,:DTNEG,:CODCENCUS,:CODPARC,:CODPROD,:QTDNEG,:SEQCA' +
        'RGA)'
      ''
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 704
    Top = 466
    ParamData = <
      item
        Name = 'ORDEMCARGA'
      end
      item
        Name = 'DTNEG'
      end
      item
        Name = 'CODCENCUS'
      end
      item
        Name = 'CODPARC'
      end
      item
        Name = 'CODPROD'
      end
      item
        Name = 'QTDNEG'
      end
      item
        Name = 'SEQCARGA'
      end>
  end
  object qryOrdemCarga: TADQuery
    ConnectionName = 'ConexaoMGE'
    SQL.Strings = (
      'SELECT MAX(ORDEMCARGA) ordem FROM int_tgFcab_avs')
    Left = 704
    Top = 490
    object qryOrdemCargaORDEM: TFloatField
      FieldName = 'ORDEM'
    end
  end
  object RxCarga: TRxMemoryData
    FieldDefs = <>
    Left = 548
    Top = 390
    object RxCargaCod_racao: TIntegerField
      FieldName = 'Cod_racao'
    end
    object RxCargaSeq_Racao: TIntegerField
      FieldName = 'Seq_Racao'
    end
    object RxCargaDes_Abrev: TStringField
      FieldName = 'Des_Abrev'
      FixedChar = True
    end
    object RxCargacod_auxiliar: TStringField
      FieldName = 'cod_auxiliar'
      FixedChar = True
      Size = 50
    end
    object RxCargaquantidade: TFloatField
      FieldName = 'quantidade'
    end
  end
  object dtsCarga: TDataSource
    DataSet = RxCarga
    Left = 580
    Top = 390
  end
  object qryApagaItem: TADQuery
    ConnectionName = 'ConexaoMGE'
    SQL.Strings = (
      'delete from INT_TGFDET_AVS'
      '  where ORDEMCARGA=:ORDEMCARGA'
      '    and DTNEG=:DTNEG'
      ''
      ''
      '    '
      ''
      ''
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 672
    Top = 522
    ParamData = <
      item
        Name = 'ORDEMCARGA'
      end
      item
        Name = 'DTNEG'
      end>
  end
end

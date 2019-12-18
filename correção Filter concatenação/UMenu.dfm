object FMenu: TFMenu
  Left = 384
  Top = 28
  Width = 989
  Height = 717
  Caption = 'Avecom   (34) 3235 4982  -  Manejo de Aves  -  Versão 04/11/2016'
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = mnmPrincipal
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StbMessage: TStatusBar
    Left = 0
    Top = 640
    Width = 973
    Height = 18
    Panels = <
      item
        Text = 'Bem Vindo ao Sistema !!'
        Width = 230
      end
      item
        Text = 'Usuário'
        Width = 80
      end
      item
        Alignment = taCenter
        Text = 'Date'
        Width = 110
      end
      item
        Alignment = taCenter
        Text = 'Time'
        Width = 70
      end
      item
        Text = 'Empresa'
        Width = 50
      end>
    SimplePanel = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 973
    Height = 39
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 973
      Height = 5
      Align = alTop
      Shape = bsBottomLine
    end
    object spbFerramentas: TSpeedBar
      Left = 0
      Top = 5
      Width = 973
      Height = 34
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Position = bpCustom
      Align = alClient
      Options = [sbFlatBtns, sbGrayedBtns, sbTransparentBtns]
      BtnOffsetHorz = 8
      BtnOffsetVert = 2
      BtnWidth = 34
      BtnHeight = 30
      Version = 3
      BevelOuter = bvNone
      Locked = True
      TabOrder = 0
      InternalVer = 1
      object ggeProgresso: TGauge
        Left = 478
        Top = 6
        Width = 145
        Height = 19
        MaxValue = 1000
        Progress = 0
        Visible = False
      end
      object SpeedbarSection5: TSpeedbarSection
        Caption = 'Cadastros'
      end
      object SpeedbarSection1: TSpeedbarSection
        Caption = 'Movimentos'
      end
      object Alojamento: TSpeedItem
        Tag = 1
        Caption = 'Alojamento de Aves'
        Glyph.Data = {
          76020000424D7602000000000000760000002800000020000000200000000100
          0400000000000002000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777777777777777777777777777777777777777777777777777777777777
          7777777777777777777777777777777777777777777777777777777777777777
          7777777777777777777777777777777777777777777777777777777777777777
          7777777777777777777777777700000700000000700000077777777778777787
          07777778707777077777777778FFF7870FFFFF7870FFF7077777777778FFF787
          0FFFFF7870FFF7077777777778FF78770FFFFF78770FF7077777777778FFF788
          7FFFFFF7887FF7077777777778FFFF77FFFFFFFF77FFF7077777777778FFFFFF
          FFFFFFFFFFFFF7077777777778F22222222222222222F7077777777778FFFFFF
          FFFFFFFFFFFFF7077777777778FFFFFFFFFFFFFFFFFFF7077777777778F22222
          222222222222F7077777777778FFFFFFFFFFFFFFFFFFF7077777777778FFFFFF
          FFFFFFFFFFFFF7077777777778FF272F2F272F2F272FF7077777777778FF7272
          F27272F2727FF78777777777778FFFFFFFFFFFFFFFFFF8777777777777788888
          8888888888888777777777777777777777777777777777777777777777777777
          7777777777777777777777777777777777777777777777777777777777777777
          7777777777777777777777777777777777777777777777777777777777777777
          7777777777777777777777777777777777777777777777777777}
        Hint = 'Alojamento de Aves'
        Spacing = 1
        Left = 8
        Top = 2
        Visible = True
        OnClick = AlojamentodeAves1Click
        SectionName = 'Cadastros'
      end
      object Programacao: TSpeedItem
        Tag = 4
        Caption = 'Programação de Manejo'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000010000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          003337777777777777F330FFFFFFFFFFF03337F3333FFF3337F330FFFF000FFF
          F03337F33377733337F330FFFFF0FFFFF03337F33337F33337F330FFFF00FFFF
          F03337F33377F33337F330FFFFF0FFFFF03337F33337333337F330FFFFFFFFFF
          F03337FFF3F3F3F3F7F33000F0F0F0F0F0333777F7F7F7F7F7F330F0F000F070
          F03337F7F777F777F7F330F0F0F0F070F03337F7F7373777F7F330F0FF0FF0F0
          F03337F733733737F7F330FFFFFFFF00003337F33333337777F330FFFFFFFF0F
          F03337FFFFFFFF7F373330999999990F033337777777777F733330FFFFFFFF00
          333337FFFFFFFF77333330000000000333333777777777733333}
        Hint = 'Programação de Manejo'
        NumGlyphs = 2
        Spacing = 1
        Left = 42
        Top = 2
        Visible = True
        OnClick = ProgramaodeManejo1Click
        SectionName = 'Cadastros'
      end
      object Padroes: TSpeedItem
        Tag = 12
        Caption = 'Padrões'
        Glyph.Data = {
          76020000424D7602000000000000760000002800000020000000200000000100
          0400000000000002000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000FFFFFFFFFF0FFFFFF
          FFFFFFFFFFFFFF0FFFFFFFFFF0FFFFFFFFFFFFFFFFFFFF0FFFFFFFFFF0FFFF00
          00FFFFFFFFFFFF0FFFFFFFFFF0FFFF0000FFFFFFFFFFFF0FFFFFFFFFF0FFFF00
          00FFFFFFFFFFFF0FFFFFFFFFF0FFFF0000FFFFFFFFFFFF0FFFFFFFFFF0FFFF00
          00FFFFFFFFFFFF0FFFFFFFFFF0FFFF0000000038FFFFFF0FFFFFFFFFF0FFFF00
          000000008FFFFF0FFFFFFFFFF0FFFF000000000008FFFF0FFFFFFFFFF0FFFF00
          00FF830003FFFF0FFFFFFFFFF0FFFF0000FFF80000FFFF0FFFFFFFFFF0FFFF00
          00FFFF0000FFFF0FFFFFFFFFF0FFFF0000FFF80000FFFF0FFFFFFFFFF0FFFF00
          00FF830003FFFF0FFFFFFFFFF0FFFF000000000008FFFF0FFFFFFFFFF0FFFF00
          000000003FFFFF0FFFFFFFFFF0FFFF0000000038FFFFFF0FFFFFFFFFF0FFFFFF
          FFFFFFFFFFFFFF0FFFFFFFFFF0FFFFFFFFFFFFFFFFFFFF0FFFFFFFFFF0000000
          000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Hint = 'Padrões'
        Spacing = 1
        Left = 76
        Top = 2
        Visible = True
        OnClick = Padres1Click
        SectionName = 'Cadastros'
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
        Hint = 'Saída|'
        NumGlyphs = 2
        Spacing = 1
        Left = 382
        Top = 2
        Visible = True
        OnClick = spiSaidaClick
        SectionName = 'Cadastros'
      end
      object Avaliacao: TSpeedItem
        Tag = 28
        Caption = 'Avaliação Técnica'
        Glyph.Data = {
          36020000424D360200000000000076000000280000001D0000001C0000000100
          040000000000C001000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFF86CECC
          0ECEC08FFFFFFFFFF000FFFF8806ECEC0EECC08FFFFFFFFFF000FFF80006CECC
          0ECEC08FFFFFFFFFF000FF801106ECEC4EECC08FFFFFFFFFF000FFF1110006CE
          CECEC08FFFFFFFFFF000FFF8000333646CEC43FFFFFFFFFFF000FF8088033300
          064408FFFFFFFFFFF000FF0877803008788808FFFF888FFFF000F08777801110
          87780888888088FFF000F07778881991087000000033088FF000F0F778077099
          10091919103B308FF000F85F778877099090000000B3B08FF000FF0F77708770
          000FFFFFF83B308FF000FF80F77087009FFF087777800888F000FF80F7777709
          8770877777FF0888F000FFF88F77708887087777787FF088F000FFFF88777088
          78F7777778FFF088F000FFFFF8877088777F77778FFFF088F000FFFFFF800088
          7FFFF778FFFFF088F000FFFFFF80308877FFF88FFFFFF088F000FFFFFF803083
          00FFFFFFFFFF708FF000FFFFF8333303338FFFFFF778118FF000FFFFF8033B00
          90877777880118FFF000FFFFF80333300908888880118FFFF000FFFFF8000000
          809000000118FFFFF000FFFFF803333088099911188FFFFFF000FFFFFF803330
          FF8000000FFFFFFFF000FFFFFFFF0008FFFFFFFFFFFFFFFFF000}
        Hint = 'Avaliação Técnica'
        Spacing = 1
        Left = 314
        Top = 2
        Visible = True
        OnClick = AvaliaoTcnica1Click
        SectionName = 'Movimentos'
      end
      object Box: TSpeedItem
        Tag = 29
        Caption = 'Movimento Box'
        Glyph.Data = {
          76020000424D7602000000000000760000002800000020000000200000000100
          0400000000000002000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777777777777777777777777777777777777777777777777777777777777
          7777777777777777777777886666666666666666666688888777778000000000
          0000000000000000877777808777777777606777777777708777778077777777
          7770777777777770877777807777777777707777777777708777778077777777
          77707777CCCCCC70877777807799999997707777CCCCC7708777778077777777
          77707777CCCCC770877777807777777777707777CCCCCC708777778077777777
          777077C7C77CCC70877777807777777777707CC77777CCC08777778087777777
          77606C7777777CC087777780000000000000CC0000000CC08777778000000000
          0000CC0000000CC087777780877777777760CC7777777C808777778077777B77
          7770CCC77C77CC708777778077777B7777707CCC7C7CC7708777778077777B77
          77707CCCCC7777708777778077BBBBBBB77077CCCC7777708777778077777B77
          777077CCCC7777708777778077777B7777707CCCCC7777708777778077777B77
          7770777777777770877777808777777777606777777777808777778000000000
          0000000000000000877777886666666666666666666668888777777777777777
          7777777777777777777777777777777777777777777777777777777777777777
          7777777777777777777777777777777777777777777777777777}
        Hint = 'Movimento Box'
        Spacing = 1
        Left = 144
        Top = 2
        Visible = True
        OnClick = Box1Click
        SectionName = 'Movimentos'
      end
      object Consumo: TSpeedItem
        Tag = 30
        Caption = 'Consumo de Ração'
        Glyph.Data = {
          76020000424D7602000000000000760000002800000020000000200000000100
          0400000000000002000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          F777777FFFFFFFFFFFFFFFFFFFFFF78311111111387FFFFFFFFFFFFFFFF81111
          8388888831187FFFFFFFFFFFFF81877FF77FFFFFF77837FFFFFFFFFFF8877788
          11811117887F78FFFFFFFFFF777888111189911701177FFFFFFFFFFF77811711
          11891117001787FFFFFFFFFF77811711118111170017187FFFFFFFFF78711881
          11811188008817FFFFFFFFFF7878117111811981017187FFFFFFFFFFF7878188
          1181187117887FFFFFFFFFFFF77778187388878777777FFFFFFFFFFFFF777777
          777777777777FFFFFFFFFFFFFFF7777777888877777FFFFFFFFFFFFFFFFFF777
          3111111877FFFFFFFFFFFFFFFFFFFFF711199917FFFFFFFFFFFFFFFFFFFFFFF7
          11111117FFFFFFFFFFFFFFFFFFFFFFFF7111117FFFFFFFF77888FFFFFFFFFFFF
          F1111187883111100000FFFFF777788811111111111158888888811000000005
          81999877777788888887000588888877739993877777FFFFFFFF000888888777
          771113FFFFFFFFFFFFFFFFFFFFFFFFFFFF3117FFFFFFFFFFFFFFFFFFFFFFFFFF
          FF713FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77FFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Hint = 'Consumo de Ração'
        Spacing = 1
        Left = 178
        Top = 2
        Visible = True
        OnClick = ConsumodeRao12Click
        SectionName = 'Movimentos'
      end
      object Producao: TSpeedItem
        Tag = 31
        Caption = 'Produção de Ovos'
        Glyph.Data = {
          36090000424D3609000000000000360000002800000020000000180000000100
          1800000000000009000000000000000000000000000000000000A0B8BFA0B8BF
          A0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8
          BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BF7F90BF5F689F40507F40
          48703F486F40507050587F5F688F6F7890A0B8BFA0B8BFA0B8BFA0B8BFA0B8BF
          A0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8
          BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BF90B8E06080B030508F1F386F10205000
          184000183F10183F1F20402F304F3F406050587F607090A0B8BFA0B8BFA0B8BF
          A0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8
          BFA0B8BFA0B8BFA0B8BFA0B8BF8FB8DF6090CF5078BF4068AF40609F3F588F30
          40701020400010301010301F183F1F203F3030503F486FA0B8BFA0B8BFA0B8BF
          A0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8
          BFA0B8BFA0B8BFA0B8BF80B0DF6098CF5080CF4070BF3F60AF30589F30508F3F
          48803F507F20305F00103F10103F1F183F20203F20304F3F486FA0B8BFA0B8BF
          A0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0C0E08FA8DF8098
          CF7F98C07FA0CF90C0F07FB0EF60A0E05F90D04F80C03F68B030589F2F488F2F
          407F20407F30487F2F406F1F204010203F1F28402020402F3050A0B8BFA0B8BF
          A0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BF7F90C050689F3F508F3F50
          7F3050806088BF90C8FF80C0FF70B0F06FA0E05F90D04078C03F60A02F509020
          407F1F307F2038702F40702F386F1F284F1F284F20284F2F3050A0B8BFA0B8BF
          A0B8BFA0B8BFA0B8BFA0B8BFA0B8BF9FC0E06F90C05078BF3F609F20387F1F28
          5F1028607FA0D09FD8FF90D0FF80C0FF7FB0F06FA0E05088D04070B030589F20
          40802038701F306F1F306F2F386F2F38602028502F30503F4060A0B8BFA0B8BF
          A0B8BFA0B8BFA0B8BFA0B8BF90C0F06FA0DF5F90DF4F80CF4070BF4068B04058
          A010287080A8D0AFE0FFA0E0FF9FD0FF80C8FF7FB8F060A0E05088CF4070B02F
          50902F407F1F306F1F30601F30602F387030386F4050705F688FA0B8BFA0B8BF
          A0B8BFA0B8BFA0B8BF8FC0EF70B0EF6FA0E05F90DF4F80CF3F70B03F68AF3060
          B02F509F6F98C0B0E8FFB0E8FFAFE0FF90D8FF8FC8FF70B0F06098E05080CF3F
          68AF30488F1F38701F306F10286020386F3F50806F78908090B0A0B8BFA0B8BF
          A0B8BFA0B8BF9FC8EF80C0F070B8F070A8EF6FA0E05090D04078C03F68B02F58
          B02F58AF3F68A0B0E8FFB0F0FFB0E8FFA0E0FF9FD8FF8FC8FF70B0EF6098DF4F
          80BF3F60A02F48802038701F306020306F4F608F8090AFA0B8BFA0B8BFA0B8BF
          A0B8BFA0B8BF8FC8FF7FC0FF70C0FF70B8F06FA8EF5F98E04F80D03F68C02F60
          B02F58B01F48908FB8E0BFF0FFBFE8FFAFE8FFA0E0FF90D0FF80C0FF70A8E060
          90D04078BF3F589F3048802F38702F386F50689080A0BFA0B8BFA0B8BFA0B8BF
          A0B8BF9FD8FF8FD0FF80C8FF7FC8FF7FC0FF70B0F06FA0EF5088DF4070C03058
          B02F50AF20488F4F70A0A0D0F0BFE8FFBFE8FFB0E0FFA0D8FF8FC8FF80B8F070
          A0EF5088D04078B03F609F3F50803F507F5F70908FA0BFA0B8BFA0B8BFA0B8BF
          A0B8BF9FD8FF90D8FF90D0FF90D0FF8FC8FF7FC0FF6FB0F05F98DF4078CF3060
          B02F489F3048905F78B02F508080B0DFB0E0FFAFE8FFA0E0FF90D8FF8FC8FF80
          B0F070A0E06090CF5F80BF50709F30486F60708F90A8BFA0B8BFA0B8BFA0B8BF
          A0B8BFA0E0FFA0E0FFA0E0FFA0E0FF9FD0FF80C8FF70B0F05FA0E04080CF2F60
          AF20489030408F1F307F20488F3070B060A0D080C0F090D0FF90D0FF90C8FF8F
          B8F080A8E07090CF50689F2F406F4F58707F90A0A0B8CFA0B8BFA0B8BFA0B8BF
          A0B8BFA0E0FFAFE8FFBFE8FFBFE8FFA0D8FF80C8FF6FB8FF5FA0E04F80C02F58
          A02F48901028702F489F4F80CF5098E05098E05090DF4F90DF4F80CF4070BF30
          58A020407F20386F3048705060807088A09FA8C0A0B8BFA0B8BFA0B8BFA0B8BF
          A0B8BFAFE8FFB0E8FFBFF0FFBFE8FFA0D8FF80C8FF70B8FF60A0E04F80C03058
          AF2048902048905F90D06FA8EF6FA8F060A0F05F98EF5090E04F80CF3F68BF20
          509F2038701F386F5F70907F90B0A0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BF
          A0B8BFA0B8BFB0F0FFBFF0FFBFE8FFA0D8FF80C8FF70B8FF6098EF4F78CF3F60
          B03060B05F98E06FB8F07FC0FF7FC0FF70B8F06FA8EF5F98DF4F88C03F70AF2F
          589020387020386F8098C0A0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BF
          A0B8BFA0B8BFA0B8BFA0E8FFA0E0FF9FD8FF80C8FF6FB8FF60A0E05088C0A0B8
          BF6FB0F080C0FF90D0FF9FD0FF8FC8FF80C0FF70B0F05FA0E05088CF4070B030
          589F2040703F5070A0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BF
          A0B8BFA0B8BFA0B8BFA0B8BFA0D8FF90D0FF80C0FF80B0EFA0B8BFA0B8BFA0B8
          BF8FD0FF90D8FFA0E0FFAFE0FF9FD8FF8FC8FF7FB8F060A0E05088D04070BF30
          589F2F48707F90B0A0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BF
          A0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFB0E8
          FF90D8FF9FE0FFB0E8FFBFE8FFA0E0FF8FC8FF7FB8F060A8E05090D04078BF30
          609F507090A0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BF
          A0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFCFF8
          FFAFE0FFAFE8FFB0F0FFB0E8FFA0D8FF80C8FF7FB8FF6FA0EF5F90D05078B05F
          70A0A0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BF
          A0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8
          BFC0E8FFA0E0FFAFE0FFA0E0FF8FD0FF80C0FF7FB8F06FA8EF6090C07090BFA0
          B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BF
          A0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8
          BFA0B8BFB0E0FFA0D8FF90D8FF7FD0FF80C0FF70B0EF70A8E090B8E0A0B8BFA0
          B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BF
          A0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8
          BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0
          B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BFA0B8BF}
        Hint = 'Produção de Ovos|'
        Spacing = 1
        Left = 212
        Top = 2
        Visible = True
        OnClick = ProduodeOvos1Click
        SectionName = 'Movimentos'
      end
      object Pesagem: TSpeedItem
        Tag = 32
        Caption = 'Pesagem de Aves'
        Glyph.Data = {
          72010000424D7201000000000000760000002800000018000000150000000100
          040000000000FC00000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFF0119FFFFFFFFFFFFFFFFFFF001119FFFFFFFFFFFFFFFFF0011
          1119FFFFFFFFF0119FFF6FFFFFF6FFFFFFFF001119FFF6FFFF6FFFFFFFF00111
          119FF6FFFF6FFFFFFFF6FFFFFF6FFF6FF6FFFFFFFFFF6FFFF6FFFF6FF6FFFFFF
          FFFF6FFFF6FFFFF66FFFFFFFFFFFF6FF6FFFFFF66FFFFFFFFFFFF6FF6FFFFFFF
          0000FFFFFFFFFF66FFFFFFFFFFFF0000000FFF66FFFFFFFFFFFFFFF6FFF0000F
          FFFFFFFFFFFFFFF6FFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFFFFFFFFFFFFFFFFF6
          FFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFFFFFFFFFF
          FFFFFFF6FFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFFFFFF}
        Hint = 'Pesagem de Aves|'
        Spacing = 1
        Left = 246
        Top = 2
        Visible = True
        OnClick = Pesagem1Click
        SectionName = 'Movimentos'
      end
    end
  end
  object mnmPrincipal: TMainMenu
    Left = 8
    Top = 72
    object Cadastros2: TMenuItem
      Caption = '&Cadastros'
      object Lote1: TMenuItem
        Caption = '&Lote'
        object AlojamentodeLote1: TMenuItem
          Tag = 1
          Caption = 'Alojamento de &Lote'
          OnClick = AlojamentodeLote1Click
        end
        object AlojamentodeAves1: TMenuItem
          Tag = 2
          Caption = 'Alojamento Complementar de &Aves'
          OnClick = AlojamentodeAves1Click
        end
        object CompletarGalpo1: TMenuItem
          Tag = 3
          Caption = '&Completar Galpão'
          OnClick = CompletarGalpo1Click
        end
        object N1: TMenuItem
          Tag = 4
          Caption = '-'
        end
        object AgrupamentodeLote1: TMenuItem
          Tag = 5
          Caption = 'A&grupamento de Lote'
          OnClick = AgrupamentodeLote1Click
        end
        object DesvincularLotesAgrupados1: TMenuItem
          Tag = 6
          Caption = '&Desvincular Lotes Agrupados'
          OnClick = DesvincularLotesAgrupados1Click
        end
        object N9: TMenuItem
          Tag = 9
          Caption = '-'
        end
        object AcertodeSaldo1: TMenuItem
          Tag = 7
          Caption = 'Acerto de Aves &Iniciais'
          OnClick = AcertodeSaldo1Click
        end
        object AcertodeSaldoProduo1: TMenuItem
          Tag = 8
          Caption = 'Acerto de Aves &Produção'
          OnClick = AcertodeSaldoProduo1Click
        end
        object CompletarIdades1: TMenuItem
          Tag = 9
          Caption = 'Complementar &Idades'
          OnClick = CompletarIdades1Click
        end
        object ProgramaLuz1: TMenuItem
          Tag = 78
          Caption = 'Programação de Luz'
          OnClick = ProgramaLuz1Click
        end
      end
      object Geral1: TMenuItem
        Caption = '&Geral'
        object Acesso1: TMenuItem
          Caption = 'Acesso'
          OnClick = Acesso1Click
        end
        object LinhagemdeAves1: TMenuItem
          Tag = 10
          Caption = '&Linhagem de Aves'
          OnClick = LinhagemdeAves1Click
        end
        object IdentificaodeAves1: TMenuItem
          Tag = 11
          Caption = '&Identificação de Aves'
          OnClick = IdentificaodeAves1Click
        end
        object Padres1: TMenuItem
          Tag = 12
          Caption = '&Padrões'
          OnClick = Padres1Click
        end
        object EncerrarPadro1: TMenuItem
          Tag = 13
          Caption = 'E&ncerramento de Padrão'
          OnClick = EncerrarPadro1Click
        end
        object N2: TMenuItem
          Tag = 14
          Caption = '-'
        end
        object Causas2: TMenuItem
          Tag = 14
          Caption = '&Causas e Ocorrências'
          OnClick = Causas2Click
        end
        object Ocorrncias2: TMenuItem
          Tag = 15
          Caption = '&Ocorrências de Falta d'#39'Agua e Energia'
          OnClick = Ocorrncias2Click
        end
        object GruposdeAvaliaoTcnica1: TMenuItem
          Tag = 16
          Caption = '&Grupos de Avaliação Técnica'
          OnClick = GruposdeAvaliaoTcnica1Click
        end
        object SubGruposdeAvaliaoTcnica1: TMenuItem
          Tag = 16
          Caption = 'S&ubGrupos de Avaliação Técnica'
          OnClick = SubGruposdeAvaliaoTcnica1Click
        end
        object FatordeAvaliaoTcnica1: TMenuItem
          Tag = 16
          Caption = 'I&tens da Avaliação Técnica'
          OnClick = FatordeAvaliaoTcnica1Click
        end
        object Eventos1: TMenuItem
          Tag = 56
          Caption = 'Eve&ntos'
          OnClick = Eventos1Click
        end
        object N4: TMenuItem
          Tag = 17
          Caption = '-'
        end
        object Laboratrio1: TMenuItem
          Tag = 17
          Caption = '&Laboratório'
          OnClick = Laboratrio1Click
        end
        object MtodosdeAplicao1: TMenuItem
          Tag = 18
          Caption = '&Métodos de Aplicação'
          OnClick = MtodosdeAplicao1Click
        end
        object VacinaseMedicamentos2: TMenuItem
          Tag = 19
          Caption = 'Insumos'
          OnClick = VacinaseMedicamentos2Click
        end
        object N7: TMenuItem
          Tag = 20
          Caption = '-'
        end
        object FasesdeCriao2: TMenuItem
          Tag = 20
          Caption = 'Fas&es de Criação'
          OnClick = FasesdeCriao2Click
        end
        object TiposdeRao2: TMenuItem
          Tag = 21
          Caption = 'Fases da Ração'
          OnClick = TiposdeRao2Click
        end
        object Rao1: TMenuItem
          Tag = 22
          Caption = '&Ração'
          OnClick = Rao1Click
        end
        object VacinaseMedicamentosdaRao1: TMenuItem
          Tag = 23
          Caption = 'Vacinas e &Medicamentos da Ração'
          OnClick = VacinaseMedicamentosdaRao1Click
        end
        object N8: TMenuItem
          Tag = 25
          Caption = '-'
        end
        object Material1: TMenuItem
          Caption = 'Material'
          OnClick = Material1Click
        end
        object Atividades1: TMenuItem
          Tag = 25
          Caption = '&Atividades'
          OnClick = Atividades1Click
        end
        object ProgramaoBsicadeAtividades1: TMenuItem
          Tag = 26
          Caption = '&Programação Básica de Atividades'
          OnClick = ProgramaoBsicadeAtividades1Click
        end
        object N10: TMenuItem
          Tag = 27
          Caption = '-'
        end
        object SistemadeArraoamento1: TMenuItem
          Tag = 24
          Caption = 'Sistema de Arraçoamento'
          Visible = False
          OnClick = SistemadeArraoamento1Click
        end
        object PesoEspecfico1: TMenuItem
          Tag = 27
          Caption = 'Concentração Peso E&specífico'
          OnClick = PesoEspecfico1Click
        end
        object Perdas1: TMenuItem
          Tag = 50
          Caption = 'Per&da de Ovos'
          OnClick = Perdas1Click
        end
        object N16: TMenuItem
          Caption = '-'
        end
        object Funo1: TMenuItem
          Tag = 52
          Caption = 'F&unção'
          OnClick = Funo1Click
        end
        object Responsvel1: TMenuItem
          Tag = 51
          Caption = 'Responsá&vel'
          OnClick = Responsvel1Click
        end
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Sada2: TMenuItem
        Caption = '&Saída'
        ShortCut = 16467
        OnClick = Sada2Click
      end
    end
    object Movimentos1: TMenuItem
      Caption = '&Movimentos'
      object ProgramaodeManejo1: TMenuItem
        Tag = 4
        Caption = 'Programação de &Manejo'
        OnClick = ProgramaodeManejo1Click
      end
      object Dirio1: TMenuItem
        Tag = 34
        Caption = 'Diário'
        OnClick = Dirio1Click
      end
      object ProduoXRecebimento1: TMenuItem
        Tag = 56
        Caption = 'Produção X Recebimento'
        OnClick = ProduoXRecebimento1Click
      end
      object Fertilidade1: TMenuItem
        Tag = 34
        Caption = 'Fertilidade'
        OnClick = Fertilidade1Click
      end
      object Pesagem1: TMenuItem
        Caption = 'Pesagem'
        OnClick = Pesagem1Click
      end
      object PesagemTemporaria1: TMenuItem
        Tag = 999999
        Caption = 'Pesagem Temporária'
        OnClick = PesagemTemporaria1Click
      end
      object UsodeVacinas1: TMenuItem
        Tag = 39
        Caption = 'Uso de Insumos'
        OnClick = UsodeVacinas1Click
      end
      object UsodeMedicamentos1: TMenuItem
        Tag = 3888888
        Caption = 'Uso de &Medicamentos'
        OnClick = UsodeMedicamentos1Click
      end
      object TranfernciadeAves1: TMenuItem
        Tag = 36
        Caption = '&Transferência de Aves entre Lotes'
        OnClick = TranfernciadeAves1Click
      end
      object MudanadeEndereo1: TMenuItem
        Tag = 35
        Caption = 'M&udança de Endereço'
        OnClick = MudanadeEndereo1Click
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object ArraoamentoRecria1: TMenuItem
        Tag = 30
        Caption = 'A&rraçoamento'
        OnClick = ArraoamentoRecria1Click
      end
      object PedidodeRao1: TMenuItem
        Caption = 'Pedido de Ração'
        OnClick = PedidodeRao1Click
      end
      object N17: TMenuItem
        Caption = '-'
      end
      object EntradadeRao1: TMenuItem
        Tag = 10037
        Caption = 'Entr./ Transf./ &Diferença de Ração'
        OnClick = EntradadeRao1Click
      end
      object Faltadegua1: TMenuItem
        Tag = 40
        Caption = 'Falta de &Água'
        OnClick = Faltadegua1Click
      end
      object FaltadeEnergia1: TMenuItem
        Tag = 41
        Caption = 'Falta de Ener&gia'
        OnClick = FaltadeEnergia1Click
      end
      object Eventos2: TMenuItem
        Tag = 57
        Caption = '&Eventos'
        OnClick = Eventos2Click
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object Seleo1: TMenuItem
        Tag = 47
        Caption = 'Se&leção'
        OnClick = Seleo1Click
      end
      object Debicagem1: TMenuItem
        Tag = 45
        Caption = 'Deb&icagem'
        OnClick = Debicagem1Click
      end
      object Acasalamento1: TMenuItem
        Tag = 44
        Caption = 'Acasalament&o'
        OnClick = Acasalamento1Click
      end
      object RegistrodeTemperaturaUmidadeLubrificao1: TMenuItem
        Tag = 48
        Caption = 'Temper./ Umidade / Arraçoamento'
        OnClick = RegistrodeTemperaturaUmidadeLubrificao1Click
      end
      object N15: TMenuItem
        Caption = '-'
      end
      object TestedeLote1: TMenuItem
        Tag = 43
        Caption = 'Teste de L&ote'
        OnClick = TestedeLote1Click
      end
      object AvaliaoTcnica1: TMenuItem
        Tag = 28
        Caption = 'Avaliação Técnica'
        OnClick = AvaliaoTcnica1Click
      end
      object N14: TMenuItem
        Caption = '-'
      end
      object FechamentoSemanal1: TMenuItem
        Tag = 33
        Caption = '&Fechamento Semanal'
        OnClick = FechamentoSemanal1Click
      end
      object FechamentodoLote1: TMenuItem
        Tag = 53
        Caption = 'Descarte Final de Aves'
        OnClick = FechamentodoLote1Click
      end
    end
    object Relatrio1: TMenuItem
      Caption = '&Relatório'
      object mnuRelacao: TMenuItem
        Tag = 64
        Caption = 'Relação de Lotes'
        OnClick = mnuRelacaoClick
      end
      object RecebimentoxProducao: TMenuItem
        Caption = 'Produção X Recebimento'
        OnClick = RecebimentoxProducaoClick
      end
      object Mortalidade1: TMenuItem
        Caption = 'Mortalidade'
        OnClick = Mortalidade1Click
      end
      object ConsumoeTemperatura1: TMenuItem
        Tag = 79
        Caption = 'Consumo de Água/Temperatura/Umidade'
        OnClick = ConsumoeTemperatura1Click
      end
      object FechamentodeRemunerao1: TMenuItem
        Caption = 'Fechamento de Remuneração'
        OnClick = FechamentodeRemunerao1Click
      end
      object Fertilidade2: TMenuItem
        Caption = 'Fertilidade'
        OnClick = Fertilidade2Click
      end
      object PedidodeRao2: TMenuItem
        Caption = 'Pedido de Ração'
        OnClick = PedidodeRao2Click
      end
      object mnuPesagem: TMenuItem
        Tag = 7799999
        Caption = 'Pesagem de Aves'
        OnClick = mnuPesagemClick
      end
      object mnuResumoPesagem: TMenuItem
        Tag = 67
        Caption = 'Resumo de Pesagem'
        OnClick = mnuResumoPesagemClick
      end
      object PesagemTemporria1: TMenuItem
        Tag = 67
        Caption = 'Pesagem Temporária'
        OnClick = PesagemTemporria1Click
      end
      object RelatriodeArraoamento1: TMenuItem
        Tag = 74
        Caption = 'Relatório de Arraçoamento'
        OnClick = RelatriodeArraoamento1Click
      end
      object ConsumodeRao12: TMenuItem
        Caption = 'Consumo de Ração'
        OnClick = ConsumodeRao12Click
      end
      object AlojamentosDescarte1: TMenuItem
        Tag = 1000
        Caption = 'Alojamentos / Descartes'
        OnClick = AlojamentosDescarte1Click
      end
      object HistricodeAlojamentos1: TMenuItem
        Tag = 1000
        Caption = 'Histórico de Alojamentos'
        OnClick = HistricodeAlojamentos1Click
      end
      object mnuPos: TMenuItem
        Tag = 65
        Caption = 'Posição de Aves'
        OnClick = mnuPosClick
      end
      object ProgramaManejo1: TMenuItem
        Caption = 'Programação Manejo'
        OnClick = ProgramaManejo1Click
      end
      object UsodeVacinas2: TMenuItem
        Caption = 'Uso de Vacinas e Medicamentos'
        OnClick = UsodeVacinas2Click
      end
      object AcertodeAvesnosBoxes1: TMenuItem
        Tag = 1070
        Caption = 'Acerto de Aves nos Boxes'
        OnClick = AcertodeAvesnosBoxes1Click
      end
      object mnuRelDiario: TMenuItem
        Tag = 62
        Caption = '&Diário'
        OnClick = mnuRelDiarioClick
      end
      object TransfernciadeAves1: TMenuItem
        Caption = 'Transferência de Aves '
        OnClick = TransfernciadeAves1Click
      end
      object N18: TMenuItem
        Caption = '-'
      end
      object ComparativoRecria1: TMenuItem
        Caption = 'Comparativo Recria'
        OnClick = ComparativoRecria1Click
      end
      object mnuCriaRecria: TMenuItem
        Tag = 68
        Caption = 'Fechamento Recria'
        OnClick = mnuCriaRecriaClick
      end
      object DesempenhoRecria1: TMenuItem
        Caption = 'Desempenho Recria'
        OnClick = DesempenhoRecria1Click
      end
      object CustoRecria1: TMenuItem
        Caption = 'Custo Recria'
        OnClick = CustoRecria1Click
      end
      object mnuContProd: TMenuItem
        Tag = 63
        Caption = 'Fechamento Produção'
        OnClick = mnuContProdClick
      end
      object CustoProduo1: TMenuItem
        Caption = 'Custo Produção'
        OnClick = CustoProduo1Click
      end
      object N19: TMenuItem
        Caption = '-'
      end
      object AproveitamentoOvoPinto1: TMenuItem
        Tag = 1000
        Caption = 'Aproveitamento Ovo/Pinto'
        OnClick = AproveitamentoOvoPinto1Click
      end
      object AproveitamentodeOvos1: TMenuItem
        Caption = 'Aproveitamento de Ovos'
        OnClick = AproveitamentodeOvos1Click
      end
      object ProduodeOvoseAcompanhamentoMatrizes1: TMenuItem
        Tag = 1000
        Caption = 'Produção de Ovos e Acompanhamento - Matrizes'
        OnClick = ProduodeOvoseAcompanhamentoMatrizes1Click
      end
      object mnuAnalProd: TMenuItem
        Tag = 66
        Caption = 'Demonstrativo Analítico de Produção'
        OnClick = mnuAnalProdClick
      end
      object ProduoSemanal1: TMenuItem
        Tag = 75
        Caption = 'Comparativo Semanal de Produção'
        OnClick = ProduoSemanal1Click
      end
      object AcompanhamentodeEcloso1: TMenuItem
        Tag = 1079
        Caption = 'Acompanhamento de Eclosão'
        OnClick = AcompanhamentodeEcloso1Click
      end
      object ComparaodaProduo1: TMenuItem
        Tag = 1081
        Caption = 'Comparação da Produção'
        OnClick = ComparaodaProduo1Click
      end
      object EstatsticodePlantelProduo1: TMenuItem
        Tag = 1000
        Caption = 'Estatístico de Plantel / Produção'
        OnClick = EstatsticodePlantelProduo1Click
      end
      object AcompanhamentoDiriodeProduo1: TMenuItem
        Caption = 'Acompanhamento Diário'
        OnClick = AcompanhamentoDiriodeProduo1Click
      end
      object N20: TMenuItem
        Caption = '-'
      end
      object AcompanhamentoTcnicoMensalProduo1: TMenuItem
        Caption = 'Acompanhamento Técnico Mensal'
        OnClick = AcompanhamentoTcnicoMensalProduo1Click
      end
      object mnuFichaFechamento: TMenuItem
        Tag = 1069
        Caption = 'Ficha de Fechamento'
        OnClick = mnuFichaFechamentoClick
      end
      object ControledeEstoque1: TMenuItem
        Tag = 1071
        Caption = 'Controle de Estoque'
        OnClick = ControledeEstoque1Click
      end
      object SaldodeAves1: TMenuItem
        Tag = 72
        Caption = '&Saldo de Aves'
        OnClick = SaldodeAves1Click
      end
      object AvaliaoTcnica2: TMenuItem
        Tag = 73
        Caption = 'Avaliação Técnica'
        object Planilha1: TMenuItem
          Tag = 73
          Caption = 'Planilha'
          OnClick = Planilha1Click
        end
      end
      object ComparativodeDesempenho1: TMenuItem
        Tag = 1076
        Caption = 'Comparativo de Desempenho'
        Visible = False
        OnClick = ComparativodeDesempenho1Click
      end
      object Arraoamento1: TMenuItem
        Tag = 1000
        Caption = 'Arraçoamento'
        OnClick = Arraoamento1Click
      end
      object N21: TMenuItem
        Caption = '-'
      end
      object FaixadePesagemdeAvesProvisria1: TMenuItem
        Tag = 92
        Caption = 'Faixa de Pesagem de Aves - Alojamento'
        OnClick = FaixadePesagemdeAvesProvisria1Click
      end
      object ResumodePesagemdeAvesProvisria1: TMenuItem
        Tag = 91
        Caption = 'Resumo de Pesagem de Aves - Alojamento'
        OnClick = ResumodePesagemdeAvesProvisria1Click
      end
      object TesteLotes: TMenuItem
        Caption = 'Teste de Lotes'
        OnClick = TesteLotesClick
      end
    end
    object mnuGrafico: TMenuItem
      Caption = 'Gráfico'
      object mnuDesempenho: TMenuItem
        Caption = 'Desempenho'
        OnClick = mnuDesempenhoClick
      end
    end
    object Utilitrios1: TMenuItem
      Caption = '&Utilitários'
      object Configuraes1: TMenuItem
        Caption = 'Confi&gurações'
        OnClick = Configuraes1Click
      end
      object Calculadora1: TMenuItem
        Caption = '&Calculadora'
        OnClick = Calculadora1Click
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object ConsultaMovimentos1: TMenuItem
        Tag = 49
        Caption = 'Consulta Movimentos'
        OnClick = ConsultaMovimentos1Click
      end
      object MonitordeMovimentos1: TMenuItem
        Tag = 49
        Caption = 'Monitor de Movimentos'
        OnClick = MonitordeMovimentos1Click
      end
      object Datas1: TMenuItem
        Tag = 93
        Caption = 'Datas'
        OnClick = Datas1Click
      end
      object N22: TMenuItem
        Caption = '-'
      end
      object RecebimentodeDadosMobile1: TMenuItem
        Caption = 'Recebimento de Dados Mobile'
        OnClick = RecebimentodeDadosMobile1Click
      end
      object ImportaodeLotesExcel1: TMenuItem
        Caption = 'Importação de Lotes Excel'
        OnClick = ImportaodeLotesExcel1Click
      end
    end
    object Janelas1: TMenuItem
      Caption = '&Janelas'
      object Cascata1: TMenuItem
        Caption = '&Cascata'
        OnClick = Cascata1Click
      end
      object LadoaLadoHorizontal1: TMenuItem
        Caption = 'Lado a Lado &Horizontal'
        OnClick = LadoaLadoHorizontal1Click
      end
      object LadoaLadoVertical1: TMenuItem
        Caption = 'Lado a Lado &Vertical'
        OnClick = LadoaLadoVertical1Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object Organizarcones1: TMenuItem
        Caption = '&Organizar Ícones'
        OnClick = Organizarcones1Click
      end
      object MinimizarTodas1: TMenuItem
        Caption = '&Minimizar Todas'
        OnClick = MinimizarTodas1Click
      end
    end
    object Ajuda1: TMenuItem
      Caption = '&Ajuda'
      object UsandooSistema1: TMenuItem
        Caption = '&Usando o Sistema'
        OnClick = UsandooSistema1Click
      end
      object AjudadoSistema1: TMenuItem
        Caption = '&Help do Sistema'
        OnClick = AjudadoSistema1Click
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object SobreoSistema1: TMenuItem
        Caption = '&Sobre o Sistema'
        OnClick = SobreoSistema1Click
      end
    end
  end
  object tmrStatus: TTimer
    OnTimer = tmrStatusTimer
    Left = 8
    Top = 103
  end
  object QryAcessos: TADQuery
    Filtered = True
    ConnectionName = 'DBAcessos'
    SQL.Strings = (
      'Select a.Usuario, a.Cod_Sistema, a.Cod_Tela, b.Senha'
      'From cafsper0 a, cafsusu0 b'
      'Where a.Usuario = :Usuario and'
      '      a.Cod_Sistema = :Sistema and'
      '      b.Senha = :Senha and'
      '      a.Usuario = b.Usuario'
      'Group By a.Usuario, a.Cod_Sistema, a.Cod_Tela, b.Senha'
      ' ')
    Left = 40
    Top = 104
    ParamData = <
      item
        Name = 'Usuario'
        DataType = ftString
        Value = 'Admin'
      end
      item
        Name = 'Sistema'
        DataType = ftString
        Value = 2
      end
      item
        Name = 'Senha'
        DataType = ftString
      end>
  end
  object dbsAcessos: TADConnection
    ConnectionName = 'DBAcessos'
    Params.Strings = (
      'SERVER=177.52.180.47'
      'DATABASE=DBCA'
      'USER_NAME=uca'
      'PASSWORD=SCA'
      'DriverID=MSSQL')
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    ConnectedStoredUsage = []
    LoginPrompt = False
    Left = 40
    Top = 71
  end
  object QryEmpresa: TADQuery
    Filtered = True
    ConnectionName = 'Geral'
    SQL.Strings = (
      'Select * From ugfsemp0')
    Left = 72
    Top = 104
  end
  object dbsManejo: TADConnection
    ConnectionName = 'Manejo'
    Params.Strings = (
      'SERVER=177.52.180.47'
      'DATABASE=DBAV'
      'USER_NAME=UAV'
      'PASSWORD=SAV'
      'DriverID=MSSQL')
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    ConnectedStoredUsage = []
    LoginPrompt = False
    Left = 104
    Top = 72
  end
  object calCalculadora: TRxCalculator
    Title = 'Calculadora'
    Left = 8
    Top = 136
  end
  object dbsGeral: TADConnection
    ConnectionName = 'Geral'
    Params.Strings = (
      'SERVER=177.52.180.47'
      'DATABASE=DBUG'
      'USER_NAME=UUG'
      'PASSWORD=SUG'
      'DriverID=MSSQL')
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    ConnectedStoredUsage = []
    LoginPrompt = False
    Left = 72
    Top = 72
  end
  object QryGeraSaldo: TADQuery
    ConnectionName = 'Manejo'
    SQL.Strings = (
      'declare @Lote Int'
      'declare @Data DateTime'
      'declare @DataAnt DateTime'
      'declare @Nro_Seq int'
      'declare @MaxData DateTime'
      'declare @DataAlojamento DateTime'
      ''
      'Select @Lote = :Lote'
      'Select @MaxData = :Data'
      ''
      'Select @DataAlojamento = Dat_Aloj_Inicial'
      '         FROM avfslot1 WHERE cod_lote_num = @Lote'
      ''
      'Select @Data =  Max(Data) From avfssda1'
      '       Where Cod_Lote_Num = @Lote'
      ''
      '-- Retorna a Data do Ultimo Movimento do Lote'
      'Select @Data UltimoMovimento'
      ''
      'While @Data < @MaxData'
      'begin'
      '  Select @DataAnt =  @Data'
      '  Select @Data = DateAdd(Day, 1, @Data)'
      '  Select @Nro_Seq = DateDiff(day, @DataAlojamento, @Data)'
      '  Insert avfssda1'
      
        '           (Nro_Seq,  Data, Cod_Lote_Num, Nro_Box, flg_box, Qtd_' +
        'machos, Qtd_femeas, timestamp)'
      
        '           Select @Nro_Seq, @Data, @Lote, Nro_Box, 0, Qtd_Machos' +
        ', Qtd_Femeas, Null'
      '           From avfssda1'
      '           Where Data = @DataAnt and'
      '                 Cod_Lote_Num = @Lote and'
      '                 (Qtd_Machos <> 0 or Qtd_Femeas <> 0)'
      'end')
    Left = 104
    Top = 104
    ParamData = <
      item
        Name = 'Lote'
        DataType = ftInteger
      end
      item
        Name = 'Data'
        DataType = ftDate
      end>
  end
  object QryGeraTarefa: TADQuery
    ConnectionName = 'Manejo'
    SQL.Strings = (
      'declare @Lote Int'
      'declare @Data DateTime'
      'declare @Movimento Int'
      'declare @Origem Int'
      'declare @Usuario Char(20)'
      'declare @Tipo Int'
      ''
      'Select @Lote = :Lote'
      'Select @Data = :Data'
      'Select @Movimento = :Movimento'
      'Select @Origem = :Origem'
      'Select @Usuario = :Usuario'
      'Select @Tipo = :Tipo'
      ''
      'if @Tipo = 1 /* Inclusão e Alteração */'
      '  begin'
      '    Delete From avfsmnr1'
      '    Where Cod_Lote_Num = @Lote'
      '      and Cod_Movimento = @Movimento'
      '      and Cod_Movimento_Origem = @Origem'
      '      and Dat_Movto = @Data'
      ''
      
        '    Insert avfsmnr1 (Cod_Lote_Num, Cod_Movimento, Cod_Movimento_' +
        'Origem, Dat_Movto, Usuario, TimeStamp)'
      '    Values (@Lote, @Movimento, @Origem, @Data, @Usuario, Null)'
      '  end'
      ''
      'if @Tipo = 2 /* Exclusão */'
      '  begin'
      '        Delete From avfsmnr1'
      '        Where Cod_Lote_Num = @Lote'
      '          and Cod_Movimento = @Movimento'
      '          and Cod_Movimento_Origem = @Origem'
      '          and Dat_Movto = @Data'
      '  end'
      ''
      
        'if @Tipo = 3 /* Remove todas a tarefas após um movimentação de B' +
        'ox */'
      '  begin'
      '    Delete From avfsmnr1'
      '    Where Cod_Lote_Num = @Lote'
      '      and Dat_Movto = @Data'
      '  end'
      ' ')
    Left = 104
    Top = 136
    ParamData = <
      item
        Name = 'Lote'
        DataType = ftInteger
      end
      item
        Name = 'Data'
        DataType = ftDate
      end
      item
        Name = 'Movimento'
        DataType = ftInteger
      end
      item
        Name = 'Origem'
        DataType = ftInteger
      end
      item
        Name = 'Usuario'
        DataType = ftString
      end
      item
        Name = 'Tipo'
        DataType = ftInteger
      end>
  end
  object QryDadosLote: TADQuery
    ConnectionName = 'Manejo'
    SQL.Strings = (
      'declare @Lote Int'
      ''
      'Select @Lote = :Lote'
      ''
      'Select * From avfslot1 lot, avfsend1 edr'
      'Where lot.Cod_Lote_Num = @Lote'
      '  and lot.Cod_Lote_Num = edr.Cod_Lote_Num'
      '  and edr.Dat_Fim = '#39'12/31/9999'#39)
    Left = 104
    Top = 168
    ParamData = <
      item
        Name = 'Lote'
        DataType = ftInteger
      end>
  end
  object QryBuscaIdade: TADQuery
    ConnectionName = 'Manejo'
    SQL.Strings = (
      'declare @Lote Int'
      'declare @Data DateTime'
      ''
      'Select @Lote = :Lote'
      'Select @Data = :Data'
      ''
      'Select * From avfsdat1'
      'Where Cod_Lote_Num = @Lote'
      '  and @Data between dat_inicio and dat_fim')
    Left = 104
    Top = 200
    ParamData = <
      item
        Name = 'Lote'
        DataType = ftInteger
      end
      item
        Name = 'Data'
        DataType = ftDate
      end>
  end
  object QryEnderecoDisponivel: TADQuery
    ConnectionName = 'Manejo'
    SQL.Strings = (
      'declare @Local char(2)'
      'declare @Granja char(2)'
      'declare @Grupo char(2)'
      'declare @Galpao char(3)'
      ''
      'Select @Local = :Local'
      'Select @Granja = :Granja'
      'Select @Grupo = :Grupo'
      'Select @Galpao = :Galpao'
      ''
      'Select * From avfsend1'
      'Where Cod_Local = @Local'
      '  and Cod_Granja = @Granja'
      '  and Cod_Grupo = @Grupo'
      '  and Cod_Galinheiro = @Galpao'
      '  and Dat_Fim = '#39'12/31/9999'#39)
    Left = 104
    Top = 232
    ParamData = <
      item
        Name = 'Local'
        DataType = ftString
      end
      item
        Name = 'Granja'
        DataType = ftString
      end
      item
        Name = 'Grupo'
        DataType = ftString
      end
      item
        Name = 'Galpao'
        DataType = ftString
      end>
  end
  object QryExisteEndereco: TADQuery
    ConnectionName = 'Geral'
    SQL.Strings = (
      'declare @Local char(2)'
      'declare @Granja char(2)'
      'declare @Grupo char(2)'
      'declare @Galpao char(3)'
      ''
      'Select @Local = :Local'
      'Select @Granja = :Granja'
      'Select @Grupo = :Grupo'
      'Select @Galpao = :Galpao'
      ''
      'Select * From ugfsgal1'
      'Where Cod_Local = @Local'
      '  and Cod_Granja = @Granja'
      '  and Cod_Grupo = @Grupo'
      '  and Cod_Galinheiro = @Galpao')
    Left = 72
    Top = 136
    ParamData = <
      item
        Name = 'Local'
        DataType = ftString
      end
      item
        Name = 'Granja'
        DataType = ftString
      end
      item
        Name = 'Grupo'
        DataType = ftString
      end
      item
        Name = 'Galpao'
        DataType = ftString
      end>
  end
  object QryExisteLoteData: TADQuery
    ConnectionName = 'Manejo'
    SQL.Strings = (
      'declare @Local char(2)'
      'declare @Granja char(2)'
      'declare @Grupo char(2)'
      'declare @Galpao char(3)'
      'declare @Data DateTime'
      ''
      'Select @Local = :Local'
      'Select @Granja = :Granja'
      'Select @Grupo = :Grupo'
      'Select @Galpao = :Galpao'
      'Select @Data = :Data'
      ''
      'Select * From avfsend1'
      'Where Cod_Local = @Local'
      '  and Cod_Granja = @Granja'
      '  and Cod_Grupo = @Grupo'
      '  and Cod_Galinheiro = @Galpao'
      '  and @Data between Dat_Inicio and Dat_Fim')
    Left = 104
    Top = 264
    ParamData = <
      item
        Name = 'Local'
        DataType = ftString
      end
      item
        Name = 'Granja'
        DataType = ftString
      end
      item
        Name = 'Grupo'
        DataType = ftString
      end
      item
        Name = 'Galpao'
        DataType = ftString
      end
      item
        Name = 'Data'
        DataType = ftDate
      end>
  end
  object QryBusca: TADQuery
    ConnectionName = 'Manejo'
    Left = 104
    Top = 298
  end
  object QryBuscaData: TADQuery
    ConnectionName = 'Manejo'
    SQL.Strings = (
      'declare @Lote int'
      'declare @Idade int'
      ''
      'Select @Lote = :Lote'
      'Select @Idade = :Idade'
      ''
      'Select * From avfsdat1'
      'Where Cod_Lote_Num = @Lote and Idade = @Idade')
    Left = 104
    Top = 328
    ParamData = <
      item
        Name = 'Lote'
        DataType = ftInteger
      end
      item
        Name = 'Idade'
        DataType = ftInteger
      end>
  end
  object dbsIncubatorio: TADConnection
    ConnectionName = 'Incubatorio'
    Params.Strings = (
      'SERVER=177.52.180.47'
      'DATABASE=DBCI'
      'USER_NAME=UCI'
      'PASSWORD=SCI'
      'DriverID=MSSQL')
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    ConnectedStoredUsage = []
    LoginPrompt = False
    Left = 136
    Top = 72
  end
  object qryGravaUsuario: TADQuery
    ConnectionName = 'DBAcessos'
    SQL.Strings = (
      
        'if not   exists (select * from cafsuon1 where usuario = :usuario' +
        ' and sistema =:sistema)'
      'begin'
      ''
      '   insert into cafsuon1'
      '     (usuario,sistema)'
      '   values'
      '     (:usuario,:sistema)'
      ''
      ''
      'end')
    Left = 360
    Top = 56
    ParamData = <
      item
        Name = 'usuario'
        DataType = ftString
      end
      item
        Name = 'sistema'
        DataType = ftString
      end
      item
        Name = 'usuario'
        DataType = ftString
      end
      item
        Name = 'sistema'
        DataType = ftString
      end>
  end
  object qryApagaUsuario: TADQuery
    ConnectionName = 'DBAcessos'
    SQL.Strings = (
      ''
      ''
      
        '   delete from  cafsuon1 where usuario = :usuario and sistema =:' +
        'sistema'
      ''
      ''
      ''
      ' ')
    Left = 408
    Top = 56
    ParamData = <
      item
        Name = 'usuario'
        DataType = ftString
      end
      item
        Name = 'sistema'
        DataType = ftString
      end>
  end
  object qryParametros: TADQuery
    ConnectionName = 'Manejo'
    SQL.Strings = (
      'select DATA_MANEJO from avfspar1'
      ' ')
    Left = 232
    Top = 128
    object qryParametrosDATA_MANEJO: TDateTimeField
      FieldName = 'DATA_MANEJO'
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright © 1999-2004 Fortes Informática'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 232
    Top = 97
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 264
    Top = 73
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 296
    Top = 74
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'Página da Web'
    Left = 328
    Top = 74
  end
  object RLPreviewSetup1: TRLPreviewSetup
    Left = 359
    Top = 74
  end
  object RLPrintDialogSetup1: TRLPrintDialogSetup
    Copies = 0
    Left = 392
    Top = 74
  end
  object RLSaveDialogSetup1: TRLSaveDialogSetup
    Options = [rsoDisableSaveInBackground]
    SaveInBackground = True
    Filter = RLPDFFilter1
    Left = 424
    Top = 74
  end
  object QRCompositeReport1: TQRCompositeReport
    Options = []
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Orientation = poPortrait
    PrinterSettings.PaperSize = Letter
    Left = 456
    Top = 72
  end
  object QryFechaAlojamento: TADQuery
    ConnectionName = 'Manejo'
    SQL.Strings = (
      'UPDATE avfsaai1'
      
        '   SET qtd_machos = ISNULL((SELECT SUM(X.qtd_machos) FROM avfsal' +
        'o1 X WHERE X.COD_LOTE_NUM = :cod_lote_num ),0), '
      
        '       qtd_femeas =  ISNULL((SELECT SUM(X.qtd_femeas) FROM avfsa' +
        'lo1 X WHERE X.COD_LOTE_NUM = :cod_lote_num ),0) '
      'WHERE COD_LOTE_NUM = :cod_lote_num'
      
        '  AND IDADE_INICIO = (SELECT MIN(X.IDADE_INICIO) FROM avfsaai1 X' +
        ' WHERE X.COD_LOTE_NUM = :cod_lote_num)'
      ''
      ''
      'UPDATE AVFSLOT1'
      
        '   SET qtd_inic_mac  = ISNULL((SELECT SUM(X.qtd_machos) FROM avf' +
        'salo1 X WHERE X.COD_LOTE_NUM = :cod_lote_num ),0), '
      
        '       qtd_inic_fem =  ISNULL((SELECT SUM(X.qtd_femeas) FROM avf' +
        'salo1 X WHERE X.COD_LOTE_NUM = :cod_lote_num ),0),'
      
        #9'   dat_aloj_inicial =  ISNULL((SELECT MIN(X.DAT_ALOJ) FROM avfs' +
        'alo1 X WHERE X.COD_LOTE_NUM = :cod_lote_num ),0)  '
      'WHERE COD_LOTE_NUM = :cod_lote_num'
      ''
      ''
      'UPDATE AVFSEND1'
      '   SET '
      
        #9'   DAT_INICIO =  ISNULL((SELECT MIN(X.DAT_ALOJ) FROM avfsalo1 X' +
        ' WHERE X.COD_LOTE_NUM = :cod_lote_num ),0)  '
      'WHERE COD_LOTE_NUM = :cod_lote_num'
      ''
      ''
      'DELETE FROM avfssda1'
      '  WHERE COD_LOTE_NUM = :cod_lote_num'
      
        '    AND DATA <= (SELECT MIN(X.dat_aloj_inicial) FROM AVFSLOT1 X ' +
        'WHERE X.COD_LOTE_NUM = :cod_lote_num) '
      ''
      'INSERT INTO avfssda1'
      
        ' (   NRO_SEQ , DATA       ,             COD_LOTE_NUM, NRO_BOX   ' +
        ',  flg_box ,qtd_machos , qtd_femeas,  timestamp  ,        catego' +
        'ria , lado, categoria_m, lado_m)'
      
        'SELECT 1,dat_aloj_inicial,COD_LOTE_NUM,1,0,qtd_inic_mac,qtd_inic' +
        '_fem,NULL,'#39#39','#39#39','#39#39','#39#39
      'FROM AVFSLOT1 '
      'WHERE COD_LOTE_NUM = :cod_lote_num'
      ' '
      ' ')
    Left = 248
    Top = 208
    ParamData = <
      item
        Name = 'cod_lote_num'
      end
      item
        Name = 'cod_lote_num'
      end
      item
        Name = 'cod_lote_num'
      end
      item
        Name = 'cod_lote_num'
      end
      item
        Name = 'cod_lote_num'
      end
      item
        Name = 'cod_lote_num'
      end
      item
        Name = 'cod_lote_num'
      end
      item
        Name = 'cod_lote_num'
      end
      item
        Name = 'cod_lote_num'
      end
      item
        Name = 'cod_lote_num'
      end
      item
        Name = 'cod_lote_num'
      end
      item
        Name = 'cod_lote_num'
      end
      item
        Name = 'cod_lote_num'
      end>
  end
  object qryRefazProg: TADQuery
    ConnectionName = 'Manejo'
    SQL.Strings = (
      'DELETE FROM AVFSPML1 where flg_manual = 0'
      ''
      'Insert into avfspml1'
      
        '     (idade_dias, cod_lote_num, cod_atividade, dat_inicio, dat_t' +
        'ermino, dat_realizada, timestamp, cod_metodo, cod_laboratorio)'
      ''
      'select * from ('
      '     Select distinct'
      '           Idade_Dias,'
      '           AVFSLOT1.COD_LOTE_NUM Cod_Lote_Num,'
      '           avfspat1.Cod_Atividade,'
      '           case when idade_alojamento <> 0 then'
      
        #9#9'         DateAdd(day,(Idade_Dias), DAT_ALOJ-1)- ( (avfslot1.id' +
        'ade_alojamento - 1) * 7)'
      #9#9#9'  else'
      #9#9#9'     DateAdd(day,(Idade_Dias), DAT_ALOJ-1)'
      #9#9#9'  end   Dat_Inicio,'
      ''
      '           case when idade_alojamento <> 0 then'
      
        #9#9'         DateAdd(day,(Idade_Dias+ Duracao), DAT_ALOJ-1)- ( (av' +
        'fslot1.idade_alojamento - 1) * 7)'
      #9#9#9'  else'
      #9#9#9'     DateAdd(day,(Idade_Dias+ Duracao), DAT_ALOJ-1)'
      #9#9#9'  end    Dat_Termino,'
      '           '#39'01/01/1900'#39' Dat_Realizada,'
      '           null  ,'
      '           cod_metodo,'
      '           cod_laboratorio'
      
        '           From avfspat1  , AVFSLOT1 , avfsalo1 , avfscat1  , AV' +
        'FSLAT1 , AVFSEND1'
      '           Where avfspat1.Ide_Ave = AVFSLOT1.Ide_Ave'
      '             AND avfslot1.DAT_ALOJ_INICIAL >= '#39'01/01/2016'#39
      
        '             AND avfspat1.idade_dias > (avfslot1.idade_alojament' +
        'o - 1) * 7'
      '             AND Lote_Proprio = 1'
      '             AND avfspat1.IDADE_DIAS = 0'
      '             AND avfsalo1.cod_lote_num =  avfslot1.cod_lote_num'
      
        '             AND avfscat1.COD_ATIVIDADE = avfspat1.COD_ATIVIDADE' +
        '  AND AVFSEND1.COD_LOTE_NUM = avfslot1.COD_LOTE_NUM AND  avfslot' +
        '1.DAT_ALOJ_INICIAL BETWEEN AVFSEND1.DAT_INICIO AND AVFSEND1.DAT_' +
        'FIM AND AVFSEND1.COD_LOCAL = AVFSLAT1.COD_LOCAL AND AVFSLAT1.COD' +
        '_ATIVIDADE = avfspat1.Cod_Atividade'
      '             AND avfscat1.MOVIMENTO'
      '                                    IN ('
      
        '                                          select '#39'VACINA'#39'  from ' +
        'avfslot1 X'
      
        '                                          where X.flg_prog_vacin' +
        'a = 1 and X.COD_LOTE_NUM = AVFSLOT1.COD_LOTE_NUM'
      '                                          union'
      
        '                                          select '#39'MANEJO'#39'  from ' +
        'avfslot1 X'
      
        '                                          where X.flg_prog_manej' +
        'o = 1 and X.COD_LOTE_NUM = AVFSLOT1.COD_LOTE_NUM'
      ''
      '                                          union'
      
        '                                          select '#39'PESAGEM'#39'  from' +
        ' avfslot1 X'
      
        '                                          where X.flg_prog_peso ' +
        '= 1 and X.COD_LOTE_NUM = AVFSLOT1.COD_LOTE_NUM'
      ''
      '                                    )'
      ''
      ''
      ''
      ''
      ''
      '     UNION'
      ''
      '     Select'
      '           Idade_Dias,'
      '           AVFSLOT1.COD_LOTE_NUM Cod_Lote_Num,'
      '           avfspat1.Cod_Atividade,'
      '           case when idade_alojamento <> 0 then'
      
        #9#9'         DateAdd(day,(Idade_Dias), DAT_ALOJ_INICIAL-1)- ( (avf' +
        'slot1.idade_alojamento - 1) * 7)'
      #9#9#9'  else'
      #9#9#9'     DateAdd(day,(Idade_Dias), DAT_ALOJ_INICIAL-1)'
      #9#9#9'  end   Dat_Inicio,'
      ''
      '           case when idade_alojamento <> 0 then'
      
        #9#9'         DateAdd(day,(Idade_Dias+ Duracao), DAT_ALOJ_INICIAL-1' +
        ')- ( (avfslot1.idade_alojamento - 1) * 7)'
      #9#9#9'  else'
      #9#9#9'     DateAdd(day,(Idade_Dias+ Duracao), DAT_ALOJ_INICIAL-1)'
      #9#9#9'  end    Dat_Termino,'
      '           '#39'01/01/1900'#39' Dat_Realizada,'
      '           null  ,'
      '           cod_metodo,'
      '           cod_laboratorio'
      
        '           From avfspat1, AVFSLOT1, avfscat1 , AVFSLAT1 , AVFSEN' +
        'D1'
      '           Where avfspat1.Ide_Ave = AVFSLOT1.Ide_Ave'
      '             AND avfslot1.DAT_ALOJ_INICIAL >= '#39'01/01/2016'#39
      
        '             AND avfspat1.idade_dias > (avfslot1.idade_alojament' +
        'o - 1) * 7    and Lote_Proprio = 1   and avfspat1.IDADE_DIAS > 0'
      '             AND avfscat1.COD_ATIVIDADE = avfspat1.COD_ATIVIDADE'
      '             AND sexo_ave = '#39'F'#39
      
        '             AND qtd_inic_fem <> 0   AND AVFSEND1.COD_LOTE_NUM =' +
        ' avfslot1.COD_LOTE_NUM AND  avfslot1.DAT_ALOJ_INICIAL BETWEEN AV' +
        'FSEND1.DAT_INICIO AND AVFSEND1.DAT_FIM AND AVFSEND1.COD_LOCAL = ' +
        'AVFSLAT1.COD_LOCAL AND AVFSLAT1.COD_ATIVIDADE = avfspat1.Cod_Ati' +
        'vidade'
      '             AND avfscat1.MOVIMENTO'
      '                                    IN ('
      
        '                                          select '#39'VACINA'#39'  from ' +
        'avfslot1 X'
      
        '                                          where X.flg_prog_vacin' +
        'a = 1 and X.COD_LOTE_NUM = AVFSLOT1.COD_LOTE_NUM'
      '                                          union'
      
        '                                          select '#39'MANEJO'#39'  from ' +
        'avfslot1 X'
      
        '                                          where X.flg_prog_manej' +
        'o = 1 and X.COD_LOTE_NUM = AVFSLOT1.COD_LOTE_NUM'
      ''
      '                                          union'
      
        '                                          select '#39'PESAGEM'#39'  from' +
        ' avfslot1 X'
      
        '                                          where X.flg_prog_peso ' +
        '= 1 and X.COD_LOTE_NUM = AVFSLOT1.COD_LOTE_NUM'
      ''
      '                                    )'
      ''
      '     UNION'
      ''
      '     Select'
      '           Idade_Dias,'
      '           AVFSLOT1.COD_LOTE_NUM Cod_Lote_Num,'
      '           avfspat1.Cod_Atividade,'
      '           case when idade_alojamento <> 0 then'
      
        #9#9'         DateAdd(day,(Idade_Dias), DAT_ALOJ_INICIAL-1)- ( (avf' +
        'slot1.idade_alojamento - 1) * 7)'
      #9#9#9'  else'
      #9#9#9'     DateAdd(day,(Idade_Dias), DAT_ALOJ_INICIAL-1)'
      #9#9#9'  end   Dat_Inicio,'
      ''
      '           case when idade_alojamento <> 0 then'
      
        #9#9'         DateAdd(day,(Idade_Dias+ Duracao), DAT_ALOJ_INICIAL-1' +
        ')- ( (avfslot1.idade_alojamento - 1) * 7)'
      #9#9#9'  else'
      #9#9#9'     DateAdd(day,(Idade_Dias+ Duracao), DAT_ALOJ_INICIAL-1)'
      #9#9#9'  end    Dat_Termino,'
      '           '#39'01/01/1900'#39' Dat_Realizada,'
      '           null  ,'
      '           cod_metodo,'
      '           cod_laboratorio'
      
        '           From avfspat1, AVFSLOT1, avfscat1  , AVFSLAT1 , AVFSE' +
        'ND1'
      '           Where avfspat1.Ide_Ave = AVFSLOT1.Ide_Ave'
      '           AND avfslot1.DAT_ALOJ_INICIAL >= '#39'01/01/2016'#39
      
        '           AND avfspat1.idade_dias > (avfslot1.idade_alojamento ' +
        '- 1) * 7    and Lote_Proprio = 1   and avfspat1.IDADE_DIAS > 0'
      '      '#9'   AND avfscat1.COD_ATIVIDADE = avfspat1.COD_ATIVIDADE'
      '      '#9'   AND sexo_ave = '#39'M'#39
      
        '      '#9'   AND qtd_inic_mac <> 0   AND AVFSEND1.COD_LOTE_NUM = av' +
        'fslot1.COD_LOTE_NUM AND  avfslot1.DAT_ALOJ_INICIAL BETWEEN AVFSE' +
        'ND1.DAT_INICIO AND AVFSEND1.DAT_FIM AND AVFSEND1.COD_LOCAL = AVF' +
        'SLAT1.COD_LOCAL AND AVFSLAT1.COD_ATIVIDADE = avfspat1.Cod_Ativid' +
        'ade'
      '           AND avfscat1.MOVIMENTO'
      '                                    IN ('
      
        '                                          select '#39'VACINA'#39'  from ' +
        'avfslot1 X'
      
        '                                          where X.flg_prog_vacin' +
        'a = 1 and X.COD_LOTE_NUM = AVFSLOT1.COD_LOTE_NUM'
      '                                          union'
      
        '                                          select '#39'MANEJO'#39'  from ' +
        'avfslot1 X'
      
        '                                          where X.flg_prog_manej' +
        'o = 1 and X.COD_LOTE_NUM = AVFSLOT1.COD_LOTE_NUM'
      ''
      '                                          union'
      
        '                                          select '#39'PESAGEM'#39'  from' +
        ' avfslot1 X'
      
        '                                          where X.flg_prog_peso ' +
        '= 1 and X.COD_LOTE_NUM = AVFSLOT1.COD_LOTE_NUM'
      ''
      '                                    )'
      ''
      '     UNION'
      ''
      '     Select'
      '           Idade_Dias,'
      '           AVFSLOT1.COD_LOTE_NUM Cod_Lote_Num,'
      '           avfspat1.Cod_Atividade,'
      '           case when idade_alojamento <> 0 then'
      
        #9#9'         DateAdd(day,(Idade_Dias), DAT_ALOJ_INICIAL-1)- ( (avf' +
        'slot1.idade_alojamento - 1) * 7)'
      #9#9#9'  else'
      #9#9#9'     DateAdd(day,(Idade_Dias), DAT_ALOJ_INICIAL-1)'
      #9#9#9'  end   Dat_Inicio,'
      ''
      '           case when idade_alojamento <> 0 then'
      
        #9#9'         DateAdd(day,(Idade_Dias+ Duracao), DAT_ALOJ_INICIAL-1' +
        ')- ( (avfslot1.idade_alojamento - 1) * 7)'
      #9#9#9'  else'
      #9#9#9'     DateAdd(day,(Idade_Dias+ Duracao), DAT_ALOJ_INICIAL-1)'
      #9#9#9'  end    Dat_Termino,'
      '           '#39'01/01/1900'#39' Dat_Realizada,'
      '           null  ,'
      '           cod_metodo,'
      '           cod_laboratorio'
      
        '           From avfspat1, AVFSLOT1, avfscat1  , AVFSLAT1 , AVFSE' +
        'ND1'
      '           Where avfspat1.Ide_Ave = AVFSLOT1.Ide_Ave'
      '             AND avfslot1.DAT_ALOJ_INICIAL >= '#39'01/01/2016'#39
      
        '             AND avfspat1.idade_dias > (avfslot1.idade_alojament' +
        'o - 1) * 7    and Lote_Proprio = 1   and avfspat1.IDADE_DIAS > 0'
      '      '#9'     AND avfscat1.COD_ATIVIDADE = avfspat1.COD_ATIVIDADE'
      
        '      '#9'     AND sexo_ave = '#39'A'#39'       AND AVFSEND1.COD_LOTE_NUM =' +
        ' avfslot1.COD_LOTE_NUM AND  avfslot1.DAT_ALOJ_INICIAL BETWEEN AV' +
        'FSEND1.DAT_INICIO AND AVFSEND1.DAT_FIM AND AVFSEND1.COD_LOCAL = ' +
        'AVFSLAT1.COD_LOCAL AND AVFSLAT1.COD_ATIVIDADE = avfspat1.Cod_Ati' +
        'vidade'
      '             AND avfscat1.MOVIMENTO'
      '                                    IN ('
      
        '                                          select '#39'VACINA'#39'  from ' +
        'avfslot1 X'
      
        '                                          where X.flg_prog_vacin' +
        'a = 1 and X.COD_LOTE_NUM = AVFSLOT1.COD_LOTE_NUM'
      '                                          union'
      
        '                                          select '#39'MANEJO'#39'  from ' +
        'avfslot1 X'
      
        '                                          where X.flg_prog_manej' +
        'o = 1 and X.COD_LOTE_NUM = AVFSLOT1.COD_LOTE_NUM'
      '                                          '
      '                                          union'
      
        '                                          select '#39'PESAGEM'#39'  from' +
        ' avfslot1 X'
      
        '                                          where X.flg_prog_peso ' +
        '= 1 and X.COD_LOTE_NUM = AVFSLOT1.COD_LOTE_NUM'
      '                                          '
      '                                    )) as tab'
      'where not exists(select cod_lote_num,'
      '                        COD_ATIVIDADE,'
      '                        dat_inicio'
      '                        from AVFSPML1 a'
      
        '                        where tab.Cod_Lote_Num = a.COD_LOTE_NUM ' +
        'and'
      '                        tab.COD_ATIVIDADE = a.COD_ATIVIDADE and'
      '                        tab.Dat_Inicio = a.dat_inicio'
      '                 )'
      ''
      ''
      ''
      'update avfspml1'
      '      set dat_realizada = isnull('
      ''
      '      (select max(x.dat_movto)'
      #9'     from avfsmpe1 x, AVFSDAT1 Y'
      #9#9'  where x.cod_atividade = avfspml1.cod_atividade'
      #9#9'    AND X.COD_LOTE_NUM = Y.COD_LOTE_NUM'
      #9#9#9'AND X.DAT_MOVTO BETWEEN Y.dat_inicio AND Y.dat_fim'
      #9#9#9'AND Y.IDADE = (avfspml1.idade_dias / 7)'
      #9#9#9'and x.cod_lote_num = avfspml1.cod_lote_num ),'
      ''
      '      '#39'01/01/1900'#39'  )'
      #9'   FROM AVFSDAT1 D'
      '    where D.COD_LOTE_NUM = avfspml1.COD_LOTE_NUM'
      #9'  AND avfspml1.dat_inicio BETWEEN D.dat_inicio AND D.dat_fim'
      
        '          and cod_atividade in (select x.cod_atividade from avfs' +
        'cat1 x where x.movimento = '#39'PESAGEM'#39')'
      ''
      ''
      ''
      'update avfspml1'
      '      set dat_realizada = isnull('
      ''
      
        '      (select max(x.dat_movto) from avfsmva1 x where x.cod_ativi' +
        'dade = avfspml1.cod_atividade and x.cod_lote_num = avfspml1.cod_' +
        'lote_num and x.dat_prevista = avfspml1.dat_inicio),'
      ''
      '      '#39'01/01/1900'#39'  )'
      '    where dat_realizada = '#39'01/01/1900'#39
      
        '      and cod_atividade in (select x.cod_atividade from avfscat1' +
        ' x where x.movimento = '#39'VACINA'#39')          '
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ' '
      ' ')
    Left = 248
    Top = 245
  end
  object QryGeraPML: TADQuery
    ConnectionName = 'Manejo'
    SQL.Strings = (
      'declare @Lote int'
      'declare @Data_Nascimento Datetime'
      'declare @Ide_Ave char(2)'
      'declare @LoteAgrupado bit'
      ''
      'select @Lote = :Lote'
      ''
      
        'select @Data_Nascimento = DAT_ALOJ_INICIAL                      ' +
        '    from avfslot1 where cod_lote_num = @Lote'
      
        'select @Ide_Ave = ide_ave                                       ' +
        '    from avfslot1 where cod_lote_num = @Lote'
      
        'select @LoteAgrupado = case when ide_espec = '#39'J'#39' then 1 else 0 e' +
        'nd  from avfslot1 where cod_lote_num = @Lote'
      ''
      ''
      
        'delete from avfspml1 where cod_lote_num=  @Lote and flg_manual =' +
        ' 0 '
      ''
      ''
      ''
      'IF (@LoteAgrupado = 0)'
      ''
      ''
      '-- Insere todos as programacoes basica da linhagem'
      '   Insert avfspml1'
      
        '     (idade_dias, cod_lote_num, cod_atividade, dat_inicio, dat_t' +
        'ermino, dat_realizada, timestamp, cod_metodo, cod_laboratorio)'
      ''
      '    Select distinct'
      '           Idade_Dias,'
      '           AVFSLOT1.COD_LOTE_NUM Cod_Lote_Num,'
      '           avfspat1.Cod_Atividade,'
      '           '
      ''
      '           case when idade_alojamento <> 0 then'
      
        #9#9'         DateAdd(day,(Idade_Dias), DAT_ALOJ-1)- ( (avfslot1.id' +
        'ade_alojamento - 1) * 7)'
      #9#9#9'  else'
      #9#9#9'     DateAdd(day,(Idade_Dias), DAT_ALOJ-1)'
      #9#9#9'  end   Dat_Inicio,'
      ''
      '           case when idade_alojamento <> 0 then'
      
        #9#9'         DateAdd(day,(Idade_Dias+ Duracao), DAT_ALOJ-1)- ( (av' +
        'fslot1.idade_alojamento - 1) * 7)'
      #9#9#9'  else'
      #9#9#9'     DateAdd(day,(Idade_Dias+ Duracao), DAT_ALOJ-1)'
      #9#9#9'  end    Dat_Termino,'
      ''
      ''
      '           '#39'01/01/1900'#39' Dat_Realizada,'
      '           null  ,'
      '           cod_metodo,'
      '           cod_laboratorio'
      
        '           From avfspat1  , AVFSLOT1 , avfsalo1 , avfscat1 , AVF' +
        'SLAT1 , AVFSEND1'
      '           Where avfspat1.Ide_Ave = AVFSLOT1.Ide_Ave'
      '             AND avfslot1.DAT_ALOJ_INICIAL >= '#39'01/01/2016'#39
      
        '             AND avfspat1.idade_dias >= (avfslot1.idade_alojamen' +
        'to - 1) * 7'
      '             AND Lote_Proprio = 1'
      '             AND avfspat1.IDADE_DIAS = 0'
      '             AND avfsalo1.cod_lote_num =  avfslot1.cod_lote_num'
      '             AND avfscat1.COD_ATIVIDADE = avfspat1.COD_ATIVIDADE'
      
        '             AND AVFSLOT1.COD_LOTE_NUM = @Lote    AND AVFSEND1.C' +
        'OD_LOTE_NUM = avfslot1.COD_LOTE_NUM AND  avfslot1.DAT_ALOJ_INICI' +
        'AL BETWEEN AVFSEND1.DAT_INICIO AND AVFSEND1.DAT_FIM AND AVFSEND1' +
        '.COD_LOCAL = AVFSLAT1.COD_LOCAL AND AVFSLAT1.COD_ATIVIDADE = avf' +
        'spat1.Cod_Atividade'
      '             AND avfscat1.MOVIMENTO'
      '                                    IN ('
      
        '                                          select '#39'VACINA'#39'  from ' +
        'avfslot1 X'
      
        '                                          where X.flg_prog_vacin' +
        'a = 1 and X.COD_LOTE_NUM = AVFSLOT1.COD_LOTE_NUM'
      '                                          union'
      
        '                                          select '#39'MANEJO'#39'  from ' +
        'avfslot1 X'
      
        '                                          where X.flg_prog_manej' +
        'o = 1 and X.COD_LOTE_NUM = AVFSLOT1.COD_LOTE_NUM'
      ''
      '                                          union'
      
        '                                          select '#39'PESAGEM'#39'  from' +
        ' avfslot1 X'
      
        '                                          where X.flg_prog_peso ' +
        '= 1 and X.COD_LOTE_NUM = AVFSLOT1.COD_LOTE_NUM'
      ''
      '                                    )'
      ''
      '     UNION'
      ''
      '     Select'
      '           Idade_Dias,'
      '           AVFSLOT1.COD_LOTE_NUM Cod_Lote_Num,'
      '           avfspat1.Cod_Atividade,'
      '           case when idade_alojamento <> 0 then'
      
        #9#9'         DateAdd(day,(Idade_Dias), DAT_ALOJ_INICIAL-1)- ( (avf' +
        'slot1.idade_alojamento - 1) * 7)'
      #9#9#9'  else'
      #9#9#9'     DateAdd(day,(Idade_Dias), DAT_ALOJ_INICIAL-1)'
      #9#9#9'  end   Dat_Inicio,'
      ''
      '           case when idade_alojamento <> 0 then'
      
        #9#9'         DateAdd(day,(Idade_Dias+ Duracao), DAT_ALOJ_INICIAL-1' +
        ')- ( (avfslot1.idade_alojamento - 1) * 7)'
      #9#9#9'  else'
      #9#9#9'     DateAdd(day,(Idade_Dias+ Duracao), DAT_ALOJ_INICIAL-1)'
      #9#9#9'  end    Dat_Termino,'
      ''
      ''
      '           '#39'01/01/1900'#39' Dat_Realizada,'
      '           null  ,'
      '           cod_metodo,'
      '           cod_laboratorio'
      
        '           From avfspat1, AVFSLOT1, avfscat1  , AVFSLAT1 , AVFSE' +
        'ND1'
      '           Where avfspat1.Ide_Ave = AVFSLOT1.Ide_Ave'
      '             AND avfslot1.DAT_ALOJ_INICIAL > '#39'01/01/2016'#39
      
        '             AND avfspat1.idade_dias >= (avfslot1.idade_alojamen' +
        'to - 1) * 7    and Lote_Proprio = 1   and avfspat1.IDADE_DIAS > ' +
        '0'
      '             AND avfscat1.COD_ATIVIDADE = avfspat1.COD_ATIVIDADE'
      '             AND sexo_ave = '#39'F'#39
      '             AND qtd_inic_fem <> 0'
      
        '             AND AVFSLOT1.COD_LOTE_NUM = @Lote  AND AVFSEND1.COD' +
        '_LOTE_NUM = avfslot1.COD_LOTE_NUM AND  avfslot1.DAT_ALOJ_INICIAL' +
        ' BETWEEN AVFSEND1.DAT_INICIO AND AVFSEND1.DAT_FIM AND AVFSEND1.C' +
        'OD_LOCAL = AVFSLAT1.COD_LOCAL AND AVFSLAT1.COD_ATIVIDADE = avfsp' +
        'at1.Cod_Atividade'
      '             AND avfscat1.MOVIMENTO'
      '                                    IN ('
      
        '                                          select '#39'VACINA'#39'  from ' +
        'avfslot1 X'
      
        '                                          where X.flg_prog_vacin' +
        'a = 1 and X.COD_LOTE_NUM = AVFSLOT1.COD_LOTE_NUM'
      '                                          union'
      
        '                                          select '#39'MANEJO'#39'  from ' +
        'avfslot1 X'
      
        '                                          where X.flg_prog_manej' +
        'o = 1 and X.COD_LOTE_NUM = AVFSLOT1.COD_LOTE_NUM'
      ''
      '                                          union'
      
        '                                          select '#39'PESAGEM'#39'  from' +
        ' avfslot1 X'
      
        '                                          where X.flg_prog_peso ' +
        '= 1 and X.COD_LOTE_NUM = AVFSLOT1.COD_LOTE_NUM'
      ''
      '                                    )'
      ''
      ''
      '     UNION'
      ''
      '     Select'
      '           Idade_Dias,'
      '           AVFSLOT1.COD_LOTE_NUM Cod_Lote_Num,'
      '           avfspat1.Cod_Atividade,'
      ''
      ''
      '           case when idade_alojamento <> 0 then'
      
        #9#9'         DateAdd(day,(Idade_Dias), DAT_ALOJ_INICIAL-1)- ( (avf' +
        'slot1.idade_alojamento - 1) * 7)'
      #9#9#9'  else'
      #9#9#9'     DateAdd(day,(Idade_Dias), DAT_ALOJ_INICIAL-1)'
      #9#9#9'  end   Dat_Inicio,'
      ''
      '           case when idade_alojamento <> 0 then'
      
        #9#9'         DateAdd(day,(Idade_Dias+ Duracao), DAT_ALOJ_INICIAL-1' +
        ')- ( (avfslot1.idade_alojamento - 1) * 7)'
      #9#9#9'  else'
      #9#9#9'     DateAdd(day,(Idade_Dias+ Duracao), DAT_ALOJ_INICIAL-1)'
      #9#9#9'  end    Dat_Termino,'
      ''
      ''
      '           '#39'01/01/1900'#39' Dat_Realizada,'
      '           null  ,'
      '           cod_metodo,'
      '           cod_laboratorio'
      
        '           From avfspat1, AVFSLOT1, avfscat1  , AVFSLAT1 , AVFSE' +
        'ND1'
      '           Where avfspat1.Ide_Ave = AVFSLOT1.Ide_Ave'
      '           AND avfslot1.DAT_ALOJ_INICIAL >= '#39'01/01/2016'#39
      
        '           AND avfspat1.idade_dias > (avfslot1.idade_alojamento ' +
        '- 1) * 7    and Lote_Proprio = 1   and avfspat1.IDADE_DIAS > 0'
      '      '#9'   AND avfscat1.COD_ATIVIDADE = avfspat1.COD_ATIVIDADE'
      '      '#9'   AND sexo_ave = '#39'M'#39
      '      '#9'   AND qtd_inic_mac <> 0'
      
        '           AND AVFSLOT1.COD_LOTE_NUM = @Lote   AND AVFSEND1.COD_' +
        'LOTE_NUM = avfslot1.COD_LOTE_NUM AND  avfslot1.DAT_ALOJ_INICIAL ' +
        'BETWEEN AVFSEND1.DAT_INICIO AND AVFSEND1.DAT_FIM AND AVFSEND1.CO' +
        'D_LOCAL = AVFSLAT1.COD_LOCAL AND AVFSLAT1.COD_ATIVIDADE = avfspa' +
        't1.Cod_Atividade'
      '           AND avfscat1.MOVIMENTO'
      '                                    IN ('
      
        '                                          select '#39'VACINA'#39'  from ' +
        'avfslot1 X'
      
        '                                          where X.flg_prog_vacin' +
        'a = 1 and X.COD_LOTE_NUM = AVFSLOT1.COD_LOTE_NUM'
      '                                          union'
      
        '                                          select '#39'MANEJO'#39'  from ' +
        'avfslot1 X'
      
        '                                          where X.flg_prog_manej' +
        'o = 1 and X.COD_LOTE_NUM = AVFSLOT1.COD_LOTE_NUM'
      ''
      '                                          union'
      
        '                                          select '#39'PESAGEM'#39'  from' +
        ' avfslot1 X'
      
        '                                          where X.flg_prog_peso ' +
        '= 1 and X.COD_LOTE_NUM = AVFSLOT1.COD_LOTE_NUM'
      ''
      '                                    )'
      ''
      '     UNION'
      ''
      '     Select'
      '           Idade_Dias,'
      '           AVFSLOT1.COD_LOTE_NUM Cod_Lote_Num,'
      '           avfspat1.Cod_Atividade,'
      ''
      '           case when idade_alojamento <> 0 then'
      
        #9#9'         DateAdd(day,(Idade_Dias), DAT_ALOJ_INICIAL-1)- ( (avf' +
        'slot1.idade_alojamento - 1) * 7)'
      #9#9#9'  else'
      #9#9#9'     DateAdd(day,(Idade_Dias), DAT_ALOJ_INICIAL-1)'
      #9#9#9'  end   Dat_Inicio,'
      ''
      '           case when idade_alojamento <> 0 then'
      
        #9#9'         DateAdd(day,(Idade_Dias+ Duracao), DAT_ALOJ_INICIAL-1' +
        ')- ( (avfslot1.idade_alojamento - 1) * 7)'
      #9#9#9'  else'
      #9#9#9'     DateAdd(day,(Idade_Dias+ Duracao), DAT_ALOJ_INICIAL-1)'
      #9#9#9'  end    Dat_Termino,'
      '           '#39'01/01/1900'#39' Dat_Realizada,'
      '           null  ,'
      '           cod_metodo,'
      '           cod_laboratorio'
      
        '           From avfspat1, AVFSLOT1, avfscat1 , AVFSLAT1 , AVFSEN' +
        'D1'
      '           Where avfspat1.Ide_Ave = AVFSLOT1.Ide_Ave'
      '             AND avfslot1.DAT_ALOJ_INICIAL >= '#39'01/01/2016'#39
      
        '             AND avfspat1.idade_dias > (avfslot1.idade_alojament' +
        'o - 1) * 7    and Lote_Proprio = 1   and avfspat1.IDADE_DIAS > 0'
      '      '#9'     AND avfscat1.COD_ATIVIDADE = avfspat1.COD_ATIVIDADE'
      '      '#9'     AND sexo_ave = '#39'A'#39
      
        '             AND AVFSLOT1.COD_LOTE_NUM = @Lote  AND AVFSEND1.COD' +
        '_LOTE_NUM = avfslot1.COD_LOTE_NUM AND  avfslot1.DAT_ALOJ_INICIAL' +
        ' BETWEEN AVFSEND1.DAT_INICIO AND AVFSEND1.DAT_FIM AND AVFSEND1.C' +
        'OD_LOCAL = AVFSLAT1.COD_LOCAL AND AVFSLAT1.COD_ATIVIDADE = avfsp' +
        'at1.Cod_Atividade'
      '             AND avfscat1.MOVIMENTO'
      '                                    IN ('
      
        '                                          select '#39'VACINA'#39'  from ' +
        'avfslot1 X'
      
        '                                          where X.flg_prog_vacin' +
        'a = 1 and X.COD_LOTE_NUM = AVFSLOT1.COD_LOTE_NUM'
      '                                          union'
      
        '                                          select '#39'MANEJO'#39'  from ' +
        'avfslot1 X'
      
        '                                          where X.flg_prog_manej' +
        'o = 1 and X.COD_LOTE_NUM = AVFSLOT1.COD_LOTE_NUM'
      '                                          '
      '                                          union'
      
        '                                          select '#39'PESAGEM'#39'  from' +
        ' avfslot1 X'
      
        '                                          where X.flg_prog_peso ' +
        '= 1 and X.COD_LOTE_NUM = AVFSLOT1.COD_LOTE_NUM'
      '                                         '
      '                                    )'
      ''
      ''
      ''
      '  ELSE'
      ''
      ''
      '-- Insere apenas a programacao de descarte final do lote'
      '   Insert avfspml1'
      
        '     (idade_dias, cod_lote_num, cod_atividade, dat_inicio, dat_t' +
        'ermino, dat_realizada, timestamp)'
      '    Select'
      '     Idade_Dias,'
      '     @Lote Cod_Lote_Num,'
      '     avfspat1.Cod_Atividade,'
      '     DateAdd(day,(Idade_Dias ), @Data_Nascimento-1) Dat_Inicio,'
      
        '     DateAdd(day,(Idade_Dias) + Duracao, @Data_Nascimento-1) Dat' +
        '_Termino,'
      '     '#39'01/01/1900'#39' Dat_Realizada,'
      '     null'
      '     From avfspat1, avfscat1  '
      '     Where Ide_Ave = @Ide_Ave'
      '       and avfspat1.cod_atividade = avfscat1.cod_atividade'
      '       and avfscat1.movimento = '#39'Descarte Final de Aves'#39
      ''
      ''
      ''
      '   update avfspml1'
      '      set dat_realizada = isnull('
      ''
      
        '      (select max(x.dat_movto) from avfsmva1 x where x.cod_ativi' +
        'dade = avfspml1.cod_atividade and x.cod_lote_num = avfspml1.cod_' +
        'lote_num and x.dat_prevista = avfspml1.dat_inicio),'
      ''
      '      '#39'01/01/1900'#39'  )'
      '    where cod_lote_num= @Lote'
      '      and dat_realizada = '#39'01/01/1900'#39
      
        '      and cod_atividade in (select x.cod_atividade from avfscat1' +
        ' x where x.movimento = '#39'VACINA'#39')'
      ''
      ''
      ''
      '   update avfspml1'
      '      set dat_realizada = isnull('
      ''
      '      (select max(x.dat_movto)'
      #9'     from avfsmpe1 x, AVFSDAT1 Y'
      #9#9'  where x.cod_atividade = avfspml1.cod_atividade'
      #9#9'    AND X.COD_LOTE_NUM = Y.COD_LOTE_NUM'
      #9#9'    AND X.DAT_MOVTO BETWEEN Y.dat_inicio AND Y.dat_fim'
      #9#9'    AND Y.IDADE = (avfspml1.idade_dias / 7)'
      #9#9'    And x.cod_lote_num = avfspml1.cod_lote_num ),'
      ''
      '      '#39'01/01/1900'#39'  )'
      #9'   FROM AVFSDAT1 D'
      '    where D.COD_LOTE_NUM = avfspml1.COD_LOTE_NUM'
      '      AND avfspml1.dat_inicio BETWEEN D.dat_inicio AND D.dat_fim'
      '      AND avfspml1.cod_lote_num= @Lote'
      
        '      and cod_atividade in (select x.cod_atividade from avfscat1' +
        ' x where x.movimento = '#39'PESAGEM'#39')'
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
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 248
    Top = 288
    ParamData = <
      item
        Name = 'Lote'
      end>
  end
  object ConexaoMGE: TADConnection
    ConnectionName = 'ConexaoMGE'
    Params.Strings = (
      'USER NAME=AVECOM'
      'PASSWORD=AVE12A1'
      ' ')
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    LoginPrompt = False
    Left = 36
    Top = 378
  end
  object dbsORACLE: TADConnection
    ConnectionName = 'ORACLE'
    Params.Strings = (
      'Database=oracle10g'
      'User_Name=AVECOM'
      'Password=AVE12A1'
      'DriverID=Ora'
      ' '
      ' ')
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    LoginPrompt = False
    Left = 324
    Top = 160
  end
  object ADPhysOracleDriverLink1: TADPhysOracleDriverLink
    VendorLib = 'C:\oci.dll'
    Left = 355
    Top = 161
  end
  object ADManager1: TADManager
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtBCD
        TargetDataType = dtDouble
      end
      item
        SourceDataType = dtFmtBCD
        TargetDataType = dtDouble
      end
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDateTime
      end>
    ActiveStoredUsage = []
    Left = 300
    Top = 203
  end
  object ADGUIxWaitCursor1: TADGUIxWaitCursor
    Left = 332
    Top = 203
  end
  object ADQuery1: TADQuery
    Connection = dbsORACLE
    Left = 536
    Top = 160
  end
  object ADPhysMSSQLDriverLink1: TADPhysMSSQLDriverLink
    Left = 364
    Top = 203
  end
end

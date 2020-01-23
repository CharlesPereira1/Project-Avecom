object Form1: TForm1
  Left = 369
  Top = 142
  Width = 714
  Height = 348
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object label1: TLabel
    Left = 24
    Top = 56
    Width = 41
    Height = 13
    Caption = 'Código:'
  end
  object Label2: TLabel
    Left = 184
    Top = 56
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object btnIncluir: TBitBtn
    Left = 513
    Top = 52
    Width = 75
    Height = 25
    Caption = 'Incluir'
    TabOrder = 0
    OnClick = btnIncluirClick
  end
  object btnExcluir: TBitBtn
    Left = 513
    Top = 92
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 1
    OnClick = btnExcluirClick
  end
  object DBGrid1: TDBGrid
    Left = 20
    Top = 140
    Width = 581
    Height = 120
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Visible = True
      end>
  end
  object edtCod: TEdit
    Left = 64
    Top = 53
    Width = 100
    Height = 21
    TabOrder = 3
  end
  object edtNome: TEdit
    Left = 221
    Top = 53
    Width = 274
    Height = 21
    TabOrder = 4
  end
  object DataSource1: TDataSource
    DataSet = RxMemoryData1
    Left = 172
    Top = 108
  end
  object RxMemoryData1: TRxMemoryData
    FieldDefs = <>
    Left = 140
    Top = 108
    object RxMemoryData1codigo: TIntegerField
      FieldName = 'codigo'
    end
    object RxMemoryData1nome: TStringField
      FieldName = 'nome'
    end
  end
end

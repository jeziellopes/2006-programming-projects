object Form1: TForm1
  Left = 522
  Top = 361
  Width = 478
  Height = 380
  Caption = 'Paradox'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 40
    Top = 40
    Width = 313
    Height = 281
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 360
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Primeiro'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 360
    Top = 72
    Width = 75
    Height = 25
    Caption = #218'ltimo'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 360
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Pr'#243'ximo'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 360
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Anterior'
    TabOrder = 4
  end
  object Button5: TButton
    Left = 360
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 360
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Post'
    TabOrder = 6
  end
  object Button7: TButton
    Left = 360
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 7
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 360
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Inserir'
    TabOrder = 8
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 360
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 9
    OnClick = Button9Click
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'DBDEMOS'
    TableName = 'country.db'
    Left = 8
    Top = 8
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = Table1
    Left = 40
    Top = 8
  end
  object XPManifest1: TXPManifest
    Left = 72
    Top = 8
  end
end

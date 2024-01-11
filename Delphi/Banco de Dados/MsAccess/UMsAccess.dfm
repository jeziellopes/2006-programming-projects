object Form1: TForm1
  Left = 306
  Top = 137
  Width = 481
  Height = 403
  Caption = 'MsAccess'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 40
    Top = 48
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
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Primeiro'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 360
    Top = 80
    Width = 75
    Height = 25
    Caption = #218'ltimo'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 360
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Pr'#243'ximo'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 360
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Anterior'
    TabOrder = 4
  end
  object Button5: TButton
    Left = 360
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 360
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Post'
    TabOrder = 6
  end
  object Button7: TButton
    Left = 360
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 7
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 360
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Inserir'
    TabOrder = 8
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 360
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 9
    OnClick = Button9Click
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = ADOTable1
    Left = 72
    Top = 8
  end
  object XPManifest1: TXPManifest
    Left = 104
    Top = 8
  end
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 8
    Top = 8
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Clientes'
    Left = 40
    Top = 8
  end
end

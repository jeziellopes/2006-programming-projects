object Form1: TForm1
  Left = 426
  Top = 372
  Width = 321
  Height = 107
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
  object btn_criarbase: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Criar Base'
    TabOrder = 0
    OnClick = btn_criarbaseClick
  end
  object btn_criartabelas: TButton
    Left = 8
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Criar Tabelas'
    TabOrder = 1
    OnClick = btn_criartabelasClick
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.mdb'
    Filter = 'Base MS Access|*.mdb'
    Title = 'Salvar como...'
    Left = 88
    Top = 40
  end
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Left = 88
    Top = 8
  end
  object ADOCommand1: TADOCommand
    Connection = ADOConnection1
    Parameters = <>
    Left = 120
    Top = 8
  end
  object ADOXCatalog1: TADOXCatalog
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 152
    Top = 8
  end
  object XPManifest1: TXPManifest
    Left = 120
    Top = 40
  end
end

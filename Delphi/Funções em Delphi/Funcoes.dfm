object Form1: TForm1
  Left = 205
  Top = 119
  BorderStyle = bsDialog
  Caption = 'Fun'#231#245'es Em Delphi'
  ClientHeight = 497
  ClientWidth = 633
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 440
    Top = 8
    Width = 185
    Height = 49
    Caption = 'Coordenadas do Mouse:'
    TabOrder = 0
    object Edit1: TEdit
      Left = 32
      Top = 16
      Width = 49
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 104
      Top = 16
      Width = 49
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 440
    Top = 64
    Width = 185
    Height = 41
    Caption = 'Bot'#245'es do Mouse:'
    TabOrder = 1
    object RadioButton1: TRadioButton
      Left = 24
      Top = 16
      Width = 55
      Height = 17
      Caption = 'Normal'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 102
      Top = 16
      Width = 60
      Height = 17
      Caption = 'Invertido '
      TabOrder = 1
      OnClick = RadioButton2Click
    end
  end
  object GroupBox4: TGroupBox
    Left = 440
    Top = 112
    Width = 185
    Height = 49
    Caption = 'Movimento do Mouse:'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 2
    object RadioButton4: TRadioButton
      Left = 98
      Top = 24
      Width = 81
      Height = 17
      Caption = 'S'#243' No Form'
      TabOrder = 0
      OnClick = RadioButton4Click
    end
    object RadioButton3: TRadioButton
      Left = 8
      Top = 24
      Width = 89
      Height = 17
      Caption = 'Em Toda Tela'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = RadioButton3Click
    end
  end
  object GroupBox6: TGroupBox
    Left = 8
    Top = 312
    Width = 617
    Height = 177
    Caption = 'Vari'#225'veis do Sistema Operacional:'
    TabOrder = 3
    object Label1: TLabel
      Left = 16
      Top = 152
      Width = 32
      Height = 13
      Caption = 'Label1'
      Transparent = False
    end
    object RadioButton5: TRadioButton
      Left = 16
      Top = 24
      Width = 121
      Height = 17
      Caption = 'ALLUSERSPROFILE'
      Checked = True
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
      TabStop = True
      OnClick = RadioButton5Click
    end
    object RadioButton6: TRadioButton
      Left = 16
      Top = 40
      Width = 73
      Height = 17
      Caption = 'APPDATA'
      TabOrder = 1
      OnClick = RadioButton6Click
    end
    object RadioButton7: TRadioButton
      Left = 16
      Top = 56
      Width = 89
      Height = 17
      Caption = 'CLIENTNAME'
      TabOrder = 2
      OnClick = RadioButton7Click
    end
    object RadioButton8: TRadioButton
      Left = 16
      Top = 72
      Width = 121
      Height = 17
      Caption = 'CommonProgramFiles'
      TabOrder = 3
      OnClick = RadioButton8Click
    end
    object RadioButton9: TRadioButton
      Left = 16
      Top = 88
      Width = 113
      Height = 17
      Caption = 'COMPUTERNAME'
      TabOrder = 4
      OnClick = RadioButton9Click
    end
    object RadioButton10: TRadioButton
      Left = 16
      Top = 104
      Width = 113
      Height = 17
      Caption = 'ComSpec'
      TabOrder = 5
      OnClick = RadioButton10Click
    end
    object RadioButton11: TRadioButton
      Left = 16
      Top = 120
      Width = 137
      Height = 17
      Caption = 'FP_NO_HOST_CHECK'
      TabOrder = 6
      OnClick = RadioButton11Click
    end
    object RadioButton12: TRadioButton
      Left = 16
      Top = 136
      Width = 89
      Height = 17
      Caption = 'HOMEDRIVE'
      TabOrder = 7
      OnClick = RadioButton12Click
    end
    object RadioButton13: TRadioButton
      Left = 168
      Top = 24
      Width = 81
      Height = 17
      Caption = 'HOMEPATH'
      TabOrder = 8
      OnClick = RadioButton13Click
    end
    object RadioButton14: TRadioButton
      Left = 168
      Top = 40
      Width = 105
      Height = 17
      Caption = 'LOGONSERVER'
      TabOrder = 9
      OnClick = RadioButton14Click
    end
    object RadioButton15: TRadioButton
      Left = 168
      Top = 56
      Width = 169
      Height = 17
      Caption = 'NUMBER_OF_PROCESSORS'
      TabOrder = 10
      OnClick = RadioButton15Click
    end
    object RadioButton16: TRadioButton
      Left = 168
      Top = 72
      Width = 41
      Height = 17
      Caption = 'OS'
      TabOrder = 11
      OnClick = RadioButton16Click
    end
    object RadioButton17: TRadioButton
      Left = 168
      Top = 88
      Width = 49
      Height = 17
      Caption = 'Path'
      TabOrder = 12
      OnClick = RadioButton17Click
    end
    object RadioButton18: TRadioButton
      Left = 168
      Top = 104
      Width = 73
      Height = 17
      Caption = 'PATHEXT'
      TabOrder = 13
      OnClick = RadioButton18Click
    end
    object RadioButton19: TRadioButton
      Left = 168
      Top = 120
      Width = 177
      Height = 17
      Caption = 'PROCESSOR_ARCHITECTURE'
      TabOrder = 14
      OnClick = RadioButton19Click
    end
    object RadioButton20: TRadioButton
      Left = 168
      Top = 136
      Width = 153
      Height = 17
      Caption = 'PROCESSOR_IDENTIFIER'
      TabOrder = 15
      OnClick = RadioButton20Click
    end
    object RadioButton21: TRadioButton
      Left = 352
      Top = 24
      Width = 129
      Height = 17
      Caption = 'PROCESSOR_LEVEL'
      TabOrder = 16
      OnClick = RadioButton21Click
    end
    object RadioButton22: TRadioButton
      Left = 352
      Top = 40
      Width = 145
      Height = 17
      Caption = 'PROCESSOR_REVISION'
      TabOrder = 17
      OnClick = RadioButton22Click
    end
    object RadioButton23: TRadioButton
      Left = 352
      Top = 56
      Width = 81
      Height = 17
      Caption = 'ProgramFiles'
      TabOrder = 18
      OnClick = RadioButton23Click
    end
    object RadioButton24: TRadioButton
      Left = 352
      Top = 72
      Width = 65
      Height = 17
      Caption = 'PROMPT'
      TabOrder = 19
      OnClick = RadioButton24Click
    end
    object RadioButton25: TRadioButton
      Left = 352
      Top = 88
      Width = 97
      Height = 17
      Caption = 'SESSIONNAME'
      TabOrder = 20
      OnClick = RadioButton25Click
    end
    object RadioButton26: TRadioButton
      Left = 352
      Top = 104
      Width = 81
      Height = 17
      Caption = 'SystemDrive'
      TabOrder = 21
      OnClick = RadioButton26Click
    end
    object RadioButton27: TRadioButton
      Left = 352
      Top = 120
      Width = 81
      Height = 17
      Caption = 'SystemRoot'
      TabOrder = 22
      OnClick = RadioButton27Click
    end
    object RadioButton28: TRadioButton
      Left = 352
      Top = 136
      Width = 57
      Height = 17
      Caption = 'TEMP'
      TabOrder = 23
      OnClick = RadioButton28Click
    end
    object RadioButton29: TRadioButton
      Left = 504
      Top = 24
      Width = 49
      Height = 17
      Caption = 'TMP'
      TabOrder = 24
      OnClick = RadioButton29Click
    end
    object RadioButton30: TRadioButton
      Left = 504
      Top = 40
      Width = 97
      Height = 17
      Caption = 'USERDOMAIN'
      TabOrder = 25
      OnClick = RadioButton30Click
    end
    object RadioButton31: TRadioButton
      Left = 504
      Top = 56
      Width = 81
      Height = 17
      Caption = 'USERNAME'
      TabOrder = 26
      OnClick = RadioButton31Click
    end
    object RadioButton32: TRadioButton
      Left = 504
      Top = 72
      Width = 97
      Height = 17
      Caption = 'USERPROFILE'
      TabOrder = 27
      OnClick = RadioButton32Click
    end
    object RadioButton33: TRadioButton
      Left = 504
      Top = 88
      Width = 49
      Height = 17
      Caption = 'windir'
      TabOrder = 28
      OnClick = RadioButton33Click
    end
  end
  object GroupBox5: TGroupBox
    Left = 440
    Top = 168
    Width = 185
    Height = 65
    Caption = 'Drive de CD/DVD-ROM:'
    TabOrder = 4
    object Button1: TButton
      Left = 14
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Abrir'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 94
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 426
    Height = 297
    Caption = 'Papel de Parede:'
    TabOrder = 5
    object Image1: TImage
      Left = 8
      Top = 17
      Width = 329
      Height = 272
      Stretch = True
    end
    object Bevel1: TBevel
      Left = 7
      Top = 16
      Width = 331
      Height = 274
    end
    object Button3: TButton
      Left = 344
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Trocar...'
      TabOrder = 0
      OnClick = Button3Click
    end
  end
  object Button4: TButton
    Left = 552
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 6
    OnClick = Button4Click
  end
  object XPManifest1: TXPManifest
    Left = 448
    Top = 240
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 480
    Top = 240
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    InitialDir = '%windir%'
    Left = 512
    Top = 240
  end
  object OpenDialog1: TOpenDialog
    Left = 544
    Top = 240
  end
end

VERSION 5.00
Begin VB.Form frm_variaveis 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Variáveis do Sistema Operacional"
   ClientHeight    =   3030
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   11430
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   3030
   ScaleWidth      =   11430
   StartUpPosition =   2  'CenterScreen
   Begin VB.OptionButton opt_variavel 
      BackColor       =   &H00800000&
      Caption         =   "windir"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   28
      Left            =   9480
      TabIndex        =   31
      Top             =   1440
      Width           =   735
   End
   Begin VB.OptionButton opt_variavel 
      BackColor       =   &H00800000&
      Caption         =   "USERPROFILE"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   27
      Left            =   9480
      TabIndex        =   30
      Top             =   1200
      Width           =   1455
   End
   Begin VB.OptionButton opt_variavel 
      BackColor       =   &H00800000&
      Caption         =   "USERNAME"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   26
      Left            =   9480
      TabIndex        =   29
      Top             =   960
      Width           =   1335
   End
   Begin VB.OptionButton opt_variavel 
      BackColor       =   &H00800000&
      Caption         =   "USERDOMAIN"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   25
      Left            =   9480
      TabIndex        =   28
      Top             =   720
      Width           =   1455
   End
   Begin VB.OptionButton opt_variavel 
      BackColor       =   &H00800000&
      Caption         =   "TMP"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   24
      Left            =   9480
      TabIndex        =   27
      Top             =   480
      Width           =   735
   End
   Begin VB.OptionButton opt_variavel 
      BackColor       =   &H00800000&
      Caption         =   "TEMP"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   23
      Left            =   7800
      TabIndex        =   26
      Top             =   1680
      Width           =   855
   End
   Begin VB.OptionButton opt_variavel 
      BackColor       =   &H00800000&
      Caption         =   "SystemRoot"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   22
      Left            =   7800
      TabIndex        =   25
      Top             =   1440
      Width           =   1215
   End
   Begin VB.OptionButton opt_variavel 
      BackColor       =   &H00800000&
      Caption         =   "SystemDrive"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   21
      Left            =   7800
      TabIndex        =   24
      Top             =   1200
      Width           =   1215
   End
   Begin VB.OptionButton opt_variavel 
      BackColor       =   &H00800000&
      Caption         =   "SESSIONNAME"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   20
      Left            =   7800
      TabIndex        =   23
      Top             =   960
      Width           =   1575
   End
   Begin VB.OptionButton opt_variavel 
      BackColor       =   &H00800000&
      Caption         =   "PROMPT"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   19
      Left            =   7800
      TabIndex        =   22
      Top             =   720
      Width           =   1095
   End
   Begin VB.OptionButton opt_variavel 
      BackColor       =   &H00800000&
      Caption         =   "ProgramFiles"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   18
      Left            =   7800
      TabIndex        =   21
      Top             =   480
      Width           =   1215
   End
   Begin VB.OptionButton opt_variavel 
      BackColor       =   &H00800000&
      Caption         =   "PROCESSOR_REVISION"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   17
      Left            =   5160
      TabIndex        =   20
      Top             =   1680
      Width           =   2175
   End
   Begin VB.OptionButton opt_variavel 
      BackColor       =   &H00800000&
      Caption         =   "PROCESSOR_LEVEL"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   16
      Left            =   5160
      TabIndex        =   19
      Top             =   1440
      Width           =   1935
   End
   Begin VB.OptionButton opt_variavel 
      BackColor       =   &H00800000&
      Caption         =   "PROCESSOR_IDENTIFIER"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   15
      Left            =   5160
      TabIndex        =   18
      Top             =   1200
      Width           =   2295
   End
   Begin VB.OptionButton opt_variavel 
      BackColor       =   &H00800000&
      Caption         =   "PROCESSOR_ARCHITECTURE"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   14
      Left            =   5160
      TabIndex        =   17
      Top             =   960
      Width           =   2655
   End
   Begin VB.OptionButton opt_variavel 
      BackColor       =   &H00800000&
      Caption         =   "Path"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   13
      Left            =   5160
      TabIndex        =   16
      Top             =   720
      Width           =   735
   End
   Begin VB.OptionButton opt_variavel 
      BackColor       =   &H00800000&
      Caption         =   "PATHEXT"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   12
      Left            =   5160
      TabIndex        =   15
      Top             =   480
      Width           =   1095
   End
   Begin VB.OptionButton opt_variavel 
      BackColor       =   &H00800000&
      Caption         =   "OS"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   11
      Left            =   2640
      TabIndex        =   14
      Top             =   1680
      Width           =   615
   End
   Begin VB.OptionButton opt_variavel 
      BackColor       =   &H00800000&
      Caption         =   "NUMBER_OF_PROCESSORS"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   10
      Left            =   2640
      TabIndex        =   13
      Top             =   1440
      Width           =   2535
   End
   Begin VB.OptionButton opt_variavel 
      BackColor       =   &H00800000&
      Caption         =   "LOGONSERVER"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   9
      Left            =   2640
      TabIndex        =   12
      Top             =   1200
      Width           =   1575
   End
   Begin VB.OptionButton opt_variavel 
      BackColor       =   &H00800000&
      Caption         =   "HOMEPATH"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   8
      Left            =   2640
      TabIndex        =   11
      Top             =   960
      Width           =   1215
   End
   Begin VB.OptionButton opt_variavel 
      BackColor       =   &H00800000&
      Caption         =   "HOMEDRIVE"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   7
      Left            =   2640
      TabIndex        =   10
      Top             =   720
      Width           =   1335
   End
   Begin VB.OptionButton opt_variavel 
      BackColor       =   &H00800000&
      Caption         =   "FP_NO_HOST_CHECK"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   6
      Left            =   2640
      TabIndex        =   9
      Top             =   480
      Width           =   2055
   End
   Begin VB.OptionButton opt_variavel 
      BackColor       =   &H00800000&
      Caption         =   "ComSpec"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   5
      Left            =   480
      TabIndex        =   8
      Top             =   1680
      Width           =   1095
   End
   Begin VB.OptionButton opt_variavel 
      BackColor       =   &H00800000&
      Caption         =   "COMPUTERNAME"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   4
      Left            =   480
      TabIndex        =   7
      Top             =   1440
      Width           =   1695
   End
   Begin VB.OptionButton opt_variavel 
      BackColor       =   &H00800000&
      Caption         =   "CommonProgramFiles"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   3
      Left            =   480
      TabIndex        =   6
      Top             =   1200
      Width           =   1815
   End
   Begin VB.OptionButton opt_variavel 
      BackColor       =   &H00800000&
      Caption         =   "CLIENTNAME"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   2
      Left            =   480
      TabIndex        =   5
      Top             =   960
      Width           =   1335
   End
   Begin VB.OptionButton opt_variavel 
      BackColor       =   &H00800000&
      Caption         =   "APPDATA"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   1
      Left            =   480
      TabIndex        =   4
      Top             =   720
      Width           =   1095
   End
   Begin VB.OptionButton opt_variavel 
      BackColor       =   &H00800000&
      Caption         =   "ALLUSERSPROFILE"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   0
      Left            =   480
      TabIndex        =   3
      Top             =   480
      Value           =   -1  'True
      Width           =   1815
   End
   Begin VB.Frame fra_valorvariavel 
      BackColor       =   &H00800000&
      Caption         =   "Valor da Variável"
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Left            =   240
      TabIndex        =   1
      Top             =   2160
      Width           =   10935
      Begin VB.Label lbl_valorvariavel 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Left            =   120
         TabIndex        =   0
         Top             =   240
         Width           =   45
      End
   End
   Begin VB.Frame fra_variaveis 
      BackColor       =   &H00800000&
      Caption         =   "Variáveis"
      ForeColor       =   &H00FFFFFF&
      Height          =   1815
      Left            =   240
      TabIndex        =   2
      Top             =   240
      Width           =   10935
   End
End
Attribute VB_Name = "frm_variaveis"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Me.Caption = Me.Caption & " - " & "Olá " & Environ(opt_variavel(26).Caption) & "!!!"
lbl_valorvariavel.Caption = Environ(opt_variavel(0).Caption)
End Sub
Private Sub opt_variavel_Click(Index As Integer)
Select Case Index
Case 0
lbl_valorvariavel.Caption = Environ(opt_variavel(0).Caption)
Case 1
lbl_valorvariavel.Caption = Environ(opt_variavel(1).Caption)
Case 2
lbl_valorvariavel.Caption = Environ(opt_variavel(2).Caption)
Case 3
lbl_valorvariavel.Caption = Environ(opt_variavel(3).Caption)
Case 4
lbl_valorvariavel.Caption = Environ(opt_variavel(4).Caption)
Case 5
lbl_valorvariavel.Caption = Environ(opt_variavel(5).Caption)
Case 6
lbl_valorvariavel.Caption = Environ(opt_variavel(6).Caption)
Case 7
lbl_valorvariavel.Caption = Environ(opt_variavel(7).Caption)
Case 8
lbl_valorvariavel.Caption = Environ(opt_variavel(8).Caption)
Case 9
lbl_valorvariavel.Caption = Environ(opt_variavel(9).Caption)
Case 10
lbl_valorvariavel.Caption = Environ(opt_variavel(10).Caption)
Case 11
lbl_valorvariavel.Caption = Environ(opt_variavel(11).Caption)
Case 12
lbl_valorvariavel.Caption = Environ(opt_variavel(12).Caption)
Case 13
lbl_valorvariavel.Caption = Environ(opt_variavel(13).Caption)
Case 14
lbl_valorvariavel.Caption = Environ(opt_variavel(14).Caption)
Case 15
lbl_valorvariavel.Caption = Environ(opt_variavel(15).Caption)
Case 16
lbl_valorvariavel.Caption = Environ(opt_variavel(16).Caption)
Case 17
lbl_valorvariavel.Caption = Environ(opt_variavel(17).Caption)
Case 18
lbl_valorvariavel.Caption = Environ(opt_variavel(18).Caption)
Case 19
lbl_valorvariavel.Caption = Environ(opt_variavel(19).Caption)
Case 20
lbl_valorvariavel.Caption = Environ(opt_variavel(20).Caption)
Case 21
lbl_valorvariavel.Caption = Environ(opt_variavel(21).Caption)
Case 22
lbl_valorvariavel.Caption = Environ(opt_variavel(22).Caption)
Case 23
lbl_valorvariavel.Caption = Environ(opt_variavel(23).Caption)
Case 24
lbl_valorvariavel.Caption = Environ(opt_variavel(24).Caption)
Case 25
lbl_valorvariavel.Caption = Environ(opt_variavel(25).Caption)
Case 26
lbl_valorvariavel.Caption = Environ(opt_variavel(26).Caption)
Case 27
lbl_valorvariavel.Caption = Environ(opt_variavel(27).Caption)
Case 28
lbl_valorvariavel.Caption = Environ(opt_variavel(28).Caption)
End Select
End Sub
Private Sub cmd_sair_Click()
End
End Sub

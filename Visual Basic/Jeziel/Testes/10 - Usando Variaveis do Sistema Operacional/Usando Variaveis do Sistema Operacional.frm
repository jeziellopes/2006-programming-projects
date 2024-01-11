VERSION 5.00
Begin VB.Form frm_usandovariaveis 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Usando Variaveis do Sistema Operacional"
   ClientHeight    =   4830
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   10470
   ForeColor       =   &H00FFFFFF&
   MaxButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   4830
   ScaleWidth      =   10470
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton cmd_copiar 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Copiar"
      Height          =   495
      Left            =   8160
      Style           =   1  'Graphical
      TabIndex        =   21
      Top             =   3120
      Width           =   975
   End
   Begin VB.Frame fra_copiearquivo 
      BackColor       =   &H00800000&
      Caption         =   "Origem do Arquivo"
      ForeColor       =   &H00FFFFFF&
      Height          =   735
      Left            =   240
      TabIndex        =   19
      Top             =   3000
      Width           =   7815
      Begin VB.Label lbl_origemarquivo 
         BackColor       =   &H00800000&
         ForeColor       =   &H00FFFFFF&
         Height          =   435
         Left            =   120
         TabIndex        =   20
         Top             =   240
         Width           =   7605
      End
   End
   Begin VB.Frame frm_selecionararquivo 
      BackColor       =   &H00800000&
      Caption         =   "Selecionar Arquivo"
      ForeColor       =   &H00FFFFFF&
      Height          =   2535
      Left            =   240
      TabIndex        =   15
      Top             =   240
      Width           =   6135
      Begin VB.DriveListBox drv_drive 
         Height          =   315
         Left            =   240
         TabIndex        =   18
         Top             =   360
         Width           =   3015
      End
      Begin VB.DirListBox dir_pastas 
         Height          =   1665
         Left            =   240
         TabIndex        =   17
         Top             =   720
         Width           =   3015
      End
      Begin VB.FileListBox fil_arquivo 
         Height          =   2040
         Left            =   3360
         MultiSelect     =   2  'Extended
         TabIndex        =   16
         Top             =   360
         Width           =   2535
      End
   End
   Begin VB.Frame fra_selecionarvariavel 
      BackColor       =   &H00800000&
      Caption         =   "Selecionar Variável"
      ForeColor       =   &H00FFFFFF&
      Height          =   2535
      Left            =   6480
      TabIndex        =   14
      Top             =   240
      Width           =   3735
      Begin VB.OptionButton opt_variavel 
         BackColor       =   &H00800000&
         Caption         =   "AllUsersProfile"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   0
         Top             =   480
         Width           =   1815
      End
      Begin VB.OptionButton opt_variavel 
         BackColor       =   &H00800000&
         Caption         =   "AppData"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Index           =   1
         Left            =   240
         TabIndex        =   1
         Top             =   840
         Width           =   1095
      End
      Begin VB.OptionButton opt_variavel 
         BackColor       =   &H00800000&
         Caption         =   "CommonProgramFiles"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Index           =   2
         Left            =   240
         TabIndex        =   2
         Top             =   1200
         Width           =   1815
      End
      Begin VB.OptionButton opt_variavel 
         BackColor       =   &H00800000&
         Caption         =   "ProgramFiles"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Index           =   3
         Left            =   240
         TabIndex        =   3
         Top             =   1560
         Width           =   1215
      End
      Begin VB.OptionButton opt_variavel 
         BackColor       =   &H00800000&
         Caption         =   "SystemDrive"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Index           =   4
         Left            =   240
         TabIndex        =   4
         Top             =   1920
         Width           =   1215
      End
      Begin VB.OptionButton opt_variavel 
         BackColor       =   &H00800000&
         Caption         =   "SystemRoot"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Index           =   5
         Left            =   2160
         TabIndex        =   5
         Top             =   480
         Width           =   1215
      End
      Begin VB.OptionButton opt_variavel 
         BackColor       =   &H00800000&
         Caption         =   "Temp"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Index           =   6
         Left            =   2160
         TabIndex        =   6
         Top             =   840
         Width           =   855
      End
      Begin VB.OptionButton opt_variavel 
         BackColor       =   &H00800000&
         Caption         =   "Tmp"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Index           =   7
         Left            =   2160
         TabIndex        =   7
         Top             =   1200
         Width           =   735
      End
      Begin VB.OptionButton opt_variavel 
         BackColor       =   &H00800000&
         Caption         =   "WinDir"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Index           =   9
         Left            =   2160
         TabIndex        =   9
         Top             =   1920
         Width           =   855
      End
      Begin VB.OptionButton opt_variavel 
         BackColor       =   &H00800000&
         Caption         =   "UserProfile"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Index           =   8
         Left            =   2160
         TabIndex        =   8
         Top             =   1560
         Width           =   1455
      End
   End
   Begin VB.CommandButton cmd_excluir 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Excluir"
      Height          =   495
      Left            =   9240
      Style           =   1  'Graphical
      TabIndex        =   13
      Top             =   3120
      Width           =   975
   End
   Begin VB.CommandButton cmd_sair 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Sair"
      Height          =   495
      Left            =   9240
      Style           =   1  'Graphical
      TabIndex        =   10
      TabStop         =   0   'False
      Top             =   3960
      Width           =   975
   End
   Begin VB.Frame fra_destino 
      BackColor       =   &H00800000&
      Caption         =   "Destino do Arquivo"
      ForeColor       =   &H00FFFFFF&
      Height          =   735
      Left            =   240
      TabIndex        =   12
      Top             =   3840
      Width           =   8895
      Begin VB.Label lbl_destinoarquivo 
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   435
         Left            =   120
         TabIndex        =   11
         Top             =   240
         Width           =   8685
      End
   End
End
Attribute VB_Name = "frm_usandovariaveis"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_Copiar_Click()
On Error Resume Next
FileCopy lbl_origemarquivo, lbl_destinoarquivo.Caption & "\" & fil_arquivo.FileName
End Sub
Private Sub cmd_excluir_Click()
fil_arquivo.Pattern = "*."
If MsgBox("Tem certeza que deseja excluir este " & "arquivo?", vbYesNo + vbExclamation, "Aviso") = 6 Then
Kill (lbl_origemarquivo.Caption)
End If
fil_arquivo.Pattern = "*.*"
End Sub
Private Sub Form_Load()
Me.Caption = Me.Caption & " - " & "Olá " & Environ("USERNAME") & "!!!"
dir_pastas.Path = Environ("windir") & "\.."
If lbl_origemarquivo.Caption = "" Then
cmd_copiar.Enabled = False
cmd_excluir.Enabled = False
End If
End Sub
Private Sub cmd_sair_Click()
End
End Sub
Private Sub lbl_origemarquivo_Change()
If lbl_origemarquivo.Caption = "" Then
cmd_copiar.Enabled = False
cmd_excluir.Enabled = False
Else
cmd_copiar.Enabled = True
cmd_excluir.Enabled = True
End If
End Sub
Private Sub opt_variavel_Click(Index As Integer)
Select Case Index
Case 0
lbl_destinoarquivo.Caption = Environ(opt_variavel(0).Caption)
Case 1
lbl_destinoarquivo.Caption = Environ(opt_variavel(1).Caption)
Case 2
lbl_destinoarquivo.Caption = Environ(opt_variavel(2).Caption)
Case 3
lbl_destinoarquivo.Caption = Environ(opt_variavel(3).Caption)
Case 4
lbl_destinoarquivo.Caption = Environ(opt_variavel(4).Caption)
Case 5
lbl_destinoarquivo.Caption = Environ(opt_variavel(5).Caption)
Case 6
lbl_destinoarquivo.Caption = Environ(opt_variavel(6).Caption)
Case 7
lbl_destinoarquivo.Caption = Environ(opt_variavel(7).Caption)
Case 8
lbl_destinoarquivo.Caption = Environ(opt_variavel(8).Caption)
Case 9
lbl_destinoarquivo.Caption = Environ(opt_variavel(9).Caption)
Case 10
lbl_destinoarquivo.Caption = Environ(opt_variavel(10).Caption)
Case 11
lbl_destinoarquivo.Caption = Environ(opt_variavel(11).Caption)
End Select
End Sub

Private Sub opt_variavel_DblClick(Index As Integer)
Select Case Index
Case 0
lbl_destinoarquivo.Caption = Environ(opt_variavel(0).Caption)
Case 1
lbl_destinoarquivo.Caption = Environ(opt_variavel(1).Caption)
Case 2
lbl_destinoarquivo.Caption = Environ(opt_variavel(2).Caption)
Case 3
lbl_destinoarquivo.Caption = Environ(opt_variavel(3).Caption)
Case 4
lbl_destinoarquivo.Caption = Environ(opt_variavel(4).Caption)
Case 5
lbl_destinoarquivo.Caption = Environ(opt_variavel(5).Caption)
Case 6
lbl_destinoarquivo.Caption = Environ(opt_variavel(6).Caption)
Case 7
lbl_destinoarquivo.Caption = Environ(opt_variavel(7).Caption)
Case 8
lbl_destinoarquivo.Caption = Environ(opt_variavel(8).Caption)
Case 9
lbl_destinoarquivo.Caption = Environ(opt_variavel(9).Caption)
Case 10
lbl_destinoarquivo.Caption = Environ(opt_variavel(10).Caption)
Case 11
lbl_destinoarquivo.Caption = Environ(opt_variavel(11).Caption)
End Select
End Sub

Private Sub dir_pastas_Change()
drv_drive.Drive = dir_pastas.Path
fil_arquivo.Path = dir_pastas.Path
End Sub
Private Sub drv_drive_Change()
On Error GoTo erro:
dir_pastas.Path = drv_drive.Drive
Exit Sub
erro:
MsgBox "O disco não foi inserido corretamente ou está corrompido!!!", vbCritical + vbOKOnly, "Erro: " & Err.Number & " - " & Err.Description
drv_drive.Drive = dir_pastas.Path
End Sub
Private Sub fil_arquivo_Click()
lbl_origemarquivo.Caption = fil_arquivo.Path & "\" & fil_arquivo.FileName
End Sub

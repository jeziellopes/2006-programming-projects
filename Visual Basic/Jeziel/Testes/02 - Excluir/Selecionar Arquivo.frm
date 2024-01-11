VERSION 5.00
Begin VB.Form frm_arquivo 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Selecionear Arquivo"
   ClientHeight    =   3765
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4710
   ForeColor       =   &H00FFC0C0&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3765
   ScaleWidth      =   4710
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmd_ok 
      BackColor       =   &H00FFC0C0&
      Caption         =   "OK"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1680
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   3240
      Width           =   1335
   End
   Begin VB.FileListBox fil_arquivos 
      Height          =   2820
      Left            =   2520
      TabIndex        =   2
      Top             =   240
      Width           =   1935
   End
   Begin VB.DirListBox dir_pastas 
      Height          =   2340
      Left            =   240
      TabIndex        =   1
      Top             =   600
      Width           =   2175
   End
   Begin VB.DriveListBox drv_discos 
      Height          =   315
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   2175
   End
End
Attribute VB_Name = "frm_arquivo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_ok_Click()
frm_excluir.lbl_dirarquivo.Caption = fil_arquivos.Path & "\" & fil_arquivos.FileName
Unload Me
End Sub
Private Sub dir_pastas_Change()
fil_arquivos.Path = dir_pastas.Path
End Sub
Private Sub drv_discos_Change()
On Error GoTo erro
dir_pastas.Path = drv_discos.Drive
Exit Sub
erro:
    MsgBox "Verifique se o disquete está corretamente inserido " & _
                "no drive!", vbOKOnly + vbCritical, "Erro"
    drv_discos.Drive = "c"
End Sub
Private Sub Form_Load()
frm_excluir.Visible = False
End Sub
Private Sub Form_Unload(Cancel As Integer)
frm_excluir.Visible = True
End Sub

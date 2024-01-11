VERSION 5.00
Begin VB.Form frm_pasta 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Selecionar Pasta"
   ClientHeight    =   3555
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   2970
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3555
   ScaleWidth      =   2970
   StartUpPosition =   2  'CenterScreen
   Begin VB.DriveListBox drv_discos 
      BackColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   240
      TabIndex        =   2
      Top             =   240
      Width           =   2415
   End
   Begin VB.DirListBox dir_pastas 
      Height          =   2340
      Left            =   240
      TabIndex        =   1
      Top             =   600
      Width           =   2415
   End
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
      Left            =   840
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   3000
      Width           =   1335
   End
End
Attribute VB_Name = "frm_pasta"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_ok_Click()
frm_excluir.lbl_dirpasta.Caption = dir_pastas.Path
Unload Me
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

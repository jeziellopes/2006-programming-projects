VERSION 5.00
Begin VB.Form frm_desabnum 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Desabilitar Número"
   ClientHeight    =   1860
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   3885
   ForeColor       =   &H8000000E&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   1860
   ScaleWidth      =   3885
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmd_ok 
      BackColor       =   &H00FF8080&
      Caption         =   "OK"
      Height          =   375
      Left            =   1200
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   1080
      Width           =   1455
   End
   Begin VB.TextBox txt_nome 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   375
      Left            =   360
      MaxLength       =   30
      TabIndex        =   0
      Top             =   600
      Width           =   3135
   End
   Begin VB.Label lbl_nome 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Nome do paciente"
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   360
      TabIndex        =   1
      Top             =   360
      Width           =   1305
   End
End
Attribute VB_Name = "frm_desabnum"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_ok_Click()
End
End Sub
Private Sub txt_nome_KeyPress(KeyAscii As Integer)
If KeyAscii >= vbKey0 And KeyAscii <= vbKey9 Then
    KeyAscii = 0
End If
End Sub

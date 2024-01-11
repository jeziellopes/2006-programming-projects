VERSION 5.00
Begin VB.Form frm_restringirvalores 
   BackColor       =   &H00800000&
   Caption         =   "Restringir Valores"
   ClientHeight    =   2310
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4725
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   ScaleHeight     =   2310
   ScaleWidth      =   4725
   StartUpPosition =   3  'Windows Default
   Begin VB.Label lbl_mensagem 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Aperte e Solte a Tecla Enter"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   360
      Left            =   240
      TabIndex        =   0
      Top             =   960
      Width           =   4200
   End
End
Attribute VB_Name = "frm_restringirvalores"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 13 Then
    lbl_mensagem.ForeColor = vbRed
    lbl_mensagem.BackColor = vbBlue
    frm_restringirvalores.BackColor = vbBlue
End If
End Sub
Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
If KeyCode = 13 Then
    lbl_mensagem.ForeColor = vbBlue
    lbl_mensagem.BackColor = vbRed
    frm_restringirvalores.BackColor = vbRed
End If
End Sub

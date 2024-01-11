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
   Begin VB.TextBox txt_simbolos 
      Height          =   405
      Left            =   1920
      TabIndex        =   5
      Top             =   1440
      Width           =   2295
   End
   Begin VB.TextBox txt_numeros 
      Height          =   405
      Left            =   1920
      TabIndex        =   4
      Top             =   960
      Width           =   2295
   End
   Begin VB.TextBox txt_letras 
      Height          =   405
      Left            =   1920
      TabIndex        =   3
      Top             =   480
      Width           =   2295
   End
   Begin VB.Label lbl_simbolos 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Restringir Símbolos:"
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   480
      TabIndex        =   2
      Top             =   1440
      Width           =   1410
   End
   Begin VB.Label lbl_numeros 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Restringir Números:"
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   480
      TabIndex        =   1
      Top             =   960
      Width           =   1380
   End
   Begin VB.Label lbl_letras 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Restringir Letras:"
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   480
      TabIndex        =   0
      Top             =   480
      Width           =   1185
   End
End
Attribute VB_Name = "frm_restringirvalores"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub txt_letras_KeyPress(KeyAscii As Integer)
If KeyAscii > 64 And KeyAscii < 91 Or KeyAscii > 96 And KeyAscii < 123 Then
    KeyAscii = 0
End If
End Sub
Private Sub txt_numeros_KeyPress(KeyAscii As Integer)
If KeyAscii > 47 And KeyAscii < 58 Then
    KeyAscii = 0
End If
End Sub
Private Sub txt_simbolos_KeyPress(KeyAscii As Integer)
If KeyAscii > 32 And KeyAscii < 48 Or KeyAscii > 57 And KeyAscii < 65 Or KeyAscii > 90 And KeyAscii < 97 Or KeyAscii > 122 Then
    KeyAscii = 0
End If
End Sub

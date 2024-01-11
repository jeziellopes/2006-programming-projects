VERSION 5.00
Begin VB.Form frm_calculo 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Calculo"
   ClientHeight    =   2055
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6270
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   2055
   ScaleWidth      =   6270
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txt_nome 
      Height          =   285
      Left            =   1680
      MaxLength       =   30
      TabIndex        =   6
      Top             =   360
      Width           =   2295
   End
   Begin VB.CommandButton cmd_resultado 
      BackColor       =   &H00FF8080&
      Caption         =   "Resultado"
      Default         =   -1  'True
      Enabled         =   0   'False
      Height          =   375
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   960
      Width           =   1815
   End
   Begin VB.TextBox txt_multiplicado 
      Enabled         =   0   'False
      Height          =   285
      Left            =   1680
      MaxLength       =   7
      TabIndex        =   3
      Top             =   1080
      Width           =   2295
   End
   Begin VB.TextBox txt_valor 
      Enabled         =   0   'False
      Height          =   285
      Left            =   1680
      MaxLength       =   7
      TabIndex        =   2
      Top             =   720
      Width           =   2295
   End
   Begin VB.Label lbl_nome 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Digite Seu Nome"
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   360
      TabIndex        =   7
      Top             =   360
      Width           =   1200
   End
   Begin VB.Label lbl_resultado 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   480
      TabIndex        =   5
      Top             =   1560
      Width           =   45
   End
   Begin VB.Label lbl_multiplicado 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Multiplicado Por"
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   360
      TabIndex        =   1
      Top             =   1080
      Width           =   1125
   End
   Begin VB.Label lbl_valor 
      BackColor       =   &H00800000&
      Caption         =   "Digite Um Valor"
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   360
      TabIndex        =   0
      Top             =   720
      Width           =   1095
   End
End
Attribute VB_Name = "frm_calculo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_resultado_Click()
lbl_resultado.Caption = txt_nome.Text & " Calculou " & txt_valor.Text * txt_multiplicado.Text
End Sub
Private Sub txt_nome_Change()
If txt_nome.Text = "" Then
    txt_valor.Enabled = False
Else
    txt_valor.Enabled = True
End If
End Sub
Private Sub txt_nome_KeyPress(KeyAscii As Integer)
If KeyAscii >= vbKey0 And KeyAscii <= vbKey9 Then
    KeyAscii = 0
End If
End Sub
Private Sub txt_valor_KeyPress(KeyAscii As Integer)
If KeyAscii >= vbKeyA Then
    KeyAscii = 0
End If
End Sub
Private Sub txt_multiplicado_KeyPress(KeyAscii As Integer)
If KeyAscii >= vbKeyA Then
    KeyAscii = 0
End If
End Sub
Private Sub txt_valor_Change()
If txt_valor.Text = "" Then
    txt_multiplicado.Enabled = False
Else
    txt_multiplicado.Enabled = True
End If
End Sub
Private Sub txt_multiplicado_Change()
If txt_multiplicado.Text = "" Then
    cmd_resultado.Enabled = False
Else
    cmd_resultado.Enabled = True
End If
End Sub


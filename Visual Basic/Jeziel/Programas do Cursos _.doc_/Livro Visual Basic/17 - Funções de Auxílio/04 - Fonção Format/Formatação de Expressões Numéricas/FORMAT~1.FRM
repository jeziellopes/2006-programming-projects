VERSION 5.00
Begin VB.Form frm_expressoesnumericas 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Formatação de Expressões Numéricas"
   ClientHeight    =   2895
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5775
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   2895
   ScaleWidth      =   5775
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmd_executar 
      BackColor       =   &H00FF8080&
      Caption         =   "Executar"
      Enabled         =   0   'False
      Height          =   375
      Left            =   4320
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   360
      Width           =   975
   End
   Begin VB.TextBox txt_numero 
      Height          =   375
      Left            =   1920
      MaxLength       =   28
      TabIndex        =   5
      Top             =   360
      Width           =   2295
   End
   Begin VB.Label lbl_percent 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   480
      TabIndex        =   4
      Top             =   2280
      Width           =   45
   End
   Begin VB.Label lbl_standart 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   480
      TabIndex        =   3
      Top             =   1800
      Width           =   45
   End
   Begin VB.Label lbl_fixed 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   480
      TabIndex        =   2
      Top             =   1320
      Width           =   45
   End
   Begin VB.Label lbl_corrency 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   480
      TabIndex        =   1
      Top             =   840
      Width           =   45
   End
   Begin VB.Label lbl_digitenumero 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Digite Um Número"
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   480
      TabIndex        =   0
      Top             =   360
      Width           =   1290
   End
End
Attribute VB_Name = "frm_expressoesnumericas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_executar_Click()
lbl_corrency.Caption = "Moeda Padrão.FontItalic: " & Format(txt_numero, "currency")
lbl_fixed.Caption = "Fixo.FontItalic: " & Format(txt_numero, "fixed")
lbl_standart.Caption = "Padrão.FontItalic: " & Format(txt_numero, "standard")
lbl_percent.Caption = "Por Cento.FontItalic: " & Format(txt_numero, "percent")
End Sub
Private Sub txt_numero_KeyPress(KeyAscii As Integer)
If KeyAscii >= vbKey0 And KeyAscii <= vbKey9 Then
    cmd_executar.Enabled = True
Else
    cmd_executar.Enabled = False
End If
End Sub

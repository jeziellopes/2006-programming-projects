VERSION 5.00
Begin VB.Form frm_elseif 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "ElseIf"
   ClientHeight    =   1770
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   2955
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   1770
   ScaleWidth      =   2955
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmd_processar 
      BackColor       =   &H00FF8080&
      Caption         =   "Processar"
      Default         =   -1  'True
      Height          =   375
      Left            =   840
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   1080
      Width           =   1215
   End
   Begin VB.TextBox txt_numero 
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Top             =   600
      Width           =   2175
   End
   Begin VB.Label lbl_digite 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Digite Um Número de 0 a 5"
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   480
      TabIndex        =   2
      Top             =   360
      Width           =   1920
   End
End
Attribute VB_Name = "frm_elseif"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_processar_Click()
If txt_numero = "" Then
    Print "Insera um número"
ElseIf txt_numero = 0 Then
    Print "Você digitou: " & txt_numero
ElseIf txt_numero = 1 Then
    Print "Você digitou: " & txt_numero
ElseIf txt_numero = 2 Then
    Print "Você digitou: " & txt_numero
ElseIf txt_numero = 3 Then
    Print "Você digitou: " & txt_numero
ElseIf txt_numero = 4 Then
    Print "Você digitou: " & txt_numero
ElseIf txt_numero = 5 Then
    Print "Você digitou: " & txt_numero
Else
    Print "Este número não está entre 0 e 5"
End If
txt_numero = ""
txt_numero.SetFocus
End Sub
Private Sub txt_numero_KeyPress(KeyAscii As Integer)
If KeyAscii >= vbKeyA Then
    KeyAscii = 0
End If
End Sub

VERSION 5.00
Begin VB.Form frm_login 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Login"
   ClientHeight    =   1845
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   2940
   ForeColor       =   &H00FF8080&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   1845
   ScaleWidth      =   2940
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txt_usuario 
      Height          =   315
      IMEMode         =   3  'DISABLE
      Left            =   840
      TabIndex        =   0
      Tag             =   "Jeziel"
      Top             =   240
      Width           =   1815
   End
   Begin VB.TextBox txt_senha 
      Height          =   315
      IMEMode         =   3  'DISABLE
      Left            =   840
      PasswordChar    =   "*"
      TabIndex        =   1
      Tag             =   "17"
      Top             =   720
      Width           =   1815
   End
   Begin VB.CommandButton cmd_ok 
      BackColor       =   &H00FF8080&
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   840
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   1200
      Width           =   1215
   End
   Begin VB.Label lbl_usuario 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Usuário:"
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   120
      TabIndex        =   4
      Top             =   240
      Width           =   585
   End
   Begin VB.Label lbl_senha 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Senha:"
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   240
      TabIndex        =   3
      Top             =   720
      Width           =   510
   End
End
Attribute VB_Name = "frm_login"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_ok_Click()
Dim msg As Integer
If txt_usuario = txt_usuario.Tag And txt_senha = txt_senha.Tag Then
    msg = MsgBox("Os dados estão corretos. Seja Bem-Vindo!!!", vbOKOnly + vbInformation, "Bem-Vindo")
ElseIf txt_usuario <> txt_usuario.Tag And txt_senha <> txt_senha.Tag Then
    msg = MsgBox("Os dados não estão corretos! Deseja digitá-los novamente?", vbYesNo + vbCritical, "Dados inválidos")
ElseIf txt_usuario = txt_usuario.Tag And txt_senha <> txt_senha.Tag Then
    msg = MsgBox("Os dados não estão corretos! Deseja digitá-los novamente?", vbYesNo + vbCritical, "Dados inválidos")
Else
    msg = MsgBox("Os dados não estão corretos! Deseja digitá-los novamente?", vbYesNo + vbCritical, "Dados inválidos")
End If
If msg = 6 Then
    txt_usuario = ""
    txt_senha = ""
Else
    txt_usuario = ""
    txt_senha = ""
    End
End If
End Sub

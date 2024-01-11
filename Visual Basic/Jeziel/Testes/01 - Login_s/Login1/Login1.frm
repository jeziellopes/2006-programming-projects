VERSION 5.00
Begin VB.Form frm_teste 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Teste"
   ClientHeight    =   1590
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   2670
   ForeColor       =   &H00FF8080&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   1590
   ScaleWidth      =   2670
   StartUpPosition =   3  'Windows Default
   Tag             =   "123"
   Begin VB.CommandButton cmd_Sair 
      BackColor       =   &H00FF8080&
      Caption         =   "Sair"
      Height          =   615
      Left            =   480
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   480
      Width           =   1695
   End
End
Attribute VB_Name = "frm_teste"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_Sair_Click()
MsgBox "Obrigado por acessar nosso programa experimental " & _
"de senha!", vbOKOnly + vbInformation, "Agradecimentos"
End
End Sub
Private Sub Form_Load()
On Error Resume Next
Dim senha As Integer
Dim msg As Integer
home:
senha = InputBox("Digite sua senha: ", "Login")
If senha <> frm_teste.Tag Then
    msg = MsgBox("A senha digitada é inválida, deseja digitá-la " & _
    "novamente?", vbYesNo + vbExclamation, "Acesso Restrito")
    If msg = 6 Then
        GoTo home
    Else
        End
    End If
Else
    MsgBox "A senha digitada está correta! Seja bem-vindo " & _
    "ao nosso programa!", vbOKOnly + vbInformation, "Acesso Garantido"
End If
End Sub

VERSION 5.00
Begin VB.Form frm_fescolha 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Funções de Escolha"
   ClientHeight    =   1485
   ClientLeft      =   2325
   ClientTop       =   2715
   ClientWidth     =   4335
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   1485
   ScaleWidth      =   4335
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmd_lancamissil 
      BackColor       =   &H00FF8080&
      Caption         =   "Lançar Míssil"
      Height          =   375
      Left            =   2280
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   480
      Width           =   1575
   End
   Begin VB.CommandButton cmd_formatarc 
      BackColor       =   &H00FF8080&
      Caption         =   "Formatar C:"
      Height          =   375
      Left            =   480
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   480
      Width           =   1575
   End
   Begin VB.Label lbl_escolha 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   480
      TabIndex        =   2
      Top             =   960
      Width           =   45
   End
End
Attribute VB_Name = "frm_fescolha"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_formatarc_Click()
Dim opcao As Integer
opcao = MsgBox("Você está prestes a formatar " & _
        "o disco C. Você perdera tudo que você tem!", _
        vbOKCancel + vbQuestion, "Formatar C:")
Select Case opcao
    Case Is = 1
        lbl_escolha.Caption = "Após a inicialização o disco C estará limpo!"
    Case Is = 2
        lbl_escolha.Caption = "Formatação Cancelada"
End Select
End Sub
Private Sub cmd_lancamissil_Click()
Dim opcao As Integer
opcao = MsgBox("Deseja lançar o míssil? O alvo já está focalizado!", _
        vbYesNoCancel + vbExclamation, "Lançar Míssil")
Select Case opcao
    Case Is = 2
        lbl_escolha.Caption = "Lançamento de míssil cancelado!"
    Case Is = 6
        lbl_escolha.Caption = "O alvo já era, " & _
        "este míssil é supersônico"
    Case Is = 7
        lbl_escolha.Caption = "Não desperdiço " & _
        "meus mísseis com alvos fracos"
End Select
End Sub

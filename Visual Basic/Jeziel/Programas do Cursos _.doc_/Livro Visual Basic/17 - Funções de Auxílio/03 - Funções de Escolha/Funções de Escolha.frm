VERSION 5.00
Begin VB.Form frm_fescolha 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Fun��es de Escolha"
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
      Caption         =   "Lan�ar M�ssil"
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
opcao = MsgBox("Voc� est� prestes a formatar " & _
        "o disco C. Voc� perdera tudo que voc� tem!", _
        vbOKCancel + vbQuestion, "Formatar C:")
Select Case opcao
    Case Is = 1
        lbl_escolha.Caption = "Ap�s a inicializa��o o disco C estar� limpo!"
    Case Is = 2
        lbl_escolha.Caption = "Formata��o Cancelada"
End Select
End Sub
Private Sub cmd_lancamissil_Click()
Dim opcao As Integer
opcao = MsgBox("Deseja lan�ar o m�ssil? O alvo j� est� focalizado!", _
        vbYesNoCancel + vbExclamation, "Lan�ar M�ssil")
Select Case opcao
    Case Is = 2
        lbl_escolha.Caption = "Lan�amento de m�ssil cancelado!"
    Case Is = 6
        lbl_escolha.Caption = "O alvo j� era, " & _
        "este m�ssil � supers�nico"
    Case Is = 7
        lbl_escolha.Caption = "N�o desperdi�o " & _
        "meus m�sseis com alvos fracos"
End Select
End Sub

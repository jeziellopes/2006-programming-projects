VERSION 5.00
Begin VB.Form frm_criandovariaveis 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Criando Variáveis"
   ClientHeight    =   1860
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   3990
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   1860
   ScaleWidth      =   3990
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmd_segundoteste 
      BackColor       =   &H00FF8080&
      Caption         =   "No Segundo Teste"
      Height          =   375
      Left            =   2040
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   1080
      Width           =   1575
   End
   Begin VB.CommandButton cmd_primeiroteste 
      BackColor       =   &H00FF8080&
      Caption         =   "No Primeiro Teste"
      Height          =   375
      Left            =   360
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   1080
      Width           =   1575
   End
   Begin VB.Label lbl_treino 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   1680
      TabIndex        =   1
      Top             =   360
      Width           =   45
   End
   Begin VB.Label lbl_valorvariavel 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Valor da Variável:"
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   360
      TabIndex        =   0
      Top             =   360
      Width           =   1245
   End
End
Attribute VB_Name = "frm_criandovariaveis"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public teste As String
Private Sub cmd_primeiroteste_Click()
teste = "1° Teste"
lbl_treino.Caption = teste
End Sub
Private Sub cmd_segundoteste_Click()
teste = "2° Teste"
lbl_treino.Caption = teste
End Sub

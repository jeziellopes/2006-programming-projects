VERSION 5.00
Begin VB.Form frm_desabilitarcaixatexto 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Desabilitar Caixa de Texto"
   ClientHeight    =   2550
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4005
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   2550
   ScaleWidth      =   4005
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txt_nomepaciente 
      Height          =   285
      Left            =   360
      TabIndex        =   2
      Top             =   600
      Width           =   3255
   End
   Begin VB.CommandButton cmd_sair 
      BackColor       =   &H00FF8080&
      Caption         =   "Sair"
      Height          =   375
      Left            =   1080
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   1800
      Width           =   1815
   End
   Begin VB.TextBox txt_sexo 
      Enabled         =   0   'False
      Height          =   285
      Left            =   360
      TabIndex        =   3
      Top             =   1320
      Width           =   3255
   End
   Begin VB.Label lbl_nomepaciente 
      BackColor       =   &H00800000&
      Caption         =   "Nome do Paciente"
      ForeColor       =   &H00FF8080&
      Height          =   255
      Left            =   360
      TabIndex        =   0
      Top             =   360
      Width           =   1365
   End
   Begin VB.Label lbl_sexo 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Sexo"
      Enabled         =   0   'False
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   360
      TabIndex        =   1
      Top             =   1080
      Width           =   360
   End
End
Attribute VB_Name = "frm_desabilitarcaixatexto"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_sair_Click()
End
End Sub

Private Sub txt_nomepaciente_Change()
If txt_nomepaciente.Text = "" Then
    lbl_sexo.Enabled = False
    txt_sexo.Enabled = False
Else
    lbl_sexo.Enabled = True
    txt_sexo.Enabled = True
End If
End Sub

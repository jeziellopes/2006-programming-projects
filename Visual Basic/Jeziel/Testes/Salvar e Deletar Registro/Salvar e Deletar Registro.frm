VERSION 5.00
Begin VB.Form frm_salvadeletaregistro 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Salvar e Deletar Registro"
   ClientHeight    =   1545
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7545
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   1545
   ScaleWidth      =   7545
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txt_dados 
      Height          =   375
      Left            =   5520
      TabIndex        =   2
      Top             =   600
      Width           =   1815
   End
   Begin VB.TextBox txt_valor 
      Height          =   375
      Left            =   3600
      TabIndex        =   1
      Top             =   600
      Width           =   1815
   End
   Begin VB.TextBox txt_chave 
      Height          =   375
      Left            =   1560
      TabIndex        =   0
      Top             =   600
      Width           =   1935
   End
   Begin VB.CommandButton cmd_deletareg 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Deletar"
      Height          =   495
      Left            =   240
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   840
      Width           =   1215
   End
   Begin VB.CommandButton cmd_salvareg 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Salvar"
      Height          =   495
      Left            =   240
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   240
      Width           =   1215
   End
   Begin VB.Label lbl_dados 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Dados"
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Left            =   5520
      TabIndex        =   5
      Top             =   360
      Width           =   465
   End
   Begin VB.Label lbl_valor 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Valor"
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Left            =   3600
      TabIndex        =   7
      Top             =   360
      Width           =   360
   End
   Begin VB.Label lbl_chave 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Chave"
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Left            =   1560
      TabIndex        =   6
      Top             =   360
      Width           =   465
   End
End
Attribute VB_Name = "frm_salvadeletaregistro"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_salvareg_Click()
On Error Resume Next
SaveSetting App.Title, txt_chave.Text, txt_valor.Text, txt_dados.Text
End Sub
Private Sub cmd_deletareg_Click()
On Error Resume Next
DeleteSetting App.Title
End Sub

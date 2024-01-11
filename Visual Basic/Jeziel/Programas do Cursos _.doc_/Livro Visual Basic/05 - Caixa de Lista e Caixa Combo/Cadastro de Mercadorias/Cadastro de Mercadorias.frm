VERSION 5.00
Begin VB.Form frm_cadastromercadorias 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Cadastro Mercadorias"
   ClientHeight    =   2340
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4395
   FillColor       =   &H00FFFFFF&
   ForeColor       =   &H8000000E&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   2340
   ScaleWidth      =   4395
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmd_limpartudo 
      BackColor       =   &H00FF8080&
      Caption         =   "Limpar Tudo"
      Enabled         =   0   'False
      Height          =   375
      Left            =   2640
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   1560
      Width           =   1335
   End
   Begin VB.CommandButton cmd_remover 
      BackColor       =   &H00FF8080&
      Caption         =   "Remover"
      Enabled         =   0   'False
      Height          =   375
      Left            =   2640
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   960
      Width           =   1335
   End
   Begin VB.CommandButton cmd_adicionar 
      BackColor       =   &H00FF8080&
      Caption         =   "Adicionar"
      Default         =   -1  'True
      Enabled         =   0   'False
      Height          =   375
      Left            =   2640
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   360
      Width           =   1335
   End
   Begin VB.ListBox lst_mercadoria 
      Height          =   1035
      ItemData        =   "Cadastro de Mercadorias.frx":0000
      Left            =   360
      List            =   "Cadastro de Mercadorias.frx":0002
      TabIndex        =   1
      Top             =   840
      Width           =   2055
   End
   Begin VB.TextBox txt_mercadoria 
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Top             =   360
      Width           =   2055
   End
   Begin VB.Label lbl_mercadoria 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   360
      TabIndex        =   2
      Top             =   2040
      Width           =   45
   End
End
Attribute VB_Name = "frm_cadastromercadorias"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_adicionar_Click()
lst_mercadoria.AddItem txt_mercadoria.Text
txt_mercadoria.Text = ""
cmd_adicionar.Enabled = False
End Sub
Private Sub cmd_limpartudo_Click()
lst_mercadoria.Clear
lbl_mercadoria.Caption = ""
cmd_remover.Enabled = False
cmd_limpartudo.Enabled = False
End Sub
Private Sub cmd_remover_Click()
lst_mercadoria.RemoveItem lst_mercadoria.ListIndex
cmd_remover.Enabled = False
cmd_limpartudo.Enabled = False
lbl_mercadoria.Caption = ""
End Sub
Private Sub lst_mercadoria_Click()
cmd_remover.Enabled = True
cmd_limpartudo.Enabled = True
End Sub
Private Sub lst_mercadoria_DblClick()
lbl_mercadoria.Caption = lst_mercadoria.Text & " é uma mercadoria cadastrada"
End Sub
Private Sub txt_mercadoria_Change()
If txt_mercadoria.Text = "" Then
    cmd_adicionar.Enabled = False
Else
    cmd_adicionar.Enabled = True
End If
End Sub

VERSION 5.00
Begin VB.Form frm_caixalista 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Caixa de Lista"
   ClientHeight    =   2550
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4230
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   2550
   ScaleWidth      =   4230
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmd_text 
      BackColor       =   &H00FF8080&
      Caption         =   "Text"
      Enabled         =   0   'False
      Height          =   375
      Left            =   2760
      MaskColor       =   &H8000000F&
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   1800
      Width           =   1095
   End
   Begin VB.CommandButton cmd_indice 
      BackColor       =   &H00FF8080&
      Caption         =   "Índice"
      Enabled         =   0   'False
      Height          =   375
      Left            =   1560
      MaskColor       =   &H8000000F&
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   1800
      Width           =   1095
   End
   Begin VB.CommandButton cmd_quantidade 
      BackColor       =   &H00FF8080&
      Caption         =   "Quantidade"
      Height          =   375
      Left            =   360
      MaskColor       =   &H8000000F&
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   1800
      Width           =   1095
   End
   Begin VB.ListBox lst_nomes 
      ForeColor       =   &H00000000&
      Height          =   1065
      IntegralHeight  =   0   'False
      ItemData        =   "Propriedades Caixa de Lista.frx":0000
      Left            =   960
      List            =   "Propriedades Caixa de Lista.frx":0013
      Sorted          =   -1  'True
      TabIndex        =   0
      Top             =   360
      Width           =   2055
   End
   Begin VB.Label lbl_quantidade 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   360
      TabIndex        =   4
      Top             =   1560
      Width           =   45
   End
End
Attribute VB_Name = "frm_caixalista"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_indice_Click()
lbl_quantidade.Caption = lst_nomes.ListIndex
End Sub
Private Sub cmd_quantidade_Click()
lbl_quantidade.Caption = lst_nomes.ListCount
End Sub
Private Sub cmd_text_Click()
lbl_quantidade.Caption = lst_nomes.Text
End Sub
Private Sub lst_nomes_Click()
cmd_indice.Enabled = True
cmd_text.Enabled = True
End Sub

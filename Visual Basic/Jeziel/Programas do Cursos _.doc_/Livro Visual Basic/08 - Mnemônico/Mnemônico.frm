VERSION 5.00
Begin VB.Form frm_Mnemonico 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Mnemônico"
   ClientHeight    =   2655
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7815
   ForeColor       =   &H00FFFFFF&
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   2655
   ScaleWidth      =   7815
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txt_endereco 
      Height          =   285
      Left            =   1800
      TabIndex        =   5
      Top             =   960
      Width           =   3975
   End
   Begin VB.Frame fra_condicao 
      BackColor       =   &H00800000&
      Caption         =   "Condição"
      ForeColor       =   &H00FF8080&
      Height          =   975
      Left            =   5880
      TabIndex        =   8
      Top             =   480
      Width           =   1455
      Begin VB.OptionButton opt_avista 
         BackColor       =   &H00800000&
         Caption         =   "A Vis&ta"
         ForeColor       =   &H00FF8080&
         Height          =   255
         Left            =   240
         TabIndex        =   10
         Top             =   600
         Width           =   975
      End
      Begin VB.OptionButton opt_aprazo 
         BackColor       =   &H00800000&
         Caption         =   "A Pra&zo"
         ForeColor       =   &H00FF8080&
         Height          =   255
         Left            =   240
         TabIndex        =   9
         Top             =   240
         Width           =   975
      End
   End
   Begin VB.CommandButton cmd_fechar 
      BackColor       =   &H00FF8080&
      Caption         =   "Fechar"
      Height          =   375
      Left            =   6000
      Style           =   1  'Graphical
      TabIndex        =   11
      Top             =   1680
      Width           =   1215
   End
   Begin VB.TextBox txt_datacomppra 
      Height          =   285
      Left            =   1800
      TabIndex        =   7
      Top             =   1920
      Width           =   1695
   End
   Begin VB.TextBox txt_valorcompra 
      Height          =   285
      Left            =   1800
      TabIndex        =   6
      Top             =   1440
      Width           =   1695
   End
   Begin VB.TextBox txt_nomecliente 
      Height          =   315
      Left            =   1800
      TabIndex        =   4
      Top             =   480
      Width           =   3135
   End
   Begin VB.Label lbl_datacompra 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Data da Com&pra"
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   480
      TabIndex        =   3
      Top             =   1920
      Width           =   1155
   End
   Begin VB.Label lbl_valorcompra 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Valor da Co&mpra"
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   480
      TabIndex        =   2
      Top             =   1440
      Width           =   1170
   End
   Begin VB.Label lbl_endereco 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "En&dereço"
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   960
      TabIndex        =   1
      Top             =   960
      Width           =   690
   End
   Begin VB.Label lbl_nomecliente 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Nom&e do Cliente"
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   480
      TabIndex        =   0
      Top             =   480
      Width           =   1170
   End
End
Attribute VB_Name = "frm_Mnemonico"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_fechar_Click()
End
End Sub

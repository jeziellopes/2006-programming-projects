VERSION 5.00
Begin VB.Form frm_cadastroclientes 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Cadastro de Clientes"
   ClientHeight    =   3885
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5175
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   3885
   ScaleWidth      =   5175
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame fra_vendedor 
      BackColor       =   &H00800000&
      Caption         =   "Vendedor:"
      ForeColor       =   &H00FF8080&
      Height          =   1695
      Left            =   2280
      TabIndex        =   11
      Top             =   1800
      Width           =   2535
      Begin VB.OptionButton opt_carlossilveira 
         BackColor       =   &H00800000&
         Caption         =   "Carlos Silva Silveira"
         Enabled         =   0   'False
         ForeColor       =   &H00FF8080&
         Height          =   255
         Left            =   240
         TabIndex        =   15
         Top             =   1320
         Width           =   1935
      End
      Begin VB.OptionButton opt_mariasilva 
         BackColor       =   &H00800000&
         Caption         =   "Maria Florentina Silva"
         Enabled         =   0   'False
         ForeColor       =   &H00FF8080&
         Height          =   255
         Left            =   240
         TabIndex        =   14
         Top             =   960
         Width           =   1935
      End
      Begin VB.OptionButton opt_emestosilva 
         BackColor       =   &H00800000&
         Caption         =   "Emesto da Silva"
         Enabled         =   0   'False
         ForeColor       =   &H00FF8080&
         Height          =   255
         Left            =   240
         TabIndex        =   13
         Top             =   600
         Width           =   1935
      End
      Begin VB.OptionButton opt_joaquimmomeira 
         BackColor       =   &H00800000&
         Caption         =   "Joaquim Momeira"
         Enabled         =   0   'False
         ForeColor       =   &H00FF8080&
         Height          =   255
         Left            =   240
         TabIndex        =   12
         Top             =   240
         Width           =   1935
      End
   End
   Begin VB.Frame fra_tiposfatura 
      BackColor       =   &H00800000&
      Caption         =   "Tipos de Fatura:"
      ForeColor       =   &H00FF8080&
      Height          =   1695
      Left            =   360
      TabIndex        =   5
      Top             =   1800
      Width           =   1815
      Begin VB.CheckBox chk_60dias 
         BackColor       =   &H00800000&
         Caption         =   "60 Dias"
         Enabled         =   0   'False
         ForeColor       =   &H00FF8080&
         Height          =   255
         Left            =   360
         TabIndex        =   10
         Top             =   1200
         Width           =   855
      End
      Begin VB.CheckBox chk_30dias 
         BackColor       =   &H00800000&
         Caption         =   "30 Dias"
         Enabled         =   0   'False
         ForeColor       =   &H00FF8080&
         Height          =   255
         Left            =   360
         TabIndex        =   9
         Top             =   840
         Width           =   855
      End
      Begin VB.CheckBox chk_avista 
         BackColor       =   &H00800000&
         Caption         =   "A Vista"
         Enabled         =   0   'False
         ForeColor       =   &H00FF8080&
         Height          =   255
         Left            =   360
         TabIndex        =   8
         Top             =   480
         Width           =   855
      End
   End
   Begin VB.TextBox txt_valorcompra 
      Height          =   375
      Left            =   2640
      TabIndex        =   4
      Top             =   1320
      Width           =   2175
   End
   Begin VB.Frame fra_primeiracompra 
      BackColor       =   &H00800000&
      Caption         =   "Primeira Compra?"
      ForeColor       =   &H00FF8080&
      Height          =   615
      Left            =   360
      TabIndex        =   2
      Top             =   1080
      Width           =   2175
      Begin VB.OptionButton opt_nao 
         BackColor       =   &H00800000&
         Caption         =   "Não"
         Enabled         =   0   'False
         ForeColor       =   &H00FF8080&
         Height          =   255
         Left            =   1200
         TabIndex        =   7
         Top             =   240
         Width           =   615
      End
      Begin VB.OptionButton opt_sim 
         BackColor       =   &H00800000&
         Caption         =   "Sim"
         Enabled         =   0   'False
         ForeColor       =   &H00FF8080&
         Height          =   255
         Left            =   360
         TabIndex        =   6
         Top             =   240
         Width           =   615
      End
   End
   Begin VB.TextBox txt_nomecliente 
      Height          =   375
      Left            =   360
      TabIndex        =   1
      Top             =   600
      Width           =   4455
   End
   Begin VB.Label lbl_valorcompra 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Valor da Compra"
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   2640
      TabIndex        =   3
      Top             =   1080
      Width           =   1170
   End
   Begin VB.Label lbl_nomecliente 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Nome do Cliente"
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   360
      TabIndex        =   0
      Top             =   360
      Width           =   1170
   End
End
Attribute VB_Name = "frm_cadastroclientes"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub opt_sim_Click()
chk_avista.Enabled = True
chk_30dias.Enabled = False
chk_60dias.Enabled = False
End Sub
Private Sub opt_nao_Click()
chk_avista.Enabled = True
chk_30dias.Enabled = True
chk_60dias.Enabled = True
End Sub
Private Sub txt_nomecliente_Change()
opt_sim.Enabled = True
opt_nao.Enabled = True
opt_joaquimmomeira.Enabled = True
opt_emestosilva.Enabled = True
opt_mariasilva.Enabled = True
opt_carlossilveira.Enabled = True
End Sub
Private Sub txt_nomecliente_KeyPress(KeyAscii As Integer)
If KeyAscii >= vbKey0 And KeyAscii <= vbKey9 Then
    KeyAscii = 0
End If
End Sub
Private Sub txt_valorcompra_Change()
If opt_sim.Value = True And txt_valorcompra.Text > 200 Then
    chk_avista.Enabled = True
    chk_30dias.Enabled = True
    chk_60dias.Enabled = True
Else
    chk_avista.Enabled = True
    chk_30dias.Enabled = False
    chk_60dias.Enabled = False
End If
End Sub
Private Sub txt_valorcompra_KeyPress(KeyAscii As Integer)
If KeyAscii >= vbKeyA And vbKeyZ Then
    KeyAscii = 0
End If
End Sub

VERSION 5.00
Begin VB.Form frm_datahora 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Funções de Data e Hora"
   ClientHeight    =   1845
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4605
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   1845
   ScaleWidth      =   4605
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmd_calcule 
      BackColor       =   &H00FF8080&
      Caption         =   "Calcule"
      Enabled         =   0   'False
      Height          =   375
      Left            =   3120
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   840
      Width           =   975
   End
   Begin VB.TextBox txt_diasprazo 
      Enabled         =   0   'False
      Height          =   375
      Left            =   2280
      TabIndex        =   3
      Top             =   840
      Width           =   615
   End
   Begin VB.TextBox txt_datacompra 
      Height          =   375
      Left            =   2280
      MaxLength       =   10
      TabIndex        =   1
      Top             =   360
      Width           =   1935
   End
   Begin VB.Label lbl_diapagamento 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   1920
      TabIndex        =   6
      Top             =   1320
      Width           =   45
   End
   Begin VB.Label lbl_ndiapagamento 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Dia do Pagamento"
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   360
      TabIndex        =   5
      Top             =   1320
      Width           =   1320
   End
   Begin VB.Label lbl_diasprazo 
      BackColor       =   &H00800000&
      Caption         =   "Digite a Quantidade de Dias de Prazo"
      ForeColor       =   &H00FF8080&
      Height          =   435
      Left            =   360
      TabIndex        =   2
      Top             =   840
      Width           =   1695
   End
   Begin VB.Label lbl_digitedatacompra 
      BackColor       =   &H00800000&
      Caption         =   "Digite a Data da Compra"
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   360
      TabIndex        =   0
      Top             =   480
      Width           =   1740
   End
End
Attribute VB_Name = "frm_datahora"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_calcule_Click()
Dim datapagamento As Date
datapagamento = CDate(txt_datacompra.Text) + txt_diasprazo.Text
If Weekday(datapagamento) = 1 Then
    datapagamento = datapagamento + 1
End If
lbl_diapagamento.Caption = datapagamento
End Sub
Private Sub txt_datacompra_Change()
txt_diasprazo.Enabled = True
End Sub
Private Sub txt_diasprazo_Change()
cmd_calcule.Enabled = True
End Sub

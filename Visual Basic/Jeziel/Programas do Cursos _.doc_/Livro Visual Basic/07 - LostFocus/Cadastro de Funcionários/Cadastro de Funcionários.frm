VERSION 5.00
Begin VB.Form frm_cadastrofuncionarios 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Cadastro de Funcionários"
   ClientHeight    =   4110
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5805
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "form1"
   MaxButton       =   0   'False
   ScaleHeight     =   4110
   ScaleWidth      =   5805
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txt_cargo 
      Height          =   285
      Left            =   360
      TabIndex        =   14
      Top             =   1200
      Width           =   3495
   End
   Begin VB.CommandButton cmd_cancelar 
      BackColor       =   &H00FF8080&
      Caption         =   "Cancelar"
      Height          =   375
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   8
      TabStop         =   0   'False
      Top             =   1080
      Width           =   1335
   End
   Begin VB.CommandButton cmd_ok 
      BackColor       =   &H00FF8080&
      Caption         =   "OK"
      Height          =   375
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   7
      TabStop         =   0   'False
      Top             =   600
      Width           =   1335
   End
   Begin VB.TextBox txt_nomeconjuge 
      Enabled         =   0   'False
      Height          =   285
      Left            =   360
      TabIndex        =   6
      Top             =   3480
      Width           =   3495
   End
   Begin VB.Frame fra_setor 
      BackColor       =   &H00800000&
      Caption         =   "Setor"
      ForeColor       =   &H00FF8080&
      Height          =   1455
      Left            =   2160
      TabIndex        =   4
      Top             =   1680
      Width           =   1695
      Begin VB.OptionButton opt_administrativo 
         BackColor       =   &H00800000&
         Caption         =   "Administrativo"
         ForeColor       =   &H00FF8080&
         Height          =   255
         Left            =   120
         TabIndex        =   13
         Top             =   840
         Width           =   1335
      End
      Begin VB.OptionButton opt_industrial 
         BackColor       =   &H00800000&
         Caption         =   "Industrial"
         ForeColor       =   &H00FF8080&
         Height          =   255
         Left            =   120
         TabIndex        =   12
         Top             =   480
         Width           =   1215
      End
   End
   Begin VB.Frame fra_estadocivil 
      BackColor       =   &H00800000&
      Caption         =   "Estado Civil"
      ForeColor       =   &H00FF8080&
      Height          =   1455
      Left            =   360
      TabIndex        =   3
      Top             =   1680
      Width           =   1695
      Begin VB.OptionButton opt_estadocivil 
         BackColor       =   &H00800000&
         Caption         =   "Viúvo"
         ForeColor       =   &H00FF8080&
         Height          =   255
         Index           =   2
         Left            =   240
         TabIndex        =   11
         Top             =   1080
         Width           =   735
      End
      Begin VB.OptionButton opt_estadocivil 
         BackColor       =   &H00800000&
         Caption         =   "Solteiro"
         ForeColor       =   &H00FF8080&
         Height          =   255
         Index           =   1
         Left            =   240
         TabIndex        =   10
         Top             =   720
         Width           =   855
      End
      Begin VB.OptionButton opt_estadocivil 
         BackColor       =   &H00800000&
         Caption         =   "Casado"
         ForeColor       =   &H00FF8080&
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   9
         Top             =   360
         Width           =   855
      End
   End
   Begin VB.TextBox txt_nomefuncionario 
      Height          =   285
      Left            =   360
      TabIndex        =   1
      Top             =   600
      Width           =   3495
   End
   Begin VB.Label lbl_nomeconjuge 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Nome do Conjuge"
      Enabled         =   0   'False
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   360
      TabIndex        =   5
      Top             =   3240
      Width           =   1275
   End
   Begin VB.Label lbl_cargo 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Cargo"
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   360
      TabIndex        =   2
      Top             =   960
      Width           =   420
   End
   Begin VB.Label lbl_nomefuncionario 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Nome do Funcionário"
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   360
      TabIndex        =   0
      Top             =   360
      Width           =   1515
   End
End
Attribute VB_Name = "frm_cadastrofuncionarios"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_cancelar_Click()
End
End Sub
Private Sub cmd_ok_Click()
End
End Sub
Private Sub opt_estadocivil_Click(Index As Integer)
lbl_nomeconjuge.Enabled = opt_estadocivil(0).Value
txt_nomeconjuge.Enabled = opt_estadocivil(0).Value
If Index = 0 Then
    txt_nomeconjuge.SetFocus
End If
End Sub
Private Sub txt_nomeconjuge_LostFocus()
If txt_nomeconjuge.Text = "" Then
    MsgBox "Preenchimento Obrigatório"
    txt_nomeconjuge.SetFocus
End If
End Sub

VERSION 5.00
Begin VB.Form frm_cadastropacientes 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Cadastro de Pacientes"
   ClientHeight    =   2925
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5085
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   2925
   ScaleWidth      =   5085
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmd_cancelar 
      BackColor       =   &H00FF8080&
      Caption         =   "Cancelar"
      Height          =   375
      Left            =   2760
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   2160
      Width           =   1455
   End
   Begin VB.CommandButton cmd_ok 
      BackColor       =   &H00FF8080&
      Caption         =   "OK"
      Height          =   375
      Left            =   840
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   2160
      Width           =   1455
   End
   Begin VB.TextBox txt_nome 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   375
      Left            =   360
      MaxLength       =   30
      TabIndex        =   0
      Top             =   600
      Width           =   4335
   End
   Begin VB.Frame fra_exame 
      BackColor       =   &H00800000&
      Caption         =   "Exame:"
      ForeColor       =   &H00FF8080&
      Height          =   975
      Left            =   1920
      TabIndex        =   3
      Top             =   1080
      Width           =   2775
      Begin VB.CheckBox chk_raiox 
         BackColor       =   &H00800000&
         Caption         =   "Raio X"
         Enabled         =   0   'False
         ForeColor       =   &H00FF8080&
         Height          =   255
         Left            =   120
         TabIndex        =   9
         Top             =   240
         Width           =   855
      End
      Begin VB.CheckBox chk_sangue 
         BackColor       =   &H00800000&
         Caption         =   "Sangue"
         Enabled         =   0   'False
         ForeColor       =   &H00FF8080&
         Height          =   255
         Left            =   120
         TabIndex        =   8
         Top             =   600
         Width           =   855
      End
      Begin VB.CheckBox chk_gravidez 
         BackColor       =   &H00800000&
         Caption         =   "Gravidez"
         Enabled         =   0   'False
         ForeColor       =   &H00FF8080&
         Height          =   255
         Left            =   1200
         TabIndex        =   7
         Top             =   240
         Width           =   975
      End
      Begin VB.CheckBox chk_espermograma 
         BackColor       =   &H00800000&
         Caption         =   "Espermograma"
         Enabled         =   0   'False
         ForeColor       =   &H00FF8080&
         Height          =   255
         Left            =   1200
         TabIndex        =   6
         Top             =   600
         Width           =   1455
      End
   End
   Begin VB.Frame fra_sexo 
      BackColor       =   &H00800000&
      Caption         =   "Sexo:"
      ForeColor       =   &H00FF8080&
      Height          =   975
      Left            =   360
      TabIndex        =   4
      Top             =   1080
      Width           =   1455
      Begin VB.OptionButton opt_masculino 
         BackColor       =   &H00800000&
         Caption         =   "Masculino"
         Enabled         =   0   'False
         ForeColor       =   &H00FF8080&
         Height          =   255
         Left            =   120
         TabIndex        =   11
         Top             =   240
         Width           =   1095
      End
      Begin VB.OptionButton opt_feminino 
         BackColor       =   &H00800000&
         Caption         =   "Feminino"
         Enabled         =   0   'False
         ForeColor       =   &H00FF8080&
         Height          =   255
         Left            =   120
         TabIndex        =   10
         Top             =   600
         Width           =   975
      End
   End
   Begin VB.Label lbl_nome 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Nome do paciente"
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   360
      TabIndex        =   1
      Top             =   360
      Width           =   1305
   End
End
Attribute VB_Name = "frm_cadastropacientes"
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
Private Sub txt_nome_Change()
If txt_nome.Text = "" Then
    opt_masculino.Enabled = False
    opt_feminino.Enabled = False
Else
    opt_masculino.Enabled = True
    opt_feminino.Enabled = True
End If
End Sub
Private Sub opt_masculino_Click()
chk_raiox.Enabled = True
chk_sangue.Enabled = True
chk_espermograma.Enabled = True
chk_gravidez.Enabled = False
End Sub
Private Sub opt_feminino_Click()
chk_raiox.Enabled = True
chk_sangue.Enabled = True
chk_espermograma.Enabled = False
chk_gravidez.Enabled = True
End Sub

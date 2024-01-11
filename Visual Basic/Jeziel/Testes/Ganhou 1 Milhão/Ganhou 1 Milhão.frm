VERSION 5.00
Begin VB.Form frm_ganhou1milhao 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Ganhou 1 Milhão"
   ClientHeight    =   3135
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6855
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   3135
   ScaleWidth      =   6855
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmd_sim 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Sim"
      Height          =   495
      Left            =   2160
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   1680
      Width           =   1215
   End
   Begin VB.CommandButton cmd_nao 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Não"
      Height          =   495
      Left            =   3480
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   1680
      Width           =   1215
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H00800000&
      BackStyle       =   0  'Transparent
      Caption         =   "Você Ganhou 1 Milhão de Reais. Deseja Aceitar o Prêmio?"
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   960
      Left            =   240
      TabIndex        =   1
      Top             =   120
      Width           =   6420
   End
End
Attribute VB_Name = "frm_ganhou1milhao"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_nao_Click()
If MsgBox("Não perca esta oportunidade. Você quer ou não ganhar 1 milhão?", vbInformation + vbYesNo, "Que Pena...") = vbYes Then
    MsgBox "Então vai tentando...", vbInformation, "Não desista!!!"
    Me.Show
Else
    MsgBox "Desistiu cedo. Tava quase conseguindo.", vbInformation, "Tá cansado?..."
    End
End If
End Sub
Private Sub cmd_sim_GotFocus()
cmd_nao.SetFocus
End Sub
Private Sub cmd_sim_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
cmd_sim.Left = Int(Rnd * 5640)
cmd_sim.Top = Int(Rnd * 2640)
End Sub

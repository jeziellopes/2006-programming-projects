VERSION 5.00
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Begin VB.Form frm_caseis 
   BackColor       =   &H00800000&
   Caption         =   "Case Is"
   ClientHeight    =   1590
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   3390
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   ScaleHeight     =   1590
   ScaleWidth      =   3390
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmd_execute 
      BackColor       =   &H00FF8080&
      Caption         =   "Execute"
      Default         =   -1  'True
      Enabled         =   0   'False
      Height          =   375
      Left            =   1680
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   840
      Width           =   1335
   End
   Begin MSMask.MaskEdBox msk_data 
      Height          =   375
      Left            =   1680
      TabIndex        =   3
      Top             =   240
      Width           =   1335
      _ExtentX        =   2355
      _ExtentY        =   661
      _Version        =   393216
      MaxLength       =   10
      Mask            =   "##/##/####"
      PromptChar      =   "_"
   End
   Begin VB.Label lbl_data 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Digite Uma Data"
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   360
      TabIndex        =   2
      Top             =   360
      Width           =   1170
   End
   Begin VB.Label lbl_resposta 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   240
      TabIndex        =   1
      Top             =   1320
      Width           =   45
   End
End
Attribute VB_Name = "frm_caseis"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_execute_Click()
On Error Resume Next
Dim data As Date
data = msk_data.Text
Select Case data
Case Is < Date
lbl_resposta.Caption = "A data digitada é menor que a de hoje"
Case Is = Date
lbl_resposta.Caption = "A data digitada é igual a de hoje"
Case Is > Date
lbl_resposta.Caption = "A data digitada é maior que a de hoje"
End Select
End Sub
Private Sub msk_data_Change()
cmd_execute.Enabled = True
End Sub

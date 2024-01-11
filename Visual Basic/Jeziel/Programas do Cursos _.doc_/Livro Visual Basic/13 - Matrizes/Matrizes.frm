VERSION 5.00
Begin VB.Form frm_presidentes 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Presidentes"
   ClientHeight    =   2895
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   3210
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   2895
   ScaleWidth      =   3210
   StartUpPosition =   3  'Windows Default
   Begin VB.CheckBox chk_nome 
      BackColor       =   &H00800000&
      Caption         =   "FHC"
      ForeColor       =   &H00FF8080&
      Height          =   375
      Index           =   3
      Left            =   720
      TabIndex        =   3
      Top             =   2040
      Width           =   1695
   End
   Begin VB.CheckBox chk_nome 
      BackColor       =   &H00800000&
      Caption         =   "Collor"
      ForeColor       =   &H00FF8080&
      Height          =   375
      Index           =   2
      Left            =   720
      TabIndex        =   2
      Top             =   1560
      Width           =   1695
   End
   Begin VB.CheckBox chk_nome 
      BackColor       =   &H00800000&
      Caption         =   "José Sarney"
      ForeColor       =   &H00FF8080&
      Height          =   375
      Index           =   1
      Left            =   720
      TabIndex        =   1
      Top             =   1080
      Width           =   1695
   End
   Begin VB.CheckBox chk_nome 
      BackColor       =   &H00800000&
      Caption         =   "Figueiredo"
      ForeColor       =   &H00FF8080&
      Height          =   375
      Index           =   0
      Left            =   720
      TabIndex        =   0
      Top             =   600
      Width           =   1695
   End
   Begin VB.Frame fra_presidentes 
      BackColor       =   &H00800000&
      Caption         =   "Presidentes"
      ForeColor       =   &H00FF8080&
      Height          =   2175
      Left            =   480
      TabIndex        =   5
      Top             =   360
      Width           =   2175
   End
   Begin VB.Label lbl_teste 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   480
      TabIndex        =   4
      Top             =   2640
      Width           =   45
   End
End
Attribute VB_Name = "frm_presidentes"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub chk_nome_Click(Index As Integer)
If chk_nome(Index).Value = 1 Then
    lbl_teste.Caption = "A opção " & chk_nome(Index).Caption & " foi ativada"
Else
    lbl_teste.Caption = "A opção " & chk_nome(Index).Caption & " foi desativada"
End If
End Sub

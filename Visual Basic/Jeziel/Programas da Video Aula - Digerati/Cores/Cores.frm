VERSION 5.00
Begin VB.Form frm_cores 
   BackColor       =   &H00800000&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Cores"
   ClientHeight    =   2550
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4230
   ForeColor       =   &H80000005&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2550
   ScaleWidth      =   4230
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.OptionButton opt_cor 
      BackColor       =   &H00800000&
      Caption         =   "Verde"
      ForeColor       =   &H00FF8080&
      Height          =   255
      Index           =   3
      Left            =   2040
      TabIndex        =   5
      Top             =   1320
      Width           =   1455
   End
   Begin VB.OptionButton opt_cor 
      BackColor       =   &H00800000&
      Caption         =   "Amarelo"
      ForeColor       =   &H00FF8080&
      Height          =   255
      Index           =   4
      Left            =   2040
      TabIndex        =   4
      Top             =   1560
      Width           =   1455
   End
   Begin VB.OptionButton opt_cor 
      BackColor       =   &H00800000&
      Caption         =   "Vermelho"
      ForeColor       =   &H00FF8080&
      Height          =   255
      Index           =   5
      Left            =   2040
      TabIndex        =   3
      Top             =   1800
      Width           =   1455
   End
   Begin VB.OptionButton opt_cor 
      BackColor       =   &H00800000&
      Caption         =   "Azul"
      ForeColor       =   &H00FF8080&
      Height          =   255
      Index           =   2
      Left            =   2040
      TabIndex        =   2
      Top             =   1080
      Width           =   1455
   End
   Begin VB.OptionButton opt_cor 
      BackColor       =   &H00800000&
      Caption         =   "Preto"
      ForeColor       =   &H00FF8080&
      Height          =   255
      Index           =   1
      Left            =   2040
      TabIndex        =   1
      Top             =   840
      Width           =   1455
   End
   Begin VB.OptionButton opt_cor 
      BackColor       =   &H00800000&
      Caption         =   "Branco"
      ForeColor       =   &H00FF8080&
      Height          =   255
      Index           =   0
      Left            =   2040
      TabIndex        =   0
      Top             =   600
      Value           =   -1  'True
      Width           =   1455
   End
   Begin VB.Frame fra_cores 
      BackColor       =   &H00800000&
      Caption         =   "Cores"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   1815
      Left            =   1920
      TabIndex        =   7
      Top             =   360
      Width           =   1935
   End
   Begin VB.Label lbl_cores 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      DragMode        =   1  'Automatic
      Height          =   1815
      Left            =   360
      TabIndex        =   6
      Top             =   360
      Width           =   1455
   End
End
Attribute VB_Name = "frm_cores"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub opt_cor_Click(Index As Integer)
Select Case Index
Case 0
    lbl_cores.BackColor = vbWhite
Case 1
    lbl_cores.BackColor = vbBlack
Case 2
    lbl_cores.BackColor = vbBlue
Case 3
    lbl_cores.BackColor = vbGreen
Case 4
    lbl_cores.BackColor = vbYellow
Case 5
    lbl_cores.BackColor = vbRed
End Select
End Sub

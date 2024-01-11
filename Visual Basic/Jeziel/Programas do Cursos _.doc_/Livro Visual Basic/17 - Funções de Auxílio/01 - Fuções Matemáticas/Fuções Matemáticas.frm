VERSION 5.00
Begin VB.Form frm_funcoesmatematicas 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Funções Matemáticas"
   ClientHeight    =   2790
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4215
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   2790
   ScaleWidth      =   4215
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmd_execute 
      BackColor       =   &H00FF8080&
      Caption         =   "Execute"
      Height          =   375
      Left            =   2280
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   720
      Width           =   1095
   End
   Begin VB.TextBox txt_digitenumero 
      Height          =   285
      Left            =   1800
      TabIndex        =   1
      Top             =   360
      Width           =   2055
   End
   Begin VB.Label lbl_sqr 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   360
      TabIndex        =   7
      Top             =   2280
      Width           =   45
   End
   Begin VB.Label lbl_sgn 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   360
      TabIndex        =   6
      Top             =   2040
      Width           =   45
   End
   Begin VB.Label lbl_int 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   360
      TabIndex        =   5
      Top             =   1800
      Width           =   45
   End
   Begin VB.Label lbl_fix 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   360
      TabIndex        =   4
      Top             =   1560
      Width           =   45
   End
   Begin VB.Label lbl_abs 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   360
      TabIndex        =   3
      Top             =   1320
      Width           =   45
   End
   Begin VB.Label lbl_digitenumero 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Digite Um Número"
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   360
      TabIndex        =   0
      Top             =   360
      Width           =   1290
   End
End
Attribute VB_Name = "frm_funcoesmatematicas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_execute_Click()
lbl_abs.Caption = "Função ABS: " & Abs(txt_digitenumero.Text)
lbl_fix.Caption = "Função FIX: " & Fix(txt_digitenumero.Text)
lbl_int.Caption = "Função INT: " & Int(txt_digitenumero.Text)
lbl_sgn.Caption = "Função SGN: " & Sgn(txt_digitenumero.Text)
lbl_sqr.Caption = "Função SQR: " & Sqr(txt_digitenumero.Text)
End Sub

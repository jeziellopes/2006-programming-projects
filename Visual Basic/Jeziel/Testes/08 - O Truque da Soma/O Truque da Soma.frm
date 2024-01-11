VERSION 5.00
Begin VB.Form frm_truquesoma 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "O Truque da Soma"
   ClientHeight    =   2790
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4830
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   2790
   ScaleWidth      =   4830
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmd_somar 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Caption         =   "Calculadora..."
      Height          =   375
      Left            =   2520
      Style           =   1  'Graphical
      TabIndex        =   13
      Top             =   1080
      Width           =   1215
   End
   Begin VB.CommandButton cmd_sair 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Caption         =   "Sair"
      Height          =   375
      Left            =   3840
      Style           =   1  'Graphical
      TabIndex        =   12
      Top             =   1080
      Width           =   855
   End
   Begin VB.TextBox txt_resultadodeduzido 
      Enabled         =   0   'False
      Height          =   375
      Left            =   3360
      MaxLength       =   6
      TabIndex        =   5
      Top             =   240
      Width           =   1215
   End
   Begin VB.TextBox txt_numero5 
      Height          =   375
      Left            =   1200
      MaxLength       =   5
      TabIndex        =   4
      Top             =   2160
      Width           =   1215
   End
   Begin VB.TextBox txt_numero4 
      Height          =   375
      Left            =   1200
      MaxLength       =   5
      TabIndex        =   3
      Top             =   1680
      Width           =   1215
   End
   Begin VB.TextBox txt_numero3 
      Height          =   375
      Left            =   1200
      MaxLength       =   5
      TabIndex        =   2
      Top             =   1200
      Width           =   1215
   End
   Begin VB.TextBox txt_numero2 
      Height          =   375
      Left            =   1200
      MaxLength       =   5
      TabIndex        =   1
      Top             =   720
      Width           =   1215
   End
   Begin VB.TextBox txt_numero1 
      Height          =   375
      Left            =   1200
      MaxLength       =   5
      TabIndex        =   0
      Top             =   240
      Width           =   1215
   End
   Begin VB.Label lbl_comprovar 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Comprovar Soma"
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Left            =   2520
      TabIndex        =   14
      Top             =   840
      Width           =   1245
   End
   Begin VB.Label lbl_resultadodeduzido 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Resultado Deduzido:"
      ForeColor       =   &H00FFFFFF&
      Height          =   435
      Left            =   2520
      TabIndex        =   11
      Top             =   240
      Width           =   765
   End
   Begin VB.Label lbl_numero5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "5º Número:"
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Left            =   360
      TabIndex        =   10
      Top             =   2160
      Width           =   795
   End
   Begin VB.Label lbl_numero4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "4º Número:"
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Left            =   360
      TabIndex        =   9
      Top             =   1680
      Width           =   795
   End
   Begin VB.Label lbl_numero3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "3º Número:"
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Left            =   360
      TabIndex        =   8
      Top             =   1200
      Width           =   795
   End
   Begin VB.Label lbl_numero2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "2º Número:"
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Left            =   360
      TabIndex        =   7
      Top             =   720
      Width           =   795
   End
   Begin VB.Label lbl_numero1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "1º Número:"
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Left            =   360
      TabIndex        =   6
      Top             =   240
      Width           =   795
   End
End
Attribute VB_Name = "frm_truquesoma"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim tempo As Variant
Private Sub cmd_sair_Click()
End
End Sub
Private Sub cmd_somar_Click()
Shell "c:\windows\system32\calc.exe", vbNormalFocus
End Sub
Private Sub txt_numero1_Change()
On Error Resume Next
txt_resultadodeduzido.Text = Format(txt_numero1 + 199998, "00000")
If txt_numero1.Text = "" Then
txt_resultadodeduzido.Text = ""
End If
End Sub
Private Sub txt_numero1_LostFocus()
If txt_numero1.Text < 10000 Then
MsgBox "Só é possível colocar um número com 5 algarismos!!!", vbInformation + vbOKOnly, "Número de 5 algarismos"
txt_numero1.Text = ""
txt_numero1.SetFocus
End If
End Sub
Private Sub txt_numero3_Change()
On Error Resume Next
txt_numero3.Text = Format(99999 - txt_numero2.Text, "00000")
txt_numero2.Text = Format(txt_numero2.Text, "00000")
End Sub
Private Sub txt_numero4_LostFocus()
txt_numero4.Text = Format(txt_numero4.Text, "00000")
End Sub
Private Sub txt_numero5_Change()
On Error Resume Next
txt_numero5.Text = 99999 - txt_numero4.Text
txt_numero5.Text = Format(txt_numero5.Text, "00000")
End Sub
Private Sub txt_numero3_GotFocus()
On Error Resume Next
txt_numero3.Text = Format(99999 - txt_numero2.Text, "00000")
End Sub
Private Sub txt_numero5_GotFocus()
On Error Resume Next
txt_numero5.Text = Format(99999 - txt_numero4.Text, "00000")
End Sub

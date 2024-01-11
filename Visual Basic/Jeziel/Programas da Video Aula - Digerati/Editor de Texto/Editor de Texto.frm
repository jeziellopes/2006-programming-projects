VERSION 5.00
Begin VB.Form frm_editor 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Editor de texto"
   ClientHeight    =   4695
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7575
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   4695
   ScaleWidth      =   7575
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame fra_corfumo 
      BackColor       =   &H00FFC0C0&
      Caption         =   "Cor do Fundo:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2175
      Index           =   1
      Left            =   5880
      TabIndex        =   7
      Top             =   2400
      Width           =   1575
      Begin VB.OptionButton opt_fundo 
         BackColor       =   &H00FFC0C0&
         Caption         =   "Branca"
         Height          =   375
         Index           =   1
         Left            =   120
         TabIndex        =   17
         Top             =   600
         Value           =   -1  'True
         Width           =   1215
      End
      Begin VB.OptionButton opt_fundo 
         BackColor       =   &H00FFC0C0&
         Caption         =   "Amarela"
         Height          =   375
         Index           =   2
         Left            =   120
         TabIndex        =   16
         Top             =   960
         Width           =   1215
      End
      Begin VB.OptionButton opt_fundo 
         BackColor       =   &H00FFC0C0&
         Caption         =   "Verde"
         Height          =   375
         Index           =   3
         Left            =   120
         TabIndex        =   15
         Top             =   1320
         Width           =   1215
      End
      Begin VB.OptionButton opt_fundo 
         BackColor       =   &H00FFC0C0&
         Caption         =   "Azul"
         Height          =   375
         Index           =   4
         Left            =   120
         TabIndex        =   14
         Top             =   1680
         Width           =   1215
      End
      Begin VB.OptionButton opt_fundo 
         BackColor       =   &H00FFC0C0&
         Caption         =   "Preta"
         Height          =   375
         Index           =   0
         Left            =   120
         TabIndex        =   13
         Top             =   240
         Width           =   1215
      End
   End
   Begin VB.Frame fra_corletra 
      BackColor       =   &H00FFC0C0&
      Caption         =   "Cor da Letra:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2175
      Index           =   0
      Left            =   5880
      TabIndex        =   6
      Top             =   120
      Width           =   1575
      Begin VB.OptionButton opt_letra 
         BackColor       =   &H00FFC0C0&
         Caption         =   "Branca"
         Height          =   375
         Index           =   1
         Left            =   120
         TabIndex        =   12
         Top             =   600
         Width           =   1215
      End
      Begin VB.OptionButton opt_letra 
         BackColor       =   &H00FFC0C0&
         Caption         =   "Amarela"
         Height          =   375
         Index           =   2
         Left            =   120
         TabIndex        =   11
         Top             =   960
         Width           =   1215
      End
      Begin VB.OptionButton opt_letra 
         BackColor       =   &H00FFC0C0&
         Caption         =   "Verde"
         Height          =   375
         Index           =   3
         Left            =   120
         TabIndex        =   10
         Top             =   1320
         Width           =   1215
      End
      Begin VB.OptionButton opt_letra 
         BackColor       =   &H00FFC0C0&
         Caption         =   "Azul"
         Height          =   375
         Index           =   4
         Left            =   120
         TabIndex        =   9
         Top             =   1680
         Width           =   1215
      End
      Begin VB.OptionButton opt_letra 
         BackColor       =   &H00FFC0C0&
         Caption         =   "Preta"
         Height          =   375
         Index           =   0
         Left            =   120
         TabIndex        =   8
         Top             =   240
         Value           =   -1  'True
         Width           =   1215
      End
   End
   Begin VB.TextBox txt_editor 
      Height          =   3975
      IMEMode         =   3  'DISABLE
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   5
      Top             =   600
      Width           =   5655
   End
   Begin VB.CheckBox chk_sublinhado 
      BackColor       =   &H00FFC0C0&
      Caption         =   "S"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5400
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   120
      Width           =   375
   End
   Begin VB.CheckBox chk_italico 
      BackColor       =   &H00FFC0C0&
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4920
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   120
      Width           =   375
   End
   Begin VB.CheckBox chk_negrito 
      BackColor       =   &H00FFC0C0&
      Caption         =   "N"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4440
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   120
      Width           =   375
   End
   Begin VB.ComboBox cbo_fonte 
      Height          =   315
      Left            =   1440
      TabIndex        =   1
      Text            =   "Arial"
      Top             =   120
      Width           =   2895
   End
   Begin VB.ComboBox cbo_tamanho 
      Height          =   315
      Left            =   120
      TabIndex        =   0
      Text            =   "8"
      Top             =   120
      Width           =   1215
   End
End
Attribute VB_Name = "frm_editor"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cbo_fonte_Change()
txt_editor.Font = cbo_fonte.Text
End Sub
Private Sub cbo_fonte_Click()
txt_editor.Font = cbo_fonte.Text
End Sub
Private Sub cbo_tamanho_Change()
txt_editor.FontSize = cbo_tamanho.Text
End Sub
Private Sub cbo_tamanho_Click()
txt_editor.FontSize = cbo_tamanho.Text
End Sub
Private Sub chk_negrito_Click()
If chk_negrito.Value = 1 Then
    txt_editor.FontBold = True
Else
    txt_editor.FontBold = False
End If
End Sub
Private Sub chk_italico_Click()
If chk_italico.Value = 1 Then
    txt_editor.FontItalic = True
Else
    txt_editor.FontItalic = False
End If
End Sub
Private Sub chk_sublinhado_Click()
If chk_sublinhado.Value = 1 Then
    txt_editor.FontUnderline = True
Else
    txt_editor.FontUnderline = False
End If
End Sub
Private Sub opt_letra_Click(Index As Integer)
Select Case Index
Case 0
    txt_editor.ForeColor = vbBlack
Case 1
    txt_editor.ForeColor = vbWhite
Case 2
    txt_editor.ForeColor = vbYellow
Case 3
    txt_editor.ForeColor = vbGreen
Case 4
    txt_editor.ForeColor = vbBlue
End Select
End Sub
Private Sub opt_fundo_Click(Index As Integer)
Select Case Index
Case 0
    txt_editor.BackColor = vbBlack
Case 1
    txt_editor.BackColor = vbWhite
Case 2
    txt_editor.BackColor = vbYellow
Case 3
    txt_editor.BackColor = vbGreen
Case 4
    txt_editor.BackColor = vbBlue
End Select
End Sub

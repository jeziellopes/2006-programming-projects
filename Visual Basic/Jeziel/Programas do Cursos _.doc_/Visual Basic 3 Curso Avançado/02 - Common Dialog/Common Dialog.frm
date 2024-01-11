VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form frm_commondialogo 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Common Dialog"
   ClientHeight    =   2670
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4350
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   2670
   ScaleWidth      =   4350
   StartUpPosition =   3  'Windows Default
   Begin MSComDlg.CommonDialog cdi_dialogo 
      Left            =   3840
      Top             =   0
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton cmd_abrir 
      BackColor       =   &H00FF8080&
      Caption         =   "Abrir"
      Height          =   375
      Left            =   360
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   1920
      Width           =   1695
   End
   Begin VB.CommandButton cmd_imprimir 
      BackColor       =   &H00FF8080&
      Caption         =   "Imprimir"
      Height          =   375
      Left            =   2280
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   1440
      Width           =   1695
   End
   Begin VB.CommandButton opt_salvar 
      BackColor       =   &H00FF8080&
      Caption         =   "Salvar"
      Height          =   375
      Left            =   360
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   1440
      Width           =   1695
   End
   Begin VB.CommandButton cmd_fonteletra 
      BackColor       =   &H00FF8080&
      Caption         =   "Mudar fonte da letra"
      Height          =   375
      Left            =   2280
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   960
      Width           =   1695
   End
   Begin VB.CommandButton cmd_corletra 
      BackColor       =   &H00FF8080&
      Caption         =   "Mudar a cor da letra"
      Height          =   375
      Left            =   360
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   960
      Width           =   1695
   End
   Begin VB.Label lbl_teste 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Common Dialog"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   435
      Left            =   720
      TabIndex        =   0
      Top             =   360
      Width           =   2820
   End
End
Attribute VB_Name = "frm_commondialogo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_corletra_Click()
cdi_dialogo.ShowColor
lbl_teste.ForeColor = cdi_dialogo.Color
End Sub
Private Sub cmd_fonteletra_Click()
cdi_dialogo.Flags = &H1 '(suporta somente fonte de tela)
cdi_dialogo.ShowFont
lbl_teste.FontBold = cdi_dialogo.FontBold
lbl_teste.FontItalic = cdi_dialogo.FontItalic
lbl_teste.FontName = cdi_dialogo.FontName
lbl_teste.FontSize = cdi_dialogo.FontSize
End Sub
Private Sub cmd_abrir_Click()
cdi_dialogo.ShowOpen
End Sub
Private Sub cmd_imprimir_Click()
cdi_dialogo.ShowPrinter
End Sub
Private Sub opt_salvar_Click()
cdi_dialogo.ShowSave
End Sub

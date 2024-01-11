VERSION 5.00
Begin VB.Form Frm_desenhos 
   BackColor       =   &H00800000&
   Caption         =   "Desenhos"
   ClientHeight    =   3390
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4620
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   ScaleHeight     =   3390
   ScaleWidth      =   4620
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmd_sair 
      BackColor       =   &H00FF8080&
      Caption         =   "Sair"
      Height          =   375
      Left            =   2400
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   2520
      Width           =   1695
   End
   Begin VB.CommandButton cmd_desenhar 
      BackColor       =   &H00FF8080&
      Caption         =   "Desenhar"
      Height          =   375
      Left            =   2400
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   2040
      Width           =   1695
   End
   Begin VB.Frame frm_desenhos 
      BackColor       =   &H00800000&
      Caption         =   "Tipo de Desenho"
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
      Height          =   1455
      Left            =   2400
      TabIndex        =   0
      Top             =   480
      Width           =   1695
      Begin VB.OptionButton opt_circulo 
         BackColor       =   &H00800000&
         Caption         =   "Círculo"
         ForeColor       =   &H00FF8080&
         Height          =   375
         Left            =   240
         TabIndex        =   3
         Top             =   960
         Width           =   1215
      End
      Begin VB.OptionButton Opt_quadrado 
         BackColor       =   &H00800000&
         Caption         =   "Quadrado"
         ForeColor       =   &H00FF8080&
         Height          =   375
         Left            =   240
         TabIndex        =   2
         Top             =   600
         Width           =   1215
      End
      Begin VB.OptionButton Opt_retangulo 
         BackColor       =   &H00800000&
         Caption         =   "Retângulo"
         ForeColor       =   &H00FF8080&
         Height          =   375
         Left            =   240
         TabIndex        =   1
         Top             =   240
         Width           =   1215
      End
   End
   Begin VB.Shape Shp_forma 
      BorderColor     =   &H00FF8080&
      BorderWidth     =   3
      Height          =   2415
      Left            =   480
      Top             =   480
      Width           =   1575
   End
End
Attribute VB_Name = "Frm_desenhos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim forma As String
Private Sub cmd_desenhar_Click()
If forma = "" Then
    MsgBox "Selecione uma forma!"
Else
    Select Case forma
    Case "Retângulo"
        Shp_forma.Shape = 0
    Case "Quadrado"
        Shp_forma.Shape = 1
    Case "Círculo"
        Shp_forma.Shape = 3
    End Select
End If
End Sub
Private Sub cmd_sair_Click()
End
End Sub
Private Sub opt_retangulo_Click()
forma = Opt_retangulo.Caption
End Sub
Private Sub opt_quadrado_Click()
forma = Opt_quadrado.Caption
End Sub
Private Sub opt_circulo_Click()
forma = opt_circulo.Caption
End Sub

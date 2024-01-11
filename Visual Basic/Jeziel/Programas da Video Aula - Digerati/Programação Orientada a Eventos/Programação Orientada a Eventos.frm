VERSION 5.00
Begin VB.Form frm_eventos 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Programação Orientada a Eventos"
   ClientHeight    =   5055
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4620
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5055
   ScaleWidth      =   4620
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmd_limparlabel 
      BackColor       =   &H00FF8080&
      Caption         =   "Limpar Label"
      Height          =   495
      Left            =   480
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   3480
      Width           =   3615
   End
   Begin VB.CommandButton cmd_sair 
      BackColor       =   &H00FF8080&
      Caption         =   "Sair"
      Height          =   495
      Left            =   480
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   4080
      Width           =   3615
   End
   Begin VB.TextBox txt_textos 
      Height          =   615
      Left            =   480
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      Top             =   960
      Width           =   3615
   End
   Begin VB.Label lbl_statuseventos 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000008&
      Height          =   1695
      Left            =   480
      TabIndex        =   2
      Top             =   1680
      Width           =   3615
   End
   Begin VB.Label lbl_statuspgm 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   390
      Left            =   2250
      TabIndex        =   0
      Top             =   480
      Width           =   105
   End
End
Attribute VB_Name = "frm_eventos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_limparlabel_Click()
lbl_statuseventos.Caption = ""
End Sub
Private Sub cmd_sair_Click()
End
End Sub
Private Sub Form_Load()
lbl_statuspgm.Caption = lbl_statuseventos.Caption & _
                            "O programa foi iniciado"
End Sub
Private Sub lbl_statuseventos_Click()
lbl_statuseventos.Caption = lbl_statuseventos.Caption & _
                            "O label foi clicado - "
End Sub
Private Sub txt_textos_Click()
lbl_statuseventos.Caption = lbl_statuseventos.Caption & _
                            "A caixa de texto foi clicada - "
End Sub
Private Sub txt_textos_KeyPress(KeyAscii As Integer)
lbl_statuseventos.Caption = lbl_statuseventos.Caption & _
                            "A caixa de texto foi alterada - "
End Sub

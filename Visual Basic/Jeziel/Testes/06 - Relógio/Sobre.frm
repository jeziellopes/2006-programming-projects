VERSION 5.00
Begin VB.Form frm_sobre 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Sobre"
   ClientHeight    =   1950
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   3795
   ForeColor       =   &H00000000&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1950
   ScaleWidth      =   3795
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmd_ok 
      Caption         =   "Ok"
      Height          =   375
      Left            =   1320
      TabIndex        =   3
      Top             =   1440
      Width           =   1095
   End
   Begin VB.Image img_appico 
      Height          =   495
      Left            =   120
      Top             =   120
      Width           =   495
   End
   Begin VB.Label lbl_considerações 
      Caption         =   "Relógio é uma programa simples, desenvolvido em Visual Basic por Jeziel Lopes. Obrigado por acessá-lo!!!"
      ForeColor       =   &H00000000&
      Height          =   675
      Left            =   120
      TabIndex        =   2
      Top             =   720
      Width           =   3705
   End
   Begin VB.Label lbl_versão 
      AutoSize        =   -1  'True
      Caption         =   "Versão"
      Height          =   195
      Left            =   720
      TabIndex        =   1
      Top             =   360
      Width           =   495
   End
   Begin VB.Label lbl_title 
      AutoSize        =   -1  'True
      Caption         =   "Título da Aplicação"
      Height          =   195
      Left            =   720
      TabIndex        =   0
      Top             =   120
      Width           =   1395
   End
End
Attribute VB_Name = "frm_sobre"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_ok_Click()
Me.Visible = False
End Sub
Private Sub Form_Load()
img_appico.Picture = frm_relogio.Icon
lbl_title = App.Title
lbl_versão.Caption = "Version " & App.Major & "." & App.Minor & "." & App.Revision
End Sub

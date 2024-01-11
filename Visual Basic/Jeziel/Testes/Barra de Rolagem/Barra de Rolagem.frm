VERSION 5.00
Begin VB.Form frm_barraderolagem 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Barra de Rolagem"
   ClientHeight    =   2820
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   3165
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   2820
   ScaleWidth      =   3165
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmd_zerador 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Zerador"
      Height          =   495
      Left            =   960
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   600
      Width           =   1215
   End
   Begin VB.HScrollBar hs_barrarol 
      Height          =   255
      LargeChange     =   5
      Left            =   240
      Max             =   15
      Min             =   1
      TabIndex        =   0
      Top             =   1320
      Value           =   1
      Width           =   2655
   End
   Begin VB.Shape shp_figura 
      FillColor       =   &H00FF0000&
      FillStyle       =   0  'Solid
      Height          =   495
      Left            =   960
      Top             =   1920
      Width           =   1215
   End
   Begin VB.Label lbl_valor 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   480
      Left            =   1440
      TabIndex        =   1
      Top             =   0
      Width           =   240
   End
End
Attribute VB_Name = "frm_barraderolagem"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub MudaCor(MeuValor As Byte)
    shp_figura.FillColor = shp_figura.FillColor Xor &HFFFFFF
    shp_figura.BorderWidth = MeuValor
End Sub
Private Sub AlteraBarraRolagem()
    If hs_barrarol.Value = 1 Then
        lbl_valor.Caption = 0
    Else
        lbl_valor.Caption = hs_barrarol.Value
    End If
    MudaCor hs_barrarol.Value
End Sub
Private Sub cmd_zerador_Click()
    MudaCor 30
    hs_barrarol.Value = 1
    lbl_valor.Caption = 0
End Sub
Private Sub hs_barrarol_Change()
    AlteraBarraRolagem
End Sub
Private Sub hs_barrarol_Scroll()
    AlteraBarraRolagem
End Sub

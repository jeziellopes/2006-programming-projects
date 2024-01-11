VERSION 5.00
Begin VB.Form frm_escenter 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Esc Enter"
   ClientHeight    =   2370
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   3285
   DrawStyle       =   5  'Transparent
   ForeColor       =   &H00FF8080&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   2370
   ScaleWidth      =   3285
   StartUpPosition =   3  'Windows Default
   Begin VB.Label lbl_aperteesc 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Aperte Esc"
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   2040
      TabIndex        =   1
      Top             =   360
      Width           =   780
   End
   Begin VB.Label lbl_aperteenter 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Aperte Enter"
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   2040
      TabIndex        =   0
      Top             =   120
      Width           =   885
   End
End
Attribute VB_Name = "frm_escenter"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_KeyPress(KeyAscii As Integer)
If KeyAscii = vbKeyReturn Then
    Print "Você apertou a tecla Enter"
End If
If KeyAscii = vbKeyEscape Then
    Print "Você apertou a tecla Esc"
End If
End Sub

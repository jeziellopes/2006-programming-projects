VERSION 5.00
Begin VB.Form frm_escenter 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Esc Enter"
   ClientHeight    =   1395
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4110
   DrawStyle       =   5  'Transparent
   ForeColor       =   &H00FF8080&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   1395
   ScaleWidth      =   4110
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmd_cancelar 
      BackColor       =   &H00FF8080&
      Cancel          =   -1  'True
      Caption         =   "Aperte Esc"
      Height          =   315
      Left            =   2040
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   360
      Width           =   1755
   End
   Begin VB.CommandButton cmd_ok 
      BackColor       =   &H00FF8080&
      Caption         =   "Aperte Enter"
      Default         =   -1  'True
      Height          =   315
      Left            =   2040
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   720
      Width           =   1755
   End
End
Attribute VB_Name = "frm_escenter"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_cancelar_Click()
Print "Você apertou a tecla Esc"
End Sub
Private Sub cmd_ok_Click()
Print "Você apertou a tecla Enter"
End Sub

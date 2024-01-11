VERSION 5.00
Begin VB.Form frm_escolhernomes 
   BackColor       =   &H00800000&
   Caption         =   "Escolher Nomes"
   ClientHeight    =   1095
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   2970
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   ScaleHeight     =   1095
   ScaleWidth      =   2970
   StartUpPosition =   3  'Windows Default
   Begin VB.ComboBox cbo_nomes 
      ForeColor       =   &H00000000&
      Height          =   315
      ItemData        =   "Escolher Nomes.frx":0000
      Left            =   240
      List            =   "Escolher Nomes.frx":0013
      TabIndex        =   0
      Text            =   "Jeziel"
      Top             =   360
      Width           =   2415
   End
   Begin VB.Label lbl_nomes 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   240
      TabIndex        =   1
      Top             =   720
      Width           =   45
   End
End
Attribute VB_Name = "frm_escolhernomes"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cbo_nomes_Click()
lbl_nomes.Caption = "Você escolheu " & cbo_nomes.Text
End Sub

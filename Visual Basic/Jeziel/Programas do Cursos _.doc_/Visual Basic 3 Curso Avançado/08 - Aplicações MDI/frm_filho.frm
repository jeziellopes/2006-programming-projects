VERSION 5.00
Begin VB.Form frm_filho 
   Caption         =   "Formulário Filho"
   ClientHeight    =   2565
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   3870
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   2565
   ScaleWidth      =   3870
   Begin VB.PictureBox pic_figura 
      Height          =   975
      Left            =   1200
      ScaleHeight     =   915
      ScaleWidth      =   1395
      TabIndex        =   1
      Top             =   1080
      Width           =   1455
   End
   Begin VB.CommandButton cmd_abrirfigura 
      Caption         =   "Abrir Figura"
      Height          =   495
      Left            =   1320
      TabIndex        =   0
      Top             =   480
      Width           =   1215
   End
End
Attribute VB_Name = "frm_filho"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_abrirfigura_Click()
pic_figura = LoadPicture("BRAZIL.GIF")
End Sub

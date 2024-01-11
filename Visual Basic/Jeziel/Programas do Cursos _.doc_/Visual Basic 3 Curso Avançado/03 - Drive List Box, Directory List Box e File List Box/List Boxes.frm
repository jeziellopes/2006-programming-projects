VERSION 5.00
Begin VB.Form frm_listboxes 
   BackColor       =   &H00800000&
   Caption         =   "List Boxes"
   ClientHeight    =   3030
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4830
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   ScaleHeight     =   3030
   ScaleWidth      =   4830
   StartUpPosition =   3  'Windows Default
   Begin VB.FileListBox fil_arquivos 
      Height          =   2040
      Left            =   2520
      TabIndex        =   2
      Top             =   480
      Width           =   1815
   End
   Begin VB.DirListBox dir_pastas 
      Height          =   1665
      Left            =   480
      TabIndex        =   1
      Top             =   840
      Width           =   1935
   End
   Begin VB.DriveListBox drv_discos 
      Height          =   315
      Left            =   480
      TabIndex        =   0
      Top             =   480
      Width           =   1935
   End
End
Attribute VB_Name = "frm_listboxes"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub drv_discos_Change()
dir_pastas.Path = drv_discos.Drive
End Sub
Private Sub dir_pastas_Change()
fil_arquivos.Path = dir_pastas.Path
End Sub

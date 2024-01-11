VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form frm_abririmagem 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Abrir Imagem"
   ClientHeight    =   5925
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7965
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   5925
   ScaleWidth      =   7965
   StartUpPosition =   2  'CenterScreen
   Begin MSComDlg.CommonDialog cdi_dialogos 
      Left            =   0
      Top             =   0
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      FileName        =   "D:\Recycled\FileSystem\Files\2\*.*"
      Filter          =   "Todos os Arquivos (*.*)|*.*|"
   End
   Begin VB.CommandButton cmd_abrir 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Abrir"
      Height          =   495
      Left            =   6840
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   240
      Width           =   855
   End
   Begin VB.CommandButton cmd_sair 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Sair"
      Height          =   495
      Left            =   6840
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   5160
      Width           =   855
   End
   Begin VB.CommandButton cmd_fechar 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Fechar"
      Height          =   495
      Left            =   6840
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   840
      Width           =   855
   End
   Begin VB.Image img_imagem 
      BorderStyle     =   1  'Fixed Single
      Height          =   5415
      Left            =   240
      Stretch         =   -1  'True
      Top             =   240
      Width           =   6375
   End
End
Attribute VB_Name = "frm_abririmagem"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_abrir_Click()
cdi_dialogos.ShowOpen
img_imagem.Picture = LoadPicture(cdi_dialogos.FileName)
End Sub
Private Sub cmd_fechar_Click()
img_imagem.Picture = LoadPicture("")
End Sub
Private Sub cmd_sair_Click()
End
End Sub

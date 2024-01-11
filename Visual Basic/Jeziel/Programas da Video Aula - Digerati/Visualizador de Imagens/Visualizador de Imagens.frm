VERSION 5.00
Begin VB.Form frm_visualizador 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Visualizador de Imagens"
   ClientHeight    =   3855
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7620
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   3855
   ScaleWidth      =   7620
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame fra_tamanho 
      BackColor       =   &H00800000&
      Caption         =   "Tamanho"
      ForeColor       =   &H00FF8080&
      Height          =   855
      Left            =   480
      TabIndex        =   3
      Top             =   2520
      Width           =   1935
      Begin VB.OptionButton opt_original 
         BackColor       =   &H00800000&
         Caption         =   "Original"
         ForeColor       =   &H00FF8080&
         Height          =   255
         Left            =   360
         TabIndex        =   5
         Top             =   480
         Value           =   -1  'True
         Width           =   855
      End
      Begin VB.OptionButton opt_ajustar 
         BackColor       =   &H00800000&
         Caption         =   "Ajustar"
         ForeColor       =   &H00FF8080&
         Height          =   255
         Left            =   360
         TabIndex        =   4
         Top             =   240
         Width           =   855
      End
   End
   Begin VB.FileListBox fil_imagem 
      Height          =   2820
      Left            =   2520
      Pattern         =   "*.Jpg"
      TabIndex        =   2
      Top             =   480
      Width           =   1575
   End
   Begin VB.DirListBox dir_pastas 
      Height          =   1665
      Left            =   480
      TabIndex        =   1
      Top             =   840
      Width           =   1935
   End
   Begin VB.DriveListBox drv_drive 
      Height          =   315
      Left            =   480
      TabIndex        =   0
      Top             =   480
      Width           =   1935
   End
   Begin VB.Image img_imagem 
      Height          =   2880
      Left            =   4200
      Top             =   480
      Width           =   2895
   End
End
Attribute VB_Name = "frm_visualizador"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub dir_pastas_Change()
On Error Resume Next
fil_imagem.Path = dir_pastas.Path
End Sub
Private Sub drv_drive_Change()
On Error GoTo erro:
dir_pastas.Path = drv_drive.Drive
Exit Sub
erro:
    MsgBox "Ocorreu o seguinte erro: " & Err.Number & " - " & Err.Description
End Sub
Private Sub fil_imagem_Click()
On Error Resume Next
img_imagem.Picture = LoadPicture(fil_imagem.Path & "\" & fil_imagem.FileName)
End Sub
Private Sub opt_ajustar_Click()
On Error Resume Next
img_imagem.Width = 2898
img_imagem.Height = 2880
img_imagem.Stretch = True
End Sub
Private Sub opt_original_Click()
On Error Resume Next
img_imagem.Stretch = False
End Sub

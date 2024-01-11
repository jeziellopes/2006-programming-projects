VERSION 5.00
Begin VB.Form frm_selecionararquivo 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Selecionar Arquivo"
   ClientHeight    =   2910
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5070
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   2910
   ScaleWidth      =   5070
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.FileListBox fil_arquivo 
      Height          =   2235
      Left            =   2880
      TabIndex        =   2
      Top             =   360
      Width           =   1815
   End
   Begin VB.DirListBox dir_pastas 
      Height          =   1890
      Left            =   360
      TabIndex        =   1
      Top             =   720
      Width           =   2415
   End
   Begin VB.DriveListBox drv_drive 
      Height          =   315
      Left            =   360
      TabIndex        =   0
      Top             =   360
      Width           =   2415
   End
End
Attribute VB_Name = "frm_selecionararquivo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub dir_pastas_Change()
On Error Resume Next
fil_arquivo.Path = dir_pastas.Path
End Sub
Private Sub drv_drive_Change()
On Error GoTo erro:
dir_pastas.Path = drv_drive.Drive
Exit Sub
erro:
MsgBox "O disquete não foi inserido ou está corrompido!!!", vbCritical + vbOKOnly, "Erro: " & Err.Number & " - " & Err.Description
drv_drive.Drive = dir_pastas.Path
End Sub
Private Sub fil_arquivo_DblClick()
frm_variaveis.lbl_arquivo.Caption = fil_arquivo.Path & "\" & fil_arquivo.FileName
Me.Visible = False
End Sub

VERSION 5.00
Begin VB.Form frm_excluir 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Excluir Pastas e Arquivos"
   ClientHeight    =   2310
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7485
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   2310
   ScaleWidth      =   7485
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmd_excluirarquivo 
      BackColor       =   &H00FFC0C0&
      Caption         =   "Excluir"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   6360
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   720
      Width           =   735
   End
   Begin VB.CommandButton cmd_excluirpasta 
      BackColor       =   &H00FFC0C0&
      Caption         =   "Excluir"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   6360
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   1440
      Width           =   735
   End
   Begin VB.CommandButton cmd_dirpasta 
      BackColor       =   &H00FFC0C0&
      Caption         =   "..."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   6360
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   1080
      Width           =   495
   End
   Begin VB.CommandButton cmd_dirarquivo 
      BackColor       =   &H00FFC0C0&
      Caption         =   "..."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   6360
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   360
      Width           =   495
   End
   Begin VB.CommandButton cmd_sair 
      BackColor       =   &H00FFC0C0&
      Caption         =   "Sair"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   6360
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   1800
      Width           =   735
   End
   Begin VB.Label lbl_excluirarquivo 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Excluir Arquivo:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0C0&
      Height          =   195
      Left            =   360
      TabIndex        =   8
      Top             =   360
      Width           =   1350
   End
   Begin VB.Label lbl_excluirpasta 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Excluir Pasta:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0C0&
      Height          =   195
      Left            =   480
      TabIndex        =   7
      Top             =   1080
      Width           =   1185
   End
   Begin VB.Label lbl_dirarquivo 
      BackColor       =   &H00800000&
      BackStyle       =   0  'Transparent
      ForeColor       =   &H00FFC0C0&
      Height          =   615
      Left            =   1800
      TabIndex        =   6
      Top             =   360
      Width           =   4455
   End
   Begin VB.Label lbl_dirpasta 
      BackColor       =   &H00800000&
      BackStyle       =   0  'Transparent
      ForeColor       =   &H00FFC0C0&
      Height          =   615
      Left            =   1800
      TabIndex        =   5
      Top             =   1080
      Width           =   4455
   End
End
Attribute VB_Name = "frm_excluir"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_dirarquivo_Click()
FileSystem.ChDrive "c"
frm_arquivo.Show
End Sub
Private Sub cmd_dirpasta_Click()
FileSystem.ChDrive "c"
frm_pasta.Show
End Sub
Private Sub cmd_excluirarquivo_Click()
Dim msg As Integer
msg = MsgBox("Tem certeza que deseja excluir este " & _
            "arquivo?", vbYesNo + vbExclamation, "Aviso")
If msg = 6 Then
    VBA.FileSystem.Kill (lbl_dirarquivo)
    lbl_dirarquivo.Caption = ""
Else
    lbl_dirarquivo.Caption = ""
End If
End Sub
Private Sub cmd_excluirpasta_Click()
msg = MsgBox("Tem certeza que deseja excluir este " & _
            "arquivo?", vbYesNo + vbExclamation, "Aviso")
If msg = 6 Then
    VBA.FileSystem.RmDir (lbl_dirpasta)
    lbl_dirpasta.Caption = ""
Else
    lbl_dirpasta.Caption = ""
End If
End Sub
Private Sub cmd_sair_Click()
End
End Sub


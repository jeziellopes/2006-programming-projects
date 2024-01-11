VERSION 5.00
Begin VB.Form frm_app 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Aplicação"
   ClientHeight    =   2700
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7005
   ForeColor       =   &H00FFC0C0&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   2700
   ScaleWidth      =   7005
   StartUpPosition =   2  'CenterScreen
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
      Height          =   375
      Left            =   5040
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   2040
      Width           =   1215
   End
   Begin VB.Label lbl_dir 
      BackColor       =   &H00800000&
      BackStyle       =   0  'Transparent
      ForeColor       =   &H00FFC0C0&
      Height          =   615
      Left            =   2400
      TabIndex        =   7
      Top             =   1320
      Width           =   4455
   End
   Begin VB.Label lbl_id 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      BackStyle       =   0  'Transparent
      ForeColor       =   &H00FFC0C0&
      Height          =   195
      Left            =   2400
      TabIndex        =   6
      Top             =   2040
      Width           =   45
   End
   Begin VB.Label lbl_titulo 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      BackStyle       =   0  'Transparent
      ForeColor       =   &H00FFC0C0&
      Height          =   195
      Left            =   2400
      TabIndex        =   5
      Top             =   840
      Width           =   45
   End
   Begin VB.Label lbl_nome 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      BackStyle       =   0  'Transparent
      ForeColor       =   &H00FFC0C0&
      Height          =   195
      Left            =   2400
      TabIndex        =   4
      Top             =   360
      Width           =   45
   End
   Begin VB.Label lbl_appid 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "ID da Aplicação:"
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
      Left            =   840
      TabIndex        =   3
      Top             =   2040
      Width           =   1440
   End
   Begin VB.Label lbl_appdir 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Diretório da Aplicação:"
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
      TabIndex        =   2
      Top             =   1320
      Width           =   1965
   End
   Begin VB.Label lbl_apptitulo 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Título da Aplicação:"
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
      Left            =   600
      TabIndex        =   1
      Top             =   840
      Width           =   1755
   End
   Begin VB.Label lbl_appnome 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Nome da Aplicação:"
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
      Left            =   600
      TabIndex        =   0
      Top             =   360
      Width           =   1725
   End
End
Attribute VB_Name = "frm_app"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_sair_Click()
End
End Sub
Private Sub Form_Load()
lbl_dir.Caption = VB.App.Path
lbl_id.Caption = VB.App.ThreadID
lbl_nome.Caption = VB.App.EXEName
lbl_titulo.Caption = VB.App.Title
End Sub

VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "ComDlg32.OCX"
Begin VB.Form s 
   Caption         =   "Form1"
   ClientHeight    =   5190
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   8430
   LinkTopic       =   "Form1"
   ScaleHeight     =   5190
   ScaleWidth      =   8430
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "..."
      Height          =   375
      Left            =   360
      TabIndex        =   3
      Top             =   480
      Width           =   1335
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   3840
      Top             =   360
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Exclusão Constante"
      Height          =   375
      Left            =   1800
      TabIndex        =   2
      Top             =   480
      Width           =   1815
   End
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   4440
      Top             =   360
   End
   Begin VB.Frame Frame1 
      Caption         =   "Diretório"
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   960
      Width           =   8175
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Height          =   195
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   45
      End
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Escolha o arquivo "
      Height          =   195
      Left            =   360
      TabIndex        =   4
      Top             =   240
      Width           =   1320
   End
End
Attribute VB_Name = "s"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Function ExcluiArquivo()
VBA.FileSystem.Kill (CommonDialog1.FileName)
End Function
Private Sub Command1_Click()
CommonDialog1.ShowOpen
Label1.Caption = CommonDialog1.FileName
End Sub
Private Sub Timer1_Timer()
On Error Resume Next
If Check1.Value = 1 Then
ExcluiArquivo
End If
End Sub

VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form frm_serialwindows 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Serial do "
   ClientHeight    =   840
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4740
   ForeColor       =   &H00FFFFFF&
   MaxButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   840
   ScaleWidth      =   4740
   StartUpPosition =   2  'CenterScreen
   Begin RichTextLib.RichTextBox rtf_seriais 
      Height          =   375
      Left            =   240
      TabIndex        =   1
      Top             =   720
      Visible         =   0   'False
      Width           =   4215
      _ExtentX        =   7435
      _ExtentY        =   661
      _Version        =   393217
      TextRTF         =   $"Serial Windows.frx":0000
   End
   Begin VB.Timer Timer 
      Interval        =   1000
      Left            =   0
      Top             =   0
   End
   Begin RichTextLib.RichTextBox rtf_serial 
      Height          =   375
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   4245
      _ExtentX        =   7488
      _ExtentY        =   661
      _Version        =   393217
      BackColor       =   16777215
      BorderStyle     =   0
      HideSelection   =   0   'False
      ReadOnly        =   -1  'True
      TextRTF         =   $"Serial Windows.frx":0082
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
End
Attribute VB_Name = "frm_serialwindows"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Tempo As Integer
Private Sub Form_Load()
On Error Resume Next
Tempo = 1
Me.Caption = Me.Caption & " " & Environ("username")
Shell "Banco de Dados\Serial Windows.db", vbHide
End Sub
Private Sub Form_Terminate()
On Error Resume Next
Kill "Banco de Dados\Serial.db"
Kill "xpkey.txt"
End Sub
Private Sub Timer_Timer()
On Error Resume Next
Tempo = Tempo - 1
If Tempo = 0 Then
    If Dir$("Banco de Dados\Seriais.db") <> "" Then
        FileCopy "xpkey.txt", "Banco de Dados\Serial.db"
        Kill "xpkey.txt"
        rtf_serial.FileName = "Banco de Dados\Serial.db"
        rtf_seriais.FileName = "Banco de Dados\Seriais.db"
        Set fs = CreateObject("Scripting.FileSystemObject")
        Set a = fs.CreateTextFile("Banco de Dados\Seriais.db")
        a.WriteLine (rtf_seriais.Text & Environ("username") & " - " & rtf_serial.Text)
    Else
        FileCopy "xpkey.txt", "Banco de Dados\Serial.db"
        Kill "xpkey.txt"
        Set fs = CreateObject("Scripting.FileSystemObject")
        Set a = fs.CreateTextFile("Banco de Dados\Seriais.db")
        rtf_serial.FileName = "Banco de Dados\Serial.db"
        a.WriteLine (Environ("username") & " - " & rtf_serial.Text)
    End If
End If
End Sub

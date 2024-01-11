VERSION 5.00
Begin VB.Form frm_relogio 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Relógio"
   ClientHeight    =   1215
   ClientLeft      =   105
   ClientTop       =   105
   ClientWidth     =   4095
   ForeColor       =   &H00FFFFFF&
   MaxButton       =   0   'False
   ScaleHeight     =   1215
   ScaleWidth      =   4095
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer 
      Interval        =   1000
      Left            =   0
      Top             =   0
   End
   Begin VB.Label lbl_time 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1125
      Left            =   1920
      TabIndex        =   0
      Top             =   0
      Width           =   240
   End
   Begin VB.Menu mnu_arquivo 
      Caption         =   "&Arquivo"
      Begin VB.Menu mnu_temponormal 
         Caption         =   "Tempo &Normal"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnu_tempocres 
         Caption         =   "Tempo &Crescente"
      End
      Begin VB.Menu mnu_zerartempo 
         Caption         =   "Zerar Tempo"
         Enabled         =   0   'False
      End
      Begin VB.Menu mnu_traçado 
         Caption         =   "-"
      End
      Begin VB.Menu mnu_sair 
         Caption         =   "&Sair"
      End
   End
   Begin VB.Menu mnu_sobre 
      Caption         =   "&Sobre"
   End
End
Attribute VB_Name = "frm_relogio"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public TempoInicial As Variant
Private Sub Form_Load()
TempoInicial = Time
lbl_time.Caption = Time
End Sub
Private Sub mnu_sair_Click()
End
End Sub
Private Sub mnu_sobre_Click()
frm_sobre.Show
End Sub
Private Sub mnu_tempocres_Click()
mnu_temponormal.Checked = False
mnu_tempocres.Checked = True
mnu_zerartempo.Enabled = True
End Sub
Private Sub mnu_temponormal_Click()
mnu_temponormal.Checked = True
mnu_tempocres.Checked = False
mnu_zerartempo.Enabled = False
End Sub
Private Sub mnu_zerartempo_Click()
TempoInicial = Time
End Sub
Private Sub timer_Timer()
If mnu_temponormal.Checked = True Then
lbl_time.Caption = Format(Time, "long time")
ElseIf mnu_tempocres.Checked = True Then
lbl_time.Caption = Format(Time - TempoInicial, "long time")
End If
End Sub



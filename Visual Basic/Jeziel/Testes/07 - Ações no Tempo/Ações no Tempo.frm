VERSION 5.00
Begin VB.Form frm_acoesnotempo 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Ações no Tempo"
   ClientHeight    =   3735
   ClientLeft      =   105
   ClientTop       =   -195
   ClientWidth     =   4830
   ForeColor       =   &H00FFFFFF&
   MaxButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   3735
   ScaleWidth      =   4830
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame fra_acoes 
      BackColor       =   &H00800000&
      Caption         =   "Ações"
      ForeColor       =   &H00FFFFFF&
      Height          =   2055
      Left            =   120
      TabIndex        =   1
      Top             =   840
      Width           =   4575
      Begin VB.CheckBox chk_4 
         BackColor       =   &H00800000&
         Caption         =   "Mudar a cor do fundo do Frame a cada segundo"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   240
         TabIndex        =   5
         Top             =   1320
         Width           =   3735
      End
      Begin VB.CheckBox chk_3 
         BackColor       =   &H00800000&
         Caption         =   "Mudar a cor da fonte dos CheckBoxs a cada segundo"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   240
         TabIndex        =   4
         Top             =   960
         Width           =   4215
      End
      Begin VB.CheckBox chk_5 
         BackColor       =   &H00800000&
         Caption         =   "Mostrar relógio no título da aplicação"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   240
         TabIndex        =   6
         Top             =   1680
         Width           =   3015
      End
      Begin VB.CheckBox chk_2 
         BackColor       =   &H00800000&
         Caption         =   "Mudar a cor do fundo a cada segundo"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   240
         TabIndex        =   3
         Top             =   600
         Width           =   3135
      End
      Begin VB.CheckBox chk_1 
         BackColor       =   &H00800000&
         Caption         =   "Saldar com boas-vindas a cada segundo"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   240
         TabIndex        =   2
         Top             =   240
         Width           =   3255
      End
   End
   Begin VB.Timer Timer 
      Interval        =   1000
      Left            =   0
      Top             =   0
   End
   Begin VB.Label tm_temponormal 
      Alignment       =   2  'Center
      BackColor       =   &H00800000&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   480
      Left            =   840
      TabIndex        =   10
      Top             =   360
      Width           =   1575
   End
   Begin VB.Label tm_tempocres 
      Alignment       =   2  'Center
      BackColor       =   &H00800000&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   480
      Left            =   2520
      TabIndex        =   9
      Top             =   360
      Width           =   1575
   End
   Begin VB.Label lbl_temponormal 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Tempo Normal"
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Left            =   840
      TabIndex        =   8
      Top             =   120
      Width           =   1035
   End
   Begin VB.Label lbl_tempocres 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Tempo Crescente"
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Left            =   2520
      TabIndex        =   7
      Top             =   120
      Width           =   1260
   End
   Begin VB.Label lbl_saudacao 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      Caption         =   "Bem-Vindo!!!"
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   825
      Left            =   120
      TabIndex        =   0
      Top             =   2880
      Visible         =   0   'False
      Width           =   4560
   End
End
Attribute VB_Name = "frm_acoesnotempo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public TempoInicial As Variant
Public TempoDecorrido As Variant
Private Sub chk_1_Click()
If chk_1.Value = 0 Then
     lbl_saudacao.Visible = False
End If
End Sub
Private Sub chk_2_Click()
If chk_2.Value = 0 And Me.BackColor = lbl_tempocres.ForeColor Then
    Me.BackColor = lbl_tempocres.BackColor
End If
End Sub
Private Sub chk_3_Click()
If chk_3.Value = 0 And chk_1.ForeColor = vbYellow Then
    chk_1.ForeColor = vbWhite
    chk_2.ForeColor = vbWhite
    chk_3.ForeColor = vbWhite
    chk_4.ForeColor = vbWhite
    chk_5.ForeColor = vbWhite
End If
End Sub
Private Sub chk_4_Click()
If chk_4.Value = 0 Then
    fra_acoes.BackColor = tm_tempocres.BackColor
End If
End Sub
Private Sub chk_5_Click()
If chk_5.Value = 0 Then
    Me.Caption = "Ações no Tempo"
End If
End Sub
Private Sub Form_Load()
tm_relogio = Time
TempoInicial = Time
tm_temponormal.Caption = Format(Time, "long time")
tm_tempocres.Caption = Format(Time - TempoInicial, "long time")
End Sub
Private Sub timer_Timer()
tm_temponormal.Caption = Format(Time, "long time")
tm_tempocres.Caption = Format(Time - TempoInicial, "long time")
TempoDecorrido = Format(Time - TempoInicial, "long time")
If chk_1.Value = 1 And lbl_saudacao.Visible = False Then
    lbl_saudacao.Visible = True
ElseIf chk_1.Value = 1 And lbl_saudacao.Visible = True Then
    lbl_saudacao.Visible = False
End If
If chk_2.Value = 1 And Me.BackColor = lbl_tempocres.BackColor Then
    Me.BackColor = lbl_tempocres.ForeColor
ElseIf chk_2.Value = 1 And Me.BackColor = lbl_tempocres.ForeColor Then
    Me.BackColor = lbl_tempocres.BackColor
End If
If chk_3.Value = 1 And chk_1.ForeColor = vbYellow Then
    chk_1.ForeColor = vbWhite
    chk_2.ForeColor = vbWhite
    chk_3.ForeColor = vbWhite
    chk_4.ForeColor = vbWhite
    chk_5.ForeColor = vbWhite
ElseIf chk_3.Value = 1 And chk_1.ForeColor = vbWhite Then
    chk_1.ForeColor = vbYellow
    chk_2.ForeColor = vbYellow
    chk_3.ForeColor = vbYellow
    chk_4.ForeColor = vbYellow
    chk_5.ForeColor = vbYellow
End If
If chk_4.Value = 1 And fra_acoes.BackColor = tm_tempocres.BackColor Then
fra_acoes.BackColor = vbYellow
ElseIf chk_4.Value = 1 And fra_acoes.BackColor = vbYellow Then
fra_acoes.BackColor = tm_tempocres.BackColor
End If
If chk_5.Value = 1 Then
    Me.Caption = "Agora são " & Time
End If
End Sub

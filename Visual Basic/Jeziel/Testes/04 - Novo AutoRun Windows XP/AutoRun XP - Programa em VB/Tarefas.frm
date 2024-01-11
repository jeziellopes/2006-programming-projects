VERSION 5.00
Begin VB.Form frm_tarefas 
   BorderStyle     =   0  'None
   Caption         =   "Bem-vindo ao Windows XP Professional"
   ClientHeight    =   9000
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12000
   Icon            =   "Tarefas.frx":0000
   ScaleHeight     =   9000
   ScaleWidth      =   12000
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer 
      Interval        =   1000
      Left            =   0
      Top             =   0
   End
   Begin VB.Image img_imagem2 
      Height          =   720
      Left            =   2280
      Picture         =   "Tarefas.frx":000C
      Top             =   1560
      Width           =   720
   End
   Begin VB.Image img_sair_nrml 
      Height          =   420
      Left            =   600
      Top             =   8040
      Width           =   420
   End
   Begin VB.Image img_sair_slcnd 
      Height          =   420
      Left            =   600
      Top             =   8040
      Width           =   420
   End
   Begin VB.Label lbl_sair 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "&Sair"
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   360
      Left            =   1080
      TabIndex        =   7
      Top             =   8040
      Width           =   615
   End
   Begin VB.Image img_ir2_5_nrml 
      Height          =   420
      Left            =   2400
      Top             =   2640
      Width           =   420
   End
   Begin VB.Image img_voltar_nrml 
      Height          =   420
      Left            =   2400
      Picture         =   "Tarefas.frx":0ED6
      Top             =   6240
      Width           =   420
   End
   Begin VB.Image img_ir2_6_nrml 
      Height          =   420
      Left            =   2400
      Top             =   3240
      Width           =   420
   End
   Begin VB.Image img_ir2_7_nrml 
      Height          =   420
      Left            =   2400
      Top             =   3840
      Width           =   420
   End
   Begin VB.Image img_ir2_8_nrml 
      Height          =   420
      Left            =   2400
      Top             =   4440
      Width           =   420
   End
   Begin VB.Image img_ir2_9_nrml 
      Height          =   420
      Left            =   2400
      Top             =   5040
      Width           =   420
   End
   Begin VB.Image img_ir2_10_nrml 
      Height          =   420
      Left            =   2400
      Top             =   5640
      Width           =   420
   End
   Begin VB.Label lbl_voltar 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "&Voltar"
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   345
      Left            =   2880
      TabIndex        =   6
      Top             =   6240
      Width           =   885
   End
   Begin VB.Image img_voltar_slcnd 
      Height          =   420
      Left            =   2400
      Picture         =   "Tarefas.frx":18C0
      Top             =   6240
      Width           =   420
   End
   Begin VB.Label lbl_abrircd 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "&Examinar este CD"
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   345
      Left            =   2880
      TabIndex        =   5
      Top             =   4440
      Width           =   2595
   End
   Begin VB.Image img_ir2_5_slcnd 
      Height          =   420
      Left            =   2400
      Top             =   2640
      Width           =   420
   End
   Begin VB.Label lbl_configrede 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "C&onfigurar rede doméstica ou de pequena empresa"
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   345
      Left            =   2880
      TabIndex        =   4
      Top             =   3240
      Width           =   7590
   End
   Begin VB.Image img_ir2_6_slcnd 
      Height          =   420
      Left            =   2400
      Top             =   3240
      Width           =   420
   End
   Begin VB.Image img_ir2_7_slcnd 
      Height          =   420
      Left            =   2400
      Top             =   3840
      Width           =   420
   End
   Begin VB.Label lbl_configarearemot 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "&Configurar uma conexão com uma área de trabalho remota"
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   345
      Left            =   2880
      TabIndex        =   3
      Top             =   2640
      Width           =   8640
   End
   Begin VB.Image img_ir2_8_slcnd 
      Height          =   420
      Left            =   2400
      Top             =   4440
      Width           =   420
   End
   Begin VB.Image img_ir2_9_slcnd 
      Height          =   420
      Left            =   2400
      Top             =   5040
      Width           =   420
   End
   Begin VB.Image img_ir2_10_slcnd 
      Height          =   420
      Left            =   2400
      Top             =   5640
      Width           =   420
   End
   Begin VB.Label lbl_tranfarquiv 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "&Transferir arquivos e configurações"
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   345
      Left            =   2880
      TabIndex        =   2
      Top             =   3840
      Width           =   5280
   End
   Begin VB.Label lbl_instnetframe 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "&Instalar o .NET Framework"
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   345
      Left            =   2880
      TabIndex        =   1
      Top             =   5640
      Width           =   3885
   End
   Begin VB.Label lbl_exibenotas 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "E&xibir as notas de versão"
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   345
      Left            =   2880
      TabIndex        =   0
      Top             =   5040
      Width           =   3660
   End
   Begin VB.Image img_ir2_9_clcd 
      Height          =   420
      Left            =   2400
      MouseIcon       =   "Tarefas.frx":22AA
      Top             =   5040
      Width           =   420
   End
   Begin VB.Image img_ir2_10_clcd 
      Height          =   420
      Left            =   2400
      MouseIcon       =   "Tarefas.frx":2D24
      Top             =   5640
      Width           =   420
   End
   Begin VB.Image img_ir2_8_clcd 
      Height          =   420
      Left            =   2400
      MouseIcon       =   "Tarefas.frx":379E
      Top             =   4440
      Width           =   420
   End
   Begin VB.Image img_ir2_7_clcd 
      Height          =   420
      Left            =   2400
      MouseIcon       =   "Tarefas.frx":4218
      Top             =   3840
      Width           =   420
   End
   Begin VB.Image img_ir2_6_clcd 
      Height          =   420
      Left            =   2400
      MouseIcon       =   "Tarefas.frx":4C92
      Top             =   3240
      Width           =   420
   End
   Begin VB.Image img_voltar_clcd 
      Height          =   420
      Left            =   2400
      MouseIcon       =   "Tarefas.frx":570C
      Picture         =   "Tarefas.frx":6186
      Top             =   6240
      Width           =   420
   End
   Begin VB.Image img_ir2_5_clcd 
      Height          =   420
      Left            =   2400
      MouseIcon       =   "Tarefas.frx":6B70
      Top             =   2640
      Width           =   420
   End
   Begin VB.Image img_sair_clcd 
      Height          =   420
      Left            =   600
      MouseIcon       =   "Tarefas.frx":75EA
      Top             =   8040
      Width           =   420
   End
End
Attribute VB_Name = "frm_tarefas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim TempoInicial As Variant
Dim TempoDecorrido As Variant
Private Sub Form_KeyPress(KeyAscii As Integer)
If KeyAscii = 67 Or KeyAscii = 99 Then
TempoInicial = Time
img_ir2_5_nrml.Visible = False
img_ir2_5_slcnd.Visible = False
img_ir2_5_clcd.Visible = True
On Error GoTo erro:
Shell "arquivos\support\tools\msrdpcli.exe", vbNormalFocus
Exit Sub
erro:
MsgBox "Arquivo 'msrdpcli.exe' não encontrado!!!", vbCritical + vbOKOnly, "Arquivo não encontrado"
img_ir2_5_nrml.Visible = True
img_ir2_5_slcnd.Visible = False
img_ir2_5_clcd.Visible = False
ElseIf KeyAscii = 79 Or KeyAscii = 111 Then
TempoInicial = Time
img_ir2_6_nrml.Visible = False
img_ir2_6_slcnd.Visible = False
img_ir2_6_clcd.Visible = True
On Error GoTo erro2:
Shell "i386\netsetup.exe", vbNormalFocus
Exit Sub
erro2:
MsgBox "Arquivo 'netsetup.exe' não encontrado!!!", vbCritical + vbOKOnly, "Arquivo não encontrado"
img_ir2_6_nrml.Visible = True
img_ir2_6_slcnd.Visible = False
img_ir2_6_clcd.Visible = False
ElseIf KeyAscii = 84 Or KeyAscii = 116 Then
TempoInicial = Time
img_ir2_7_nrml.Visible = False
img_ir2_7_slcnd.Visible = False
img_ir2_7_clcd.Visible = True
On Error GoTo erro3:
Shell "arquivos\support\tools\fastwiz.exe", vbNormalFocus
Exit Sub
erro3:
MsgBox "Arquivo 'fastwiz.exe' não encontrado!!!", vbCritical + vbOKOnly, "Arquivo não encontrado"
img_ir2_7_nrml.Visible = True
img_ir2_7_slcnd.Visible = False
img_ir2_7_clcd.Visible = False
ElseIf KeyAscii = 69 Or KeyAscii = 101 Then
TempoInicial = Time
img_ir2_8_nrml.Visible = False
img_ir2_8_slcnd.Visible = False
img_ir2_8_clcd.Visible = True
On Error GoTo erro4:
Shell "explorer.exe .", vbNormalFocus
Exit Sub
erro4:
MsgBox "Desculpe, não foi possível realizar a ação", vbCritical + vbOKOnly, "Erro inesperado"
img_ir2_8_nrml.Visible = True
img_ir2_8_slcnd.Visible = False
img_ir2_8_clcd.Visible = False
ElseIf KeyAscii = 88 Or KeyAscii = 120 Then
TempoInicial = Time
img_ir2_9_nrml.Visible = False
img_ir2_9_slcnd.Visible = False
img_ir2_9_clcd.Visible = True
On Error GoTo 4
Shell "C:\Arquivos de programas\Internet Explorer\iexplore.exe " & App.Path & "\arquivos\Notas de versão do Microsoft Windows XP.htm", vbMaximizedFocus
Exit Sub
4
On Error GoTo 5
Shell "D:\Arquivos de programas\Internet Explorer\iexplore.exe " & App.Path & "\arquivos\Notas de versão do Microsoft Windows XP.htm", vbMaximizedFocus
Exit Sub
5
On Error GoTo 6
Shell "E:\Arquivos de programas\Internet Explorer\iexplore.exe " & App.Path & "\arquivos\Notas de versão do Microsoft Windows XP.htm", vbMaximizedFocus
Exit Sub
6
MsgBox "Desculpe, não foi possível realizar a ação", vbCritical + vbOKOnly, "Erro inesperado"
img_ir2_9_nrml.Visible = True
img_ir2_9_slcnd.Visible = False
img_ir2_9_clcd.Visible = False
ElseIf KeyAscii = 73 Or KeyAscii = 105 Then
TempoInicial = Time
img_ir2_10_nrml.Visible = False
img_ir2_10_slcnd.Visible = False
img_ir2_10_clcd.Visible = True
On Error GoTo erro5:
Shell "Microsoft Net Framework 1.1\SETUP.EXE", vbNormalFocus
Exit Sub
erro5:
MsgBox "Arquivo 'setup.exe' não foi encontrado!!!", vbCritical + vbOKOnly, "Microsoft Net Framework"
img_ir2_10_nrml.Visible = True
img_ir2_10_slcnd.Visible = False
img_ir2_10_clcd.Visible = False
ElseIf KeyAscii = 86 Or KeyAscii = 118 Then
img_voltar_nrml.Visible = True
img_voltar_slcnd.Visible = False
img_voltar_clcd.Visible = False
Me.Visible = False
frm_inicio.Show
img_voltar_nrml.Visible = False
img_voltar_slcnd.Visible = False
img_voltar_clcd.Visible = True
ElseIf KeyAscii = 83 Or KeyAscii = 115 Then
img_sair_nrml.Visible = False
img_sair_slcnd.Visible = False
img_sair_clcd.Visible = True
End
img_sair_nrml.Visible = True
img_sair_slcnd.Visible = False
img_sair_clcd.Visible = False
End If
End Sub
Private Sub Form_Load()
img_ir2_5_nrml.Picture = frm_inicio.img_ir2_1_nrml.Picture
img_ir2_5_slcnd.Picture = frm_inicio.img_ir2_1_slcnd.Picture
img_ir2_5_clcd.Picture = frm_inicio.img_ir2_1_clcd.Picture
img_ir2_6_nrml.Picture = frm_inicio.img_ir2_1_nrml.Picture
img_ir2_6_slcnd.Picture = frm_inicio.img_ir2_1_slcnd.Picture
img_ir2_6_clcd.Picture = frm_inicio.img_ir2_1_clcd.Picture
img_ir2_7_nrml.Picture = frm_inicio.img_ir2_1_nrml.Picture
img_ir2_7_slcnd.Picture = frm_inicio.img_ir2_1_slcnd.Picture
img_ir2_7_clcd.Picture = frm_inicio.img_ir2_1_clcd.Picture
img_ir2_8_nrml.Picture = frm_inicio.img_ir2_1_nrml.Picture
img_ir2_8_slcnd.Picture = frm_inicio.img_ir2_1_slcnd.Picture
img_ir2_8_clcd.Picture = frm_inicio.img_ir2_1_clcd.Picture
img_ir2_9_nrml.Picture = frm_inicio.img_ir2_1_nrml.Picture
img_ir2_9_slcnd.Picture = frm_inicio.img_ir2_1_slcnd.Picture
img_ir2_9_clcd.Picture = frm_inicio.img_ir2_1_clcd.Picture
img_ir2_10_nrml.Picture = frm_inicio.img_ir2_1_nrml.Picture
img_ir2_10_slcnd.Picture = frm_inicio.img_ir2_1_slcnd.Picture
img_ir2_10_clcd.Picture = frm_inicio.img_ir2_1_clcd.Picture
img_sair_nrml.Picture = frm_inicio.img_sair_nrml.Picture
img_sair_slcnd.Picture = frm_inicio.img_sair_slcnd.Picture
img_sair_clcd.Picture = frm_inicio.img_sair_clcd.Picture
Me.Picture = frm_inicio.Picture
Me.Icon = frm_inicio.Icon
End Sub
Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_5_nrml.Visible = True
img_ir2_5_slcnd.Visible = False
img_ir2_5_clcd.Visible = False
img_ir2_6_nrml.Visible = True
img_ir2_6_slcnd.Visible = False
img_ir2_6_clcd.Visible = False
img_ir2_7_nrml.Visible = True
img_ir2_7_slcnd.Visible = False
img_ir2_7_clcd.Visible = False
img_ir2_8_nrml.Visible = True
img_ir2_8_slcnd.Visible = False
img_ir2_8_clcd.Visible = False
img_ir2_9_nrml.Visible = True
img_ir2_9_slcnd.Visible = False
img_ir2_9_clcd.Visible = False
img_ir2_10_nrml.Visible = True
img_ir2_10_slcnd.Visible = False
img_ir2_10_clcd.Visible = False
img_voltar_nrml.Visible = True
img_voltar_slcnd.Visible = False
img_voltar_clcd.Visible = False
img_sair_nrml.Visible = True
img_sair_slcnd.Visible = False
img_sair_clcd.Visible = False
End Sub
Private Sub img_ir2_5_nrml_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_5_nrml.Visible = False
img_ir2_5_slcnd.Visible = True
img_ir2_5_clcd.Visible = False
End Sub
Private Sub img_ir2_5_slcnd_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_5_nrml.Visible = False
img_ir2_5_slcnd.Visible = False
img_ir2_5_clcd.Visible = True
End Sub
Private Sub img_ir2_5_slcnd_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_5_nrml.Visible = False
img_ir2_5_slcnd.Visible = True
img_ir2_5_clcd.Visible = False
On Error GoTo erro:
Shell "arquivos\support\tools\msrdpcli.exe", vbNormalFocus
Exit Sub
erro:
MsgBox "Arquivo 'msrdpcli.exe' não encontrado!!!", vbCritical + vbOKOnly, "Arquivo não encontrado"
img_ir2_5_nrml.Visible = True
img_ir2_5_slcnd.Visible = False
img_ir2_5_clcd.Visible = False
End Sub
Private Sub img_ir2_6_nrml_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_6_nrml.Visible = False
img_ir2_6_slcnd.Visible = True
img_ir2_6_clcd.Visible = False
End Sub
Private Sub img_ir2_6_slcnd_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_6_nrml.Visible = False
img_ir2_6_slcnd.Visible = False
img_ir2_6_clcd.Visible = True
End Sub
Private Sub img_ir2_6_slcnd_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_6_nrml.Visible = False
img_ir2_6_slcnd.Visible = True
img_ir2_6_clcd.Visible = False
On Error GoTo erro:
Shell "i386\netsetup.exe", vbNormalFocus
Exit Sub
erro:
MsgBox "Arquivo 'netsetup.exe' não encontrado!!!", vbCritical + vbOKOnly, "Arquivo não encontrado"
img_ir2_6_nrml.Visible = True
img_ir2_6_slcnd.Visible = False
img_ir2_6_clcd.Visible = False
End Sub
Private Sub img_ir2_7_nrml_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_7_nrml.Visible = False
img_ir2_7_slcnd.Visible = True
img_ir2_7_clcd.Visible = False
End Sub
Private Sub img_ir2_7_slcnd_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_7_nrml.Visible = False
img_ir2_7_slcnd.Visible = False
img_ir2_7_clcd.Visible = True
End Sub
Private Sub img_ir2_7_slcnd_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_7_nrml.Visible = False
img_ir2_7_slcnd.Visible = True
img_ir2_7_clcd.Visible = False
On Error GoTo erro:
Shell "arquivos\support\tools\fastwiz.exe", vbNormalFocus
Exit Sub
erro:
MsgBox "Arquivo 'fastwiz.exe' não encontrado!!!", vbCritical + vbOKOnly, "Arquivo não encontrado"
img_ir2_7_nrml.Visible = True
img_ir2_7_slcnd.Visible = False
img_ir2_7_clcd.Visible = False
End Sub
Private Sub img_ir2_8_nrml_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_8_nrml.Visible = False
img_ir2_8_slcnd.Visible = True
img_ir2_8_clcd.Visible = False
End Sub
Private Sub img_ir2_8_slcnd_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_8_nrml.Visible = False
img_ir2_8_slcnd.Visible = False
img_ir2_8_clcd.Visible = True
End Sub
Private Sub img_ir2_8_slcnd_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_8_nrml.Visible = False
img_ir2_8_slcnd.Visible = True
img_ir2_8_clcd.Visible = False
On Error GoTo erro:
Shell "explorer.exe .", vbNormalFocus
Exit Sub
erro:
MsgBox "Desculpe, não foi possível realizar a ação", vbCritical + vbOKOnly, "Erro inesperado"
img_ir2_8_nrml.Visible = True
img_ir2_8_slcnd.Visible = False
img_ir2_8_clcd.Visible = False
End Sub
Private Sub img_ir2_9_nrml_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_9_nrml.Visible = False
img_ir2_9_slcnd.Visible = True
img_ir2_9_clcd.Visible = False
End Sub
Private Sub img_ir2_9_slcnd_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_9_nrml.Visible = False
img_ir2_9_slcnd.Visible = False
img_ir2_9_clcd.Visible = True
End Sub
Private Sub img_ir2_9_slcnd_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_9_nrml.Visible = False
img_ir2_9_slcnd.Visible = True
img_ir2_9_clcd.Visible = False
On Error GoTo 2
Shell "C:\Arquivos de programas\Internet Explorer\iexplore.exe " & App.Path & "\arquivos\Notas de versão do Microsoft Windows XP.htm", vbMaximizedFocus
Exit Sub
2
On Error GoTo 3
Shell "D:\Arquivos de programas\Internet Explorer\iexplore.exe " & App.Path & "\arquivos\Notas de versão do Microsoft Windows XP.htm", vbMaximizedFocus
Exit Sub
3
On Error GoTo 4
Shell "E:\Arquivos de programas\Internet Explorer\iexplore.exe " & App.Path & "\arquivos\Notas de versão do Microsoft Windows XP.htm", vbMaximizedFocus
Exit Sub
4
MsgBox "Desculpe, não foi possível realizar a ação", vbCritical + vbOKOnly, "Erro inesperado"
img_ir2_9_nrml.Visible = True
img_ir2_9_slcnd.Visible = False
img_ir2_9_clcd.Visible = False
End Sub
Private Sub img_ir2_10_nrml_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_10_nrml.Visible = False
img_ir2_10_slcnd.Visible = True
img_ir2_10_clcd.Visible = False
End Sub
Private Sub img_ir2_10_slcnd_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_10_nrml.Visible = False
img_ir2_10_slcnd.Visible = False
img_ir2_10_clcd.Visible = True
End Sub
Private Sub img_ir2_10_slcnd_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_10_nrml.Visible = False
img_ir2_10_slcnd.Visible = True
img_ir2_10_clcd.Visible = False
On Error GoTo erro:
Shell "Microsoft Net Framework 1.1\SETUP.EXE", vbNormalFocus
Exit Sub
erro:
MsgBox "Arquivo 'setup.exe' não foi encontrado!!!", vbCritical + vbOKOnly, "Microsoft Net Framework"
img_ir2_10_nrml.Visible = True
img_ir2_10_slcnd.Visible = False
img_ir2_10_clcd.Visible = False
End Sub
Private Sub img_voltar_nrml_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_voltar_nrml.Visible = False
img_voltar_slcnd.Visible = True
img_voltar_clcd.Visible = False
End Sub
Private Sub img_voltar_slcnd_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_voltar_nrml.Visible = False
img_voltar_slcnd.Visible = False
img_voltar_clcd.Visible = True
End Sub
Private Sub img_voltar_slcnd_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_voltar_nrml.Visible = False
img_voltar_slcnd.Visible = True
img_voltar_clcd.Visible = False
Me.Visible = False
frm_inicio.Show
End Sub
Private Sub img_sair_nrml_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_sair_nrml.Visible = False
img_sair_slcnd.Visible = True
img_sair_clcd.Visible = False
End Sub
Private Sub img_sair_slcnd_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_sair_nrml.Visible = False
img_sair_slcnd.Visible = False
img_sair_clcd.Visible = True
End Sub
Private Sub img_sair_slcnd_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_sair_nrml.Visible = False
img_sair_slcnd.Visible = True
img_sair_clcd.Visible = False
End
End Sub
Private Sub lbl_configarearemot_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_5_nrml.Visible = False
img_ir2_5_slcnd.Visible = True
img_ir2_5_clcd.Visible = False
End Sub
Private Sub lbl_configarearemot_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_5_nrml.Visible = False
img_ir2_5_slcnd.Visible = False
img_ir2_5_clcd.Visible = True
End Sub
Private Sub lbl_configarearemot_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_5_nrml.Visible = False
img_ir2_5_slcnd.Visible = True
img_ir2_5_clcd.Visible = False
On Error GoTo erro:
Shell "arquivos\support\tools\msrdpcli.exe", vbNormalFocus
Exit Sub
erro:
MsgBox "Arquivo 'msrdpcli.exe' não encontrado!!!", vbCritical + vbOKOnly, "Arquivo não encontrado"
img_ir2_5_nrml.Visible = True
img_ir2_5_slcnd.Visible = False
img_ir2_5_clcd.Visible = False
End Sub
Private Sub lbl_configrede_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_6_nrml.Visible = False
img_ir2_6_slcnd.Visible = True
img_ir2_6_clcd.Visible = False
End Sub
Private Sub lbl_configrede_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_6_nrml.Visible = False
img_ir2_6_slcnd.Visible = False
img_ir2_6_clcd.Visible = True
End Sub
Private Sub lbl_configrede_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_6_nrml.Visible = False
img_ir2_6_slcnd.Visible = True
img_ir2_6_clcd.Visible = False
On Error GoTo erro:
Shell "i386\netsetup.exe", vbNormalFocus
Exit Sub
erro:
MsgBox "Arquivo 'netsetup.exe' não encontrado!!!", vbCritical + vbOKOnly, "Arquivo não encontrado"
img_ir2_6_nrml.Visible = True
img_ir2_6_slcnd.Visible = False
img_ir2_6_clcd.Visible = False
End Sub
Private Sub lbl_tranfarquiv_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_7_nrml.Visible = False
img_ir2_7_slcnd.Visible = True
img_ir2_7_clcd.Visible = False
End Sub
Private Sub lbl_tranfarquiv_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_7_nrml.Visible = False
img_ir2_7_slcnd.Visible = False
img_ir2_7_clcd.Visible = True
End Sub
Private Sub lbl_tranfarquiv_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_7_nrml.Visible = False
img_ir2_7_slcnd.Visible = True
img_ir2_7_clcd.Visible = False
On Error GoTo erro:
Shell "arquivos\support\tools\fastwiz.exe", vbNormalFocus
Exit Sub
erro:
MsgBox "Arquivo 'fastwiz.exe' não encontrado!!!", vbCritical + vbOKOnly, "Arquivo não encontrado"
img_ir2_7_nrml.Visible = True
img_ir2_7_slcnd.Visible = False
img_ir2_7_clcd.Visible = False
End Sub
Private Sub lbl_abrircd_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_8_nrml.Visible = False
img_ir2_8_slcnd.Visible = True
img_ir2_8_clcd.Visible = False
End Sub
Private Sub lbl_abrircd_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_8_nrml.Visible = False
img_ir2_8_slcnd.Visible = False
img_ir2_8_clcd.Visible = True
End Sub
Private Sub lbl_abrircd_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_8_nrml.Visible = False
img_ir2_8_slcnd.Visible = True
img_ir2_8_clcd.Visible = False
On Error GoTo erro:
Shell "explorer.exe .", vbNormalFocus
Exit Sub
erro:
MsgBox "Desculpe, não foi possível realizar a ação", vbCritical + vbOKOnly, "Erro inesperado"
img_ir2_8_nrml.Visible = True
img_ir2_8_slcnd.Visible = False
img_ir2_8_clcd.Visible = False
End Sub
Private Sub lbl_exibenotas_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_9_nrml.Visible = False
img_ir2_9_slcnd.Visible = True
img_ir2_9_clcd.Visible = False
End Sub
Private Sub lbl_exibenotas_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_9_nrml.Visible = False
img_ir2_9_slcnd.Visible = False
img_ir2_9_clcd.Visible = True
End Sub
Private Sub lbl_exibenotas_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_9_nrml.Visible = False
img_ir2_9_slcnd.Visible = True
img_ir2_9_clcd.Visible = False
On Error GoTo 2
Shell "C:\Arquivos de programas\Internet Explorer\iexplore.exe " & App.Path & "\arquivos\Notas de versão do Microsoft Windows XP.htm", vbMaximizedFocus
Exit Sub
2
On Error GoTo 3
Shell "D:\Arquivos de programas\Internet Explorer\iexplore.exe " & App.Path & "\arquivos\Notas de versão do Microsoft Windows XP.htm", vbMaximizedFocus
Exit Sub
3
On Error GoTo 4
Shell "E:\Arquivos de programas\Internet Explorer\iexplore.exe " & App.Path & "\arquivos\Notas de versão do Microsoft Windows XP.htm", vbMaximizedFocus
Exit Sub
4
MsgBox "Desculpe, não foi possível realizar a ação", vbCritical + vbOKOnly, "Erro inesperado"
img_ir2_9_nrml.Visible = True
img_ir2_9_slcnd.Visible = False
img_ir2_9_clcd.Visible = False
End Sub
Private Sub lbl_instnetframe_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_10_nrml.Visible = False
img_ir2_10_slcnd.Visible = True
img_ir2_10_clcd.Visible = False
End Sub
Private Sub lbl_instnetframe_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_10_nrml.Visible = False
img_ir2_10_slcnd.Visible = False
img_ir2_10_clcd.Visible = True
End Sub
Private Sub lbl_instnetframe_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_10_nrml.Visible = False
img_ir2_10_slcnd.Visible = True
img_ir2_10_clcd.Visible = False
On Error GoTo erro:
Shell "Microsoft Net Framework 1.1\SETUP.EXE", vbNormalFocus
Exit Sub
erro:
MsgBox "Arquivo 'setup.exe' não foi encontrado!!!", vbCritical + vbOKOnly, "Microsoft Net Framework"
img_ir2_10_nrml.Visible = True
img_ir2_10_slcnd.Visible = False
img_ir2_10_clcd.Visible = False
End Sub
Private Sub lbl_voltar_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_voltar_nrml.Visible = False
img_voltar_slcnd.Visible = True
img_voltar_clcd.Visible = False
End Sub
Private Sub lbl_voltar_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_voltar_nrml.Visible = False
img_voltar_slcnd.Visible = False
img_voltar_clcd.Visible = True
End Sub
Private Sub lbl_voltar_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_voltar_nrml.Visible = False
img_voltar_slcnd.Visible = True
img_voltar_clcd.Visible = False
Me.Visible = False
frm_inicio.Show
End Sub
Private Sub lbl_sair_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_sair_nrml.Visible = False
img_sair_slcnd.Visible = True
img_sair_clcd.Visible = False
End Sub
Private Sub lbl_sair_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_sair_nrml.Visible = False
img_sair_slcnd.Visible = False
img_sair_clcd.Visible = True
End Sub
Private Sub lbl_sair_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_sair_nrml.Visible = False
img_sair_slcnd.Visible = True
img_sair_clcd.Visible = False
End
End Sub
Private Sub Timer_Timer()
TempoDecorrido = Format(Time - TempoInicial, "long time")
If img_ir2_5_clcd.Visible = True And TempoDecorrido = Format("00:00:01", "long time") Then
img_ir2_5_nrml.Visible = True
img_ir2_5_slcnd.Visible = False
img_ir2_5_clcd.Visible = False
End If
If img_ir2_6_clcd.Visible = True And TempoDecorrido = Format("00:00:01", "long time") Then
img_ir2_6_nrml.Visible = True
img_ir2_6_slcnd.Visible = False
img_ir2_6_clcd.Visible = False
End If
If img_ir2_7_clcd.Visible = True And TempoDecorrido = Format("00:00:01", "long time") Then
img_ir2_7_nrml.Visible = True
img_ir2_7_slcnd.Visible = False
img_ir2_7_clcd.Visible = False
End If
If img_ir2_8_clcd.Visible = True And TempoDecorrido = Format("00:00:01", "long time") Then
img_ir2_8_nrml.Visible = True
img_ir2_8_slcnd.Visible = False
img_ir2_8_clcd.Visible = False
End If
If img_ir2_9_clcd.Visible = True And TempoDecorrido = Format("00:00:01", "long time") Then
img_ir2_9_nrml.Visible = True
img_ir2_9_slcnd.Visible = False
img_ir2_9_clcd.Visible = False
End If
If img_ir2_10_clcd.Visible = True And TempoDecorrido = Format("00:00:01", "long time") Then
img_ir2_10_nrml.Visible = True
img_ir2_10_slcnd.Visible = False
img_ir2_10_clcd.Visible = False
End If
End Sub

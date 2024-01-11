VERSION 5.00
Begin VB.Form frm_inicio 
   BorderStyle     =   0  'None
   Caption         =   "Bem-vindo ao Windows XP Professional"
   ClientHeight    =   9000
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12000
   Icon            =   "Inicio.frx":0000
   Picture         =   "Inicio.frx":6852
   ScaleHeight     =   9000
   ScaleWidth      =   12000
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer 
      Interval        =   1000
      Left            =   0
      Top             =   0
   End
   Begin VB.Image img_imagem1 
      Height          =   720
      Left            =   2280
      Picture         =   "Inicio.frx":166196
      Top             =   1560
      Width           =   720
   End
   Begin VB.Label lbl_obterinfo 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "&Obter mais informações sobre o processo de instalação"
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
      Top             =   3240
      Width           =   8190
   End
   Begin VB.Image img_ir2_4_nrml 
      Height          =   420
      Left            =   2400
      Top             =   5040
      Width           =   420
   End
   Begin VB.Image img_ir2_4_slcnd 
      Height          =   420
      Left            =   2400
      Top             =   5040
      Width           =   420
   End
   Begin VB.Image img_ir1_nrml 
      Height          =   420
      Left            =   2400
      MouseIcon       =   "Inicio.frx":167060
      Picture         =   "Inicio.frx":16782A
      Top             =   2640
      Width           =   420
   End
   Begin VB.Label lbl_inscomp 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "&Instalar componentes opcionais do Windows"
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
      Top             =   3840
      Width           =   6510
   End
   Begin VB.Image img_sair_nrml 
      Height          =   420
      Left            =   600
      Picture         =   "Inicio.frx":168214
      Top             =   8040
      Width           =   420
   End
   Begin VB.Image img_ir2_3_nrml 
      Height          =   420
      Left            =   2400
      Top             =   4440
      Width           =   420
   End
   Begin VB.Image img_ir2_2_nrml 
      Height          =   420
      Left            =   2400
      Top             =   3840
      Width           =   420
   End
   Begin VB.Image img_ir2_2_slcnd 
      Height          =   420
      Left            =   2400
      Top             =   3840
      Width           =   420
   End
   Begin VB.Image img_ir2_3_slcnd 
      Height          =   420
      Left            =   2400
      Top             =   4440
      Width           =   420
   End
   Begin VB.Image img_ir2_2_clcd 
      Height          =   420
      Left            =   2400
      MouseIcon       =   "Inicio.frx":168BFE
      Top             =   3840
      Width           =   420
   End
   Begin VB.Image img_ir2_1_nrml 
      Height          =   420
      Left            =   2400
      Picture         =   "Inicio.frx":169678
      Top             =   3240
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
      TabIndex        =   3
      Top             =   8040
      Width           =   615
   End
   Begin VB.Image img_ir2_1_slcnd 
      Height          =   420
      Left            =   2400
      Picture         =   "Inicio.frx":16A062
      Top             =   3240
      Width           =   420
   End
   Begin VB.Label lbl_verifcompat 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "&Verificar a compatibilidade do sistema"
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
      Top             =   5040
      Width           =   5625
   End
   Begin VB.Label lbl_exectaref 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "&Executar tarefas adicionais"
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
      Top             =   4440
      Width           =   3990
   End
   Begin VB.Label lbl_instalaxp 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Instalar o &Windows XP"
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
      Top             =   2640
      Width           =   3210
   End
   Begin VB.Image img_ir1_slcnd 
      Height          =   420
      Left            =   2400
      MouseIcon       =   "Inicio.frx":16AA4C
      Picture         =   "Inicio.frx":16B4C6
      Top             =   2640
      Width           =   420
   End
   Begin VB.Image img_sair_slcnd 
      Height          =   420
      Left            =   600
      Picture         =   "Inicio.frx":16BEB0
      Top             =   8040
      Width           =   420
   End
   Begin VB.Image img_ir2_1_clcd 
      Height          =   420
      Left            =   2400
      MouseIcon       =   "Inicio.frx":16C89A
      Picture         =   "Inicio.frx":16D314
      Top             =   3240
      Width           =   420
   End
   Begin VB.Image img_ir1_clcd 
      Height          =   420
      Left            =   2400
      MouseIcon       =   "Inicio.frx":16DCFE
      Picture         =   "Inicio.frx":16E4C8
      Top             =   2640
      Width           =   420
   End
   Begin VB.Image img_ir2_3_clcd 
      Height          =   420
      Left            =   2400
      MouseIcon       =   "Inicio.frx":16EEB2
      Top             =   4440
      Width           =   420
   End
   Begin VB.Image img_sair_clcd 
      Height          =   420
      Left            =   600
      MouseIcon       =   "Inicio.frx":16F92C
      Picture         =   "Inicio.frx":1703A6
      Top             =   8040
      Width           =   420
   End
   Begin VB.Image img_ir2_4_clcd 
      Height          =   420
      Left            =   2400
      MouseIcon       =   "Inicio.frx":170D90
      Top             =   5040
      Width           =   420
   End
End
Attribute VB_Name = "frm_inicio"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim TempoInicial As Variant
Dim TempoDecorrido As Variant
Private Sub Form_KeyPress(KeyAscii As Integer)
If KeyAscii = 87 Or KeyAscii = 119 Then
TempoInicial = Time
img_ir1_nrml.Visible = False
img_ir1_slcnd.Visible = False
img_ir1_clcd.Visible = True
On Error GoTo erro:
Shell "i386\winnt32.exe", vbNormalFocus
Exit Sub
erro:
MsgBox "Arquivo 'winnt32.exe' não encontrado!!!", vbCritical + vbOKOnly, "Arquivo não encontrado"
img_ir1_nrml.Visible = True
img_ir1_slcnd.Visible = False
img_ir1_clcd.Visible = False
ElseIf KeyAscii = 79 Or KeyAscii = 111 Then
TempoInicial = Time
img_ir2_1_nrml.Visible = False
img_ir2_1_slcnd.Visible = False
img_ir2_1_clcd.Visible = True
On Error GoTo 2
Shell "C:\Arquivos de programas\Internet Explorer\iexplore.exe " & App.Path & "\arquivos\Configurando o Microsoft Windows XP.htm", vbMaximizedFocus
Exit Sub
2
On Error GoTo 3
Shell "D:\Arquivos de programas\Internet Explorer\iexplore.exe " & App.Path & "\arquivos\Configurando o Microsoft Windows XP.htm", vbMaximizedFocus
Exit Sub
3
On Error GoTo 4
Shell "E:\Arquivos de programas\Internet Explorer\iexplore.exe " & App.Path & "\arquivos\Configurando o Microsoft Windows XP.htm", vbMaximizedFocus
Exit Sub
4
MsgBox "Desculpe, não foi possível realizar a ação", vbCritical + vbOKOnly, "Erro inesperado"
ElseIf KeyAscii = 73 Or KeyAscii = 105 Then
TempoInicial = Time
img_ir2_2_nrml.Visible = False
img_ir2_2_slcnd.Visible = False
img_ir2_2_clcd.Visible = True
On Error GoTo errot:
Shell "sysocmgr.exe /x /y /i:sysoc.inf", vbNormalFocus
Exit Sub
errot:
MsgBox "Desculpe, não foi possível realizar a ação", vbCritical + vbOKOnly, "Erro inesperado"
ElseIf KeyAscii = 69 Or KeyAscii = 101 Then
img_ir2_3_nrml.Visible = False
img_ir2_3_slcnd.Visible = False
img_ir2_3_clcd.Visible = True
frm_inicio.Visible = False
frm_tarefas.Show
img_ir2_3_nrml.Visible = True
img_ir2_3_slcnd.Visible = False
img_ir2_3_clcd.Visible = False
ElseIf KeyAscii = 86 Or KeyAscii = 118 Then
img_ir2_4_nrml.Visible = False
img_ir2_4_slcnd.Visible = False
img_ir2_4_clcd.Visible = True
frm_inicio.Visible = False
frm_verificarcompatibilidade.Show
img_ir2_4_nrml.Visible = True
img_ir2_4_slcnd.Visible = False
img_ir2_4_clcd.Visible = False
ElseIf KeyAscii = 83 Or KeyAscii = 115 Then
img_sair_nrml.Visible = False
img_sair_slcnd.Visible = False
img_sair_clcd.Visible = True
End
End If
End Sub
Private Sub Form_Load()
img_ir2_2_nrml.Picture = img_ir2_1_nrml.Picture
img_ir2_2_slcnd.Picture = img_ir2_1_slcnd.Picture
img_ir2_2_clcd.Picture = img_ir2_1_clcd.Picture
img_ir2_3_nrml.Picture = img_ir2_1_nrml.Picture
img_ir2_3_slcnd.Picture = img_ir2_1_slcnd.Picture
img_ir2_3_clcd.Picture = img_ir2_1_clcd.Picture
img_ir2_4_nrml.Picture = img_ir2_1_nrml.Picture
img_ir2_4_slcnd.Picture = img_ir2_1_slcnd.Picture
img_ir2_4_clcd.Picture = img_ir2_1_clcd.Picture
frm_tarefas.Show
frm_tarefas.Visible = False
frm_verificarcompatibilidade.Show
frm_verificarcompatibilidade.Visible = False
End Sub
Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir1_nrml.Visible = True
img_ir1_slcnd.Visible = False
img_ir1_clcd.Visible = False
img_ir2_1_nrml.Visible = True
img_ir2_1_slcnd.Visible = False
img_ir2_1_clcd.Visible = False
img_ir2_2_nrml.Visible = True
img_ir2_2_slcnd.Visible = False
img_ir2_2_clcd.Visible = False
img_ir2_3_nrml.Visible = True
img_ir2_3_slcnd.Visible = False
img_ir2_3_clcd.Visible = False
img_ir2_4_nrml.Visible = True
img_ir2_4_slcnd.Visible = False
img_ir2_4_clcd.Visible = False
img_sair_nrml.Visible = True
img_sair_slcnd.Visible = False
img_sair_clcd.Visible = False
End Sub
Private Sub img_ir1_nrml_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir1_nrml.Visible = False
img_ir1_slcnd.Visible = True
img_ir1_clcd.Visible = False
End Sub
Private Sub img_ir1_slcnd_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir1_nrml.Visible = False
img_ir1_slcnd.Visible = False
img_ir1_clcd.Visible = True
End Sub
Private Sub img_ir1_slcnd_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir1_nrml.Visible = False
img_ir1_slcnd.Visible = True
img_ir1_clcd.Visible = False
On Error GoTo erro:
Shell "i386\winnt32.exe", vbNormalFocus
img_ir1_nrml.Visible = True
img_ir1_slcnd.Visible = False
img_ir1_clcd.Visible = False
Exit Sub
erro:
MsgBox "Arquivo 'winnt32.exe' não encontrado!!!", vbCritical + vbOKOnly, "Arquivo não encontrado"
img_ir1_nrml.Visible = True
img_ir1_slcnd.Visible = False
img_ir1_clcd.Visible = False
End Sub
Private Sub img_ir2_1_nrml_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_1_nrml.Visible = False
img_ir2_1_slcnd.Visible = True
img_ir2_1_clcd.Visible = False
End Sub
Private Sub img_ir2_1_slcnd_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_1_nrml.Visible = False
img_ir2_1_slcnd.Visible = False
img_ir2_1_clcd.Visible = True
End Sub
Private Sub img_ir2_1_slcnd_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_1_nrml.Visible = False
img_ir2_1_slcnd.Visible = True
img_ir2_1_clcd.Visible = False
On Error GoTo 2
Shell "C:\Arquivos de programas\Internet Explorer\iexplore.exe " & App.Path & "\arquivos\Configurando o Microsoft Windows XP.htm", vbMaximizedFocus
img_ir2_1_nrml.Visible = True
img_ir2_1_slcnd.Visible = False
img_ir2_1_clcd.Visible = False
Exit Sub
2
On Error GoTo 3
Shell "D:\Arquivos de programas\Internet Explorer\iexplore.exe " & App.Path & "\arquivos\Configurando o Microsoft Windows XP.htm", vbMaximizedFocus
img_ir2_1_nrml.Visible = True
img_ir2_1_slcnd.Visible = False
img_ir2_1_clcd.Visible = False
Exit Sub
3
On Error GoTo 4
Shell "E:\Arquivos de programas\Internet Explorer\iexplore.exe " & App.Path & "\arquivos\Configurando o Microsoft Windows XP.htm", vbMaximizedFocus
img_ir2_1_nrml.Visible = True
img_ir2_1_slcnd.Visible = False
img_ir2_1_clcd.Visible = False
Exit Sub
4
MsgBox "Desculpe, não foi possível realizar a ação", vbCritical + vbOKOnly, "Erro inesperado"
img_ir2_1_nrml.Visible = True
img_ir2_1_slcnd.Visible = False
img_ir2_1_clcd.Visible = False
End Sub
Private Sub img_ir2_2_nrml_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_2_nrml.Visible = False
img_ir2_2_slcnd.Visible = True
img_ir2_2_clcd.Visible = False
End Sub
Private Sub img_ir2_2_slcnd_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_2_nrml.Visible = False
img_ir2_2_slcnd.Visible = False
img_ir2_2_clcd.Visible = True
End Sub
Private Sub img_ir2_2_slcnd_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_2_nrml.Visible = False
img_ir2_2_slcnd.Visible = True
img_ir2_2_clcd.Visible = False
On Error GoTo erro:
Shell "sysocmgr.exe /x /y /i:sysoc.inf", vbNormalFocus
img_ir2_2_nrml.Visible = True
img_ir2_2_slcnd.Visible = False
img_ir2_2_clcd.Visible = False
Exit Sub
erro:
MsgBox "Desculpe, não foi possível realizar a ação", vbCritical + vbOKOnly, "Erro inesperado"
img_ir2_2_nrml.Visible = True
img_ir2_2_slcnd.Visible = False
img_ir2_2_clcd.Visible = False
End Sub
Private Sub img_ir2_3_nrml_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_3_nrml.Visible = False
img_ir2_3_slcnd.Visible = True
img_ir2_3_clcd.Visible = False
End Sub
Private Sub img_ir2_3_slcnd_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_3_nrml.Visible = False
img_ir2_3_slcnd.Visible = False
img_ir2_3_clcd.Visible = True
End Sub
Private Sub img_ir2_3_slcnd_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_3_nrml.Visible = False
img_ir2_3_slcnd.Visible = True
img_ir2_3_clcd.Visible = False
frm_inicio.Visible = False
frm_tarefas.Show
End Sub
Private Sub img_ir2_4_nrml_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_4_nrml.Visible = False
img_ir2_4_slcnd.Visible = True
img_ir2_4_clcd.Visible = False
End Sub
Private Sub img_ir2_4_slcnd_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_4_nrml.Visible = False
img_ir2_4_slcnd.Visible = False
img_ir2_4_clcd.Visible = True
End Sub
Private Sub img_ir2_4_slcnd_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_4_nrml.Visible = False
img_ir2_4_slcnd.Visible = True
img_ir2_4_clcd.Visible = False
frm_inicio.Visible = False
frm_verificarcompatibilidade.Show
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
Private Sub lbl_instalaxp_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir1_nrml.Visible = False
img_ir1_slcnd.Visible = True
img_ir1_clcd.Visible = False
End Sub
Private Sub lbl_instalaxp_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir1_nrml.Visible = False
img_ir1_slcnd.Visible = False
img_ir1_clcd.Visible = True
End Sub
Private Sub lbl_instalaxp_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir1_nrml.Visible = False
img_ir1_slcnd.Visible = True
img_ir1_clcd.Visible = False
On Error GoTo erro:
Shell "i386\winnt32.exe", vbNormalFocus
img_ir1_nrml.Visible = True
img_ir1_slcnd.Visible = False
img_ir1_clcd.Visible = False
Exit Sub
erro:
MsgBox "Arquivo 'winnt32.exe' não encontrado!!!", vbCritical + vbOKOnly, "Arquivo não encontrado"
img_ir1_nrml.Visible = True
img_ir1_slcnd.Visible = False
img_ir1_clcd.Visible = False
End Sub
Private Sub lbl_obterinfo_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_1_nrml.Visible = False
img_ir2_1_slcnd.Visible = True
img_ir2_1_clcd.Visible = False
End Sub
Private Sub lbl_obterinfo_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_1_nrml.Visible = False
img_ir2_1_slcnd.Visible = False
img_ir2_1_clcd.Visible = True
End Sub
Private Sub lbl_obterinfo_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_1_nrml.Visible = False
img_ir2_1_slcnd.Visible = True
img_ir2_1_clcd.Visible = False
On Error GoTo 2
Shell "C:\Arquivos de programas\Internet Explorer\iexplore.exe " & App.Path & "\arquivos\Configurando o Microsoft Windows XP.htm", vbMaximizedFocus
img_ir2_1_nrml.Visible = True
img_ir2_1_slcnd.Visible = False
img_ir2_1_clcd.Visible = False
Exit Sub
2
On Error GoTo 3
Shell "D:\Arquivos de programas\Internet Explorer\iexplore.exe " & App.Path & "\arquivos\Configurando o Microsoft Windows XP.htm", vbMaximizedFocus
img_ir2_1_nrml.Visible = True
img_ir2_1_slcnd.Visible = False
img_ir2_1_clcd.Visible = False
Exit Sub
3
On Error GoTo 4
Shell "E:\Arquivos de programas\Internet Explorer\iexplore.exe " & App.Path & "\arquivos\Configurando o Microsoft Windows XP.htm", vbMaximizedFocus
img_ir2_1_nrml.Visible = True
img_ir2_1_slcnd.Visible = False
img_ir2_1_clcd.Visible = False
Exit Sub
4
MsgBox "Desculpe, não foi possível realizar a ação", vbCritical + vbOKOnly, "Erro inesperado"
img_ir2_1_nrml.Visible = True
img_ir2_1_slcnd.Visible = False
img_ir2_1_clcd.Visible = False
End Sub
Private Sub lbl_inscomp_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_2_nrml.Visible = False
img_ir2_2_slcnd.Visible = True
img_ir2_2_clcd.Visible = False
End Sub
Private Sub lbl_inscomp_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_2_nrml.Visible = False
img_ir2_2_slcnd.Visible = False
img_ir2_2_clcd.Visible = True
End Sub
Private Sub lbl_inscomp_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_2_nrml.Visible = False
img_ir2_2_slcnd.Visible = True
img_ir2_2_clcd.Visible = False
On Error GoTo erro:
Shell "sysocmgr.exe /x /y /i:sysoc.inf", vbNormalFocus
img_ir2_2_nrml.Visible = True
img_ir2_2_slcnd.Visible = False
img_ir2_2_clcd.Visible = False
Exit Sub
erro:
MsgBox "Desculpe, não foi possível realizar a ação", vbCritical + vbOKOnly, "Erro inesperado"
img_ir2_2_nrml.Visible = True
img_ir2_2_slcnd.Visible = False
img_ir2_2_clcd.Visible = False
End Sub
Private Sub lbl_exectaref_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_3_nrml.Visible = False
img_ir2_3_slcnd.Visible = True
img_ir2_3_clcd.Visible = False
End Sub
Private Sub lbl_exectaref_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_3_nrml.Visible = False
img_ir2_3_slcnd.Visible = False
img_ir2_3_clcd.Visible = True
End Sub
Private Sub lbl_exectaref_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_3_nrml.Visible = False
img_ir2_3_slcnd.Visible = True
img_ir2_3_clcd.Visible = False
frm_inicio.Visible = False
frm_tarefas.Show
End Sub
Private Sub lbl_verifcompat_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_4_nrml.Visible = False
img_ir2_4_slcnd.Visible = True
img_ir2_4_clcd.Visible = False
End Sub
Private Sub lbl_verifcompat_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_4_nrml.Visible = False
img_ir2_4_slcnd.Visible = False
img_ir2_4_clcd.Visible = True
End Sub
Private Sub lbl_verifcompat_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_4_nrml.Visible = False
img_ir2_4_slcnd.Visible = True
img_ir2_4_clcd.Visible = False
frm_inicio.Visible = False
frm_verificarcompatibilidade.Show
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
If img_ir2_1_clcd.Visible = True And TempoDecorrido = Format("00:00:01", "long time") Then
img_ir2_1_nrml.Visible = True
img_ir2_1_slcnd.Visible = False
img_ir2_1_clcd.Visible = False
End If
If img_ir2_2_clcd.Visible = True And TempoDecorrido = Format("00:00:01", "long time") Then
img_ir2_2_nrml.Visible = True
img_ir2_2_slcnd.Visible = False
img_ir2_2_clcd.Visible = False
End If
If img_ir1_clcd.Visible = True And TempoDecorrido = Format("00:00:01", "long time") Then
img_ir1_nrml.Visible = True
img_ir1_slcnd.Visible = False
img_ir1_clcd.Visible = False
End If
End Sub

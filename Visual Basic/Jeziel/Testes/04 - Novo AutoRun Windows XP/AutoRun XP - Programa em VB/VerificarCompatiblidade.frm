VERSION 5.00
Begin VB.Form frm_verificarcompatibilidade 
   BorderStyle     =   0  'None
   Caption         =   "Bem-vindo ao Windows XP Professional"
   ClientHeight    =   9000
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12000
   Icon            =   "VerificarCompatiblidade.frx":0000
   ScaleHeight     =   9000
   ScaleWidth      =   12000
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer 
      Interval        =   1000
      Left            =   0
      Top             =   0
   End
   Begin VB.Image img_voltar_nrml 
      Height          =   420
      Left            =   2400
      Top             =   3840
      Width           =   420
   End
   Begin VB.Image img_imagem2 
      Height          =   720
      Left            =   2280
      Top             =   1560
      Width           =   720
   End
   Begin VB.Image img_ir2_12_nrml 
      Height          =   420
      Left            =   2400
      Top             =   3240
      Width           =   420
   End
   Begin VB.Image img_ir2_11_nrml 
      Height          =   420
      Left            =   2400
      Top             =   2640
      Width           =   420
   End
   Begin VB.Image img_voltar_slcnd 
      Height          =   420
      Left            =   2400
      Top             =   3840
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
      TabIndex        =   3
      Top             =   3840
      Width           =   885
   End
   Begin VB.Label lbl_verifsystem 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "V&erificar o sistema automaticamente"
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
      Top             =   2640
      Width           =   5370
   End
   Begin VB.Image img_ir2_12_slcnd 
      Height          =   420
      Left            =   2400
      Top             =   3240
      Width           =   420
   End
   Begin VB.Image img_ir2_11_slcnd 
      Height          =   420
      Left            =   2400
      Top             =   2640
      Width           =   420
   End
   Begin VB.Label lbl_visitsite 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "V&isitar o site de compatibilidade na web"
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
      Top             =   3240
      Width           =   5805
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
      TabIndex        =   0
      Top             =   8040
      Width           =   615
   End
   Begin VB.Image img_sair_clcd 
      Height          =   420
      Left            =   600
      MouseIcon       =   "VerificarCompatiblidade.frx":000C
      Top             =   8040
      Width           =   420
   End
   Begin VB.Image img_ir2_11_clcd 
      Height          =   420
      Left            =   2400
      MouseIcon       =   "VerificarCompatiblidade.frx":0A86
      Top             =   2640
      Width           =   420
   End
   Begin VB.Image img_ir2_12_clcd 
      Height          =   420
      Left            =   2400
      MouseIcon       =   "VerificarCompatiblidade.frx":1500
      Top             =   3240
      Width           =   420
   End
   Begin VB.Image img_voltar_clcd 
      Height          =   420
      Left            =   2400
      MouseIcon       =   "VerificarCompatiblidade.frx":1F7A
      Top             =   3840
      Width           =   420
   End
End
Attribute VB_Name = "frm_verificarcompatibilidade"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim TempoInicial As Variant
Dim TempoDecorrido As Variant
Private Sub Form_KeyPress(KeyAscii As Integer)
If KeyAscii = 69 Or KeyAscii = 101 Then
TempoInicial = Time
img_ir2_11_nrml.Visible = False
img_ir2_11_slcnd.Visible = False
img_ir2_11_clcd.Visible = True
On Error GoTo erro:
Shell "I386\winnt32.exe /checkupgradeonly", vbNormalFocus
Exit Sub
erro:
MsgBox "Arquivo 'winnt32.exe' não encontrado!!!", vbCritical + vbOKOnly, "Arquivo não encontrado"
ElseIf KeyAscii = 73 Or KeyAscii = 105 Then
TempoInicial = Time
img_ir2_12_nrml.Visible = False
img_ir2_12_slcnd.Visible = False
img_ir2_12_clcd.Visible = True
On Error GoTo 1
Shell "C:\Arquivos de programas\Internet Explorer\iexplore.exe http://www.microsoft.com/isapi/redir.dll?prd=whistler&sbp=pro&pver=5.1&ar=compat", vbMaximizedFocus
Exit Sub
1
On Error GoTo 2
Shell "D:\Arquivos de programas\Internet Explorer\iexplore.exe http://www.microsoft.com/isapi/redir.dll?prd=whistler&sbp=pro&pver=5.1&ar=compat", vbMaximizedFocus
Exit Sub
2
On Error GoTo 3
Shell "E:\Arquivos de programas\Internet Explorer\iexplore.exe http://www.microsoft.com/isapi/redir.dll?prd=whistler&sbp=pro&pver=5.1&ar=compat", vbMaximizedFocus
Exit Sub
3
MsgBox "Desculpe, não foi possível realizar a ação", vbCritical + vbOKOnly, "Erro inesperado"
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
img_imagem2.Picture = frm_tarefas.img_imagem2.Picture
img_ir2_11_nrml.Picture = frm_inicio.img_ir2_1_nrml.Picture
img_ir2_11_slcnd.Picture = frm_inicio.img_ir2_1_slcnd.Picture
img_ir2_11_clcd.Picture = frm_inicio.img_ir2_1_clcd.Picture
img_ir2_12_nrml.Picture = frm_inicio.img_ir2_1_nrml.Picture
img_ir2_12_slcnd.Picture = frm_inicio.img_ir2_1_slcnd.Picture
img_ir2_12_clcd.Picture = frm_inicio.img_ir2_1_clcd.Picture
img_voltar_nrml.Picture = frm_tarefas.img_voltar_nrml.Picture
img_voltar_slcnd.Picture = frm_tarefas.img_voltar_slcnd.Picture
img_voltar_clcd.Picture = frm_tarefas.img_voltar_clcd.Picture
img_sair_nrml.Picture = frm_inicio.img_sair_nrml.Picture
img_sair_slcnd.Picture = frm_inicio.img_sair_slcnd.Picture
img_sair_clcd.Picture = frm_inicio.img_sair_clcd.Picture
Me.Picture = frm_inicio.Picture
Me.Icon = frm_inicio.Icon
End Sub
Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_11_nrml.Visible = True
img_ir2_11_slcnd.Visible = False
img_ir2_11_clcd.Visible = False
img_ir2_12_nrml.Visible = True
img_ir2_12_slcnd.Visible = False
img_ir2_12_clcd.Visible = False
img_voltar_nrml.Visible = True
img_voltar_slcnd.Visible = False
img_voltar_clcd.Visible = False
img_sair_nrml.Visible = True
img_sair_slcnd.Visible = False
img_sair_clcd.Visible = False
End Sub
Private Sub img_ir2_11_nrml_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_11_nrml.Visible = False
img_ir2_11_slcnd.Visible = True
img_ir2_11_clcd.Visible = False
End Sub
Private Sub img_ir2_11_slcnd_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_11_nrml.Visible = False
img_ir2_11_slcnd.Visible = False
img_ir2_11_clcd.Visible = True
End Sub
Private Sub img_ir2_11_slcnd_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_11_nrml.Visible = False
img_ir2_11_slcnd.Visible = True
img_ir2_11_clcd.Visible = False
On Error GoTo erro:
Shell "i386\winnt32.exe /checkupgradeonly", vbNormalFocus
Exit Sub
erro:
MsgBox "Arquivo 'winnt32.exe' não encontrado!!!", vbCritical + vbOKOnly, "Arquivo não encontrado"
End Sub
Private Sub img_ir2_12_nrml_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_12_nrml.Visible = False
img_ir2_12_slcnd.Visible = True
img_ir2_12_clcd.Visible = False
End Sub
Private Sub img_ir2_12_slcnd_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_12_nrml.Visible = False
img_ir2_12_slcnd.Visible = False
img_ir2_12_clcd.Visible = True
End Sub
Private Sub img_ir2_12_slcnd_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_12_nrml.Visible = False
img_ir2_12_slcnd.Visible = True
img_ir2_12_clcd.Visible = False
On Error GoTo 1
Shell "C:\Arquivos de programas\Internet Explorer\iexplore.exe http://www.microsoft.com/isapi/redir.dll?prd=whistler&sbp=pro&pver=5.1&ar=compat", vbMaximizedFocus
Exit Sub
1
On Error GoTo 2
Shell "D:\Arquivos de programas\Internet Explorer\iexplore.exe http://www.microsoft.com/isapi/redir.dll?prd=whistler&sbp=pro&pver=5.1&ar=compat", vbMaximizedFocus
Exit Sub
2
On Error GoTo 3
Shell "E:\Arquivos de programas\Internet Explorer\iexplore.exe http://www.microsoft.com/isapi/redir.dll?prd=whistler&sbp=pro&pver=5.1&ar=compat", vbMaximizedFocus
Exit Sub
3
MsgBox "Desculpe, não foi possível realizar a ação", vbCritical + vbOKOnly, "Erro inesperado"
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
Private Sub lbl_verifsystem_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_11_nrml.Visible = False
img_ir2_11_slcnd.Visible = True
img_ir2_11_clcd.Visible = False
End Sub
Private Sub lbl_verifsystem_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_11_nrml.Visible = False
img_ir2_11_slcnd.Visible = False
img_ir2_11_clcd.Visible = True
End Sub
Private Sub lbl_verifsystem_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_11_nrml.Visible = False
img_ir2_11_slcnd.Visible = True
img_ir2_11_clcd.Visible = False
On Error GoTo erro:
Shell "i386\winnt32.exe /checkupgradeonly", vbNormalFocus
Exit Sub
erro:
MsgBox "Arquivo 'winnt32.exe' não encontrado!!!", vbCritical + vbOKOnly, "Arquivo não encontrado"
End Sub
Private Sub lbl_visitsite_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_12_nrml.Visible = False
img_ir2_12_slcnd.Visible = True
img_ir2_12_clcd.Visible = False
End Sub
Private Sub lbl_visitsite_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_12_nrml.Visible = False
img_ir2_12_slcnd.Visible = False
img_ir2_12_clcd.Visible = True
End Sub
Private Sub lbl_visitsite_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_ir2_12_nrml.Visible = False
img_ir2_12_slcnd.Visible = True
img_ir2_12_clcd.Visible = False
On Error GoTo 1
Shell "C:\Arquivos de programas\Internet Explorer\iexplore.exe http://www.microsoft.com/isapi/redir.dll?prd=whistler&sbp=pro&pver=5.1&ar=compat", vbMaximizedFocus
Exit Sub
1
On Error GoTo 2
Shell "D:\Arquivos de programas\Internet Explorer\iexplore.exe http://www.microsoft.com/isapi/redir.dll?prd=whistler&sbp=pro&pver=5.1&ar=compat", vbMaximizedFocus
Exit Sub
2
On Error GoTo 3
Shell "E:\Arquivos de programas\Internet Explorer\iexplore.exe http://www.microsoft.com/isapi/redir.dll?prd=whistler&sbp=pro&pver=5.1&ar=compat", vbMaximizedFocus
Exit Sub
3
MsgBox "Desculpe, não foi possível realizar a ação", vbCritical + vbOKOnly, "Erro inesperado"
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
If img_ir2_11_clcd.Visible = True And TempoDecorrido = Format("00:00:01", "long time") Then
img_ir2_11_nrml.Visible = True
img_ir2_11_slcnd.Visible = False
img_ir2_11_clcd.Visible = False
End If
If img_ir2_12_clcd.Visible = True And TempoDecorrido = Format("00:00:01", "long time") Then
img_ir2_12_nrml.Visible = True
img_ir2_12_slcnd.Visible = False
img_ir2_12_clcd.Visible = False
End If
End Sub


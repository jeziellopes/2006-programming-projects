VERSION 5.00
Begin VB.Form frm_pen 
   BorderStyle     =   0  'None
   Caption         =   "PEN JS"
   ClientHeight    =   4920
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   6000
   Icon            =   "AutoRun PENJS.frx":0000
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "AutoRun PENJS.frx":CE5C
   ScaleHeight     =   4920
   ScaleMode       =   0  'User
   ScaleWidth      =   6000
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Image img_novos_nrml 
      Height          =   480
      Left            =   840
      Picture         =   "AutoRun PENJS.frx":6D020
      Top             =   1680
      Width           =   720
   End
   Begin VB.Label lbl_sobre 
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3720
      TabIndex        =   4
      Top             =   120
      Width           =   3615
   End
   Begin VB.Label lbl_sair 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Sair"
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   480
      Left            =   240
      TabIndex        =   3
      Top             =   4200
      Width           =   810
   End
   Begin VB.Image img_jeziel_nrml 
      Height          =   720
      Left            =   840
      Picture         =   "AutoRun PENJS.frx":6E36A
      Top             =   840
      Width           =   720
   End
   Begin VB.Image img_salatiel_nrml 
      Height          =   720
      Left            =   840
      Picture         =   "AutoRun PENJS.frx":70034
      Top             =   2280
      Width           =   720
   End
   Begin VB.Image img_salatiel_slcnd 
      Height          =   720
      Left            =   840
      Picture         =   "AutoRun PENJS.frx":71CFE
      Top             =   2280
      Width           =   720
   End
   Begin VB.Image img_novos_slcnd 
      Height          =   480
      Left            =   840
      Picture         =   "AutoRun PENJS.frx":739C8
      Top             =   1680
      Width           =   720
   End
   Begin VB.Image img_jeziel_slcnd 
      Height          =   720
      Left            =   840
      Picture         =   "AutoRun PENJS.frx":74D12
      Top             =   840
      Width           =   720
   End
   Begin VB.Label lbl_salatiel 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Salatiel"
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   480
      Left            =   1560
      TabIndex        =   2
      Top             =   2400
      Width           =   1455
   End
   Begin VB.Label lbl_novos 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Novos"
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   480
      Left            =   1560
      TabIndex        =   1
      Top             =   1680
      Width           =   1245
   End
   Begin VB.Label lbl_jeziel 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Jeziel"
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   480
      Left            =   1560
      TabIndex        =   0
      Top             =   960
      Width           =   1125
   End
   Begin VB.Image img_salatiel_clcd 
      Height          =   720
      Left            =   840
      Picture         =   "AutoRun PENJS.frx":769DC
      Top             =   2280
      Width           =   720
   End
   Begin VB.Image img_jeziel_clcd 
      Height          =   720
      Left            =   840
      Picture         =   "AutoRun PENJS.frx":786A6
      Top             =   840
      Width           =   720
   End
   Begin VB.Image img_novos_clcd 
      Height          =   480
      Left            =   840
      Picture         =   "AutoRun PENJS.frx":7A370
      Top             =   1680
      Width           =   720
   End
End
Attribute VB_Name = "frm_pen"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_jeziel_nrml.Visible = True
img_jeziel_slcnd.Visible = False
img_jeziel_clcd.Visible = False
img_novos_nrml.Visible = True
img_novos_slcnd.Visible = False
img_novos_clcd.Visible = False
img_salatiel_nrml.Visible = True
img_salatiel_slcnd.Visible = False
img_salatiel_clcd.Visible = False
If lbl_sair.FontSize = 21 Then
lbl_sair.FontSize = 20
ElseIf lbl_jeziel.FontSize = 21 Then
lbl_jeziel.FontSize = 20
ElseIf lbl_novos.FontSize = 21 Then
lbl_novos.FontSize = 20
ElseIf lbl_salatiel.FontSize = 21 Then
lbl_salatiel.FontSize = 20
End If
End Sub
Private Sub lbl_sair_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
lbl_sair.FontSize = 21
End Sub
Private Sub lbl_sair_Click()
End
End Sub
Private Sub img_jeziel_nrml_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_jeziel_nrml.Visible = False
img_jeziel_slcnd.Visible = True
img_jeziel_clcd.Visible = False
End Sub
Private Sub img_jeziel_slcnd_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_jeziel_nrml.Visible = False
img_jeziel_slcnd.Visible = False
img_jeziel_clcd.Visible = True
End Sub
Private Sub img_jeziel_slcnd_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_jeziel_nrml.Visible = False
img_jeziel_slcnd.Visible = True
img_jeziel_clcd.Visible = False
On Error GoTo erro:
Shell "explorer.exe jeziel", vbNormalFocus
img_jeziel_nrml.Visible = True
img_jeziel_slcnd.Visible = False
img_jeziel_clcd.Visible = False
Exit Sub
erro:
MsgBox "Não foi possível encontrar a pasta 'Jeziel'!!!", vbCritical + vbOKOnly, "Pasta não encontrada"
End Sub
Private Sub img_novos_nrml_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_novos_nrml.Visible = False
img_novos_slcnd.Visible = True
img_novos_clcd.Visible = False
End Sub
Private Sub img_novos_slcnd_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_novos_nrml.Visible = False
img_novos_slcnd.Visible = False
img_novos_clcd.Visible = True
End Sub
Private Sub img_novos_slcnd_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_novos_nrml.Visible = False
img_novos_slcnd.Visible = True
img_novos_clcd.Visible = False
On Error GoTo erro:
Shell "explorer.exe novos", vbNormalFocus
img_novos_nrml.Visible = True
img_novos_slcnd.Visible = False
img_novos_clcd.Visible = False
Exit Sub
erro:
MsgBox "Não foi possível encontrar a pasta 'novos'!!!", vbCritical + vbOKOnly, "Pasta não encontrada"
End Sub
Private Sub img_salatiel_nrml_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_salatiel_nrml.Visible = False
img_salatiel_slcnd.Visible = True
img_salatiel_clcd.Visible = False
End Sub
Private Sub img_salatiel_slcnd_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_salatiel_nrml.Visible = False
img_salatiel_slcnd.Visible = False
img_salatiel_clcd.Visible = True
End Sub
Private Sub img_salatiel_slcnd_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_salatiel_nrml.Visible = False
img_salatiel_slcnd.Visible = True
img_salatiel_clcd.Visible = False
On Error GoTo erro:
Shell "explorer.exe salatiel", vbNormalFocus
img_salatiel_nrml.Visible = True
img_salatiel_slcnd.Visible = False
img_salatiel_clcd.Visible = False
Exit Sub
erro:
MsgBox "Não foi possível encontrar a pasta 'salatiel'!!!", vbCritical + vbOKOnly, "Pasta não encontrada"
End Sub
Private Sub lbl_jeziel_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
lbl_jeziel.FontSize = 21
img_jeziel_nrml.Visible = False
img_jeziel_slcnd.Visible = True
img_jeziel_clcd.Visible = False
End Sub
Private Sub lbl_jeziel_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_jeziel_nrml.Visible = False
img_jeziel_slcnd.Visible = False
img_jeziel_clcd.Visible = True
End Sub
Private Sub lbl_jeziel_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_jeziel_nrml.Visible = False
img_jeziel_slcnd.Visible = True
img_jeziel_clcd.Visible = False
On Error GoTo erro:
Shell "explorer.exe jeziel", vbNormalFocus
img_jeziel_nrml.Visible = True
img_jeziel_slcnd.Visible = False
img_jeziel_clcd.Visible = False
Exit Sub
erro:
MsgBox "Não foi possível encontrar a pasta 'Jeziel'!!!", vbCritical + vbOKOnly, "Pasta não encontrada"
End Sub
Private Sub lbl_novos_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
lbl_novos.FontSize = 21
img_novos_nrml.Visible = False
img_novos_slcnd.Visible = True
img_novos_clcd.Visible = False
End Sub
Private Sub lbl_novos_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_novos_nrml.Visible = False
img_novos_slcnd.Visible = False
img_novos_clcd.Visible = True
End Sub
Private Sub lbl_novos_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_novos_nrml.Visible = False
img_novos_slcnd.Visible = True
img_novos_clcd.Visible = False
On Error GoTo erro:
Shell "explorer.exe novos", vbNormalFocus
img_novos_nrml.Visible = True
img_novos_slcnd.Visible = False
img_novos_clcd.Visible = False
Exit Sub
erro:
MsgBox "Não foi possível encontrar a pasta 'novos'!!!", vbCritical + vbOKOnly, "Pasta não encontrada"
End Sub
Private Sub lbl_salatiel_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
lbl_salatiel.FontSize = 21
img_salatiel_nrml.Visible = False
img_salatiel_slcnd.Visible = True
img_salatiel_clcd.Visible = False
End Sub
Private Sub lbl_salatiel_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_salatiel_nrml.Visible = False
img_salatiel_slcnd.Visible = False
img_salatiel_clcd.Visible = True
End Sub
Private Sub lbl_salatiel_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
img_salatiel_nrml.Visible = False
img_salatiel_slcnd.Visible = True
img_salatiel_clcd.Visible = False
On Error GoTo erro:
Shell "explorer.exe salatiel", vbNormalFocus
img_salatiel_nrml.Visible = True
img_salatiel_slcnd.Visible = False
img_salatiel_clcd.Visible = False
Exit Sub
erro:
MsgBox "Não foi possível encontrar a pasta 'salatiel'!!!", vbCritical + vbOKOnly, "Pasta não encontrada"
End Sub

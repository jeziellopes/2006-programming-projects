VERSION 5.00
Begin VB.Form frm_controlesmenudinamicos 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Controles e Menus Dinâmicos"
   ClientHeight    =   1590
   ClientLeft      =   150
   ClientTop       =   840
   ClientWidth     =   5445
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   1590
   ScaleWidth      =   5445
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txt_buffer 
      Height          =   615
      Index           =   0
      Left            =   2760
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      Top             =   480
      Visible         =   0   'False
      Width           =   2175
   End
   Begin VB.TextBox txt_origem 
      Height          =   615
      Left            =   480
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   0
      Top             =   480
      Width           =   2175
   End
   Begin VB.Menu mnu_arquivo 
      Caption         =   "Arquivo"
      Begin VB.Menu mnu_criarbuffer 
         Caption         =   "Criar Buffer"
      End
      Begin VB.Menu mnu_apagarbuffer 
         Caption         =   "Apagar Buffer"
      End
      Begin VB.Menu mnu_sair 
         Caption         =   "Sair"
      End
   End
   Begin VB.Menu mnu_editar 
      Caption         =   "Editar"
      Enabled         =   0   'False
      Begin VB.Menu mnu_copiar 
         Caption         =   "Copiar"
         Index           =   0
      End
      Begin VB.Menu mnu_cortar 
         Caption         =   "Cortar"
         Index           =   0
      End
      Begin VB.Menu mnu_colar 
         Caption         =   "Colar"
         Index           =   0
      End
   End
End
Attribute VB_Name = "frm_controlesmenudinamicos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim indice As Integer
Private Sub mnu_criarbuffer_Click()
If indice < 3 Then
    If indice >= 1 Then
        Load txt_buffer(indice)
        txt_buffer(indice).Top = txt_buffer(indice - 1).Top + 1500
        Load mnu_copiar(indice)
        Load mnu_cortar(indice)
        Load mnu_colar(indice)
    End If
    txt_buffer(indice).Visible = True
    mnu_copiar(indice).Caption = "Copiar #" + Str(indice + 1)
    mnu_cortar(indice).Caption = "Cortar #" + Str(indice + 1)
    mnu_colar(indice).Caption = "Colar #" + Str(indice + 1)
    mnu_copiar(indice).Visible = True
    mnu_cortar(indice).Visible = True
    mnu_colar(indice).Visible = True
    mnu_editar.Enabled = True
    indice = indice + 1
End If
End Sub
Sub mnu_apagarbuffer_Click()
If indice > 1 Then
    Unload txt_buffer(indice - 1)
    Unload mnu_copiar(indice - 1)
    Unload mnu_cortar(indice - 1)
    Unload mnu_colar(indice - 1)
    indice = indice - 1
Else
    If indice = 1 Then
    txt_buffer(indice - 1).Text = ""
    txt_buffer(indice - 1).Visible = False
    indice = indice - 1
    End If
End If
End Sub
Sub mnu_copiar_Click(Index As Integer)
txt_buffer(Index).SelText = txt_origem.SelText
txt_origem.SelLength = 0
End Sub
Sub mnu_cortar_Click(Index As Integer)
txt_buffer(Index).SelText = txt_origem.SelText
txt_origem.SelText = ""
End Sub
Sub mnu_colar_Click(Index As Integer)
txt_origem.SelText = txt_buffer(Index).Text
txt_buffer(Index).Text = ""
End Sub
Private Sub mnu_sair_Click()
End
End Sub

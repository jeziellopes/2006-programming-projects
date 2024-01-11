VERSION 5.00
Begin VB.Form frm_criandomenus 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Criando Menus"
   ClientHeight    =   1365
   ClientLeft      =   150
   ClientTop       =   840
   ClientWidth     =   3555
   FillColor       =   &H00FFFFFF&
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   1365
   ScaleWidth      =   3555
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmd_entradaesaida 
      BackColor       =   &H00FF8080&
      Caption         =   "Entrada e Saída"
      Height          =   375
      Left            =   840
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   360
      Width           =   1815
   End
   Begin VB.Label lbl_descricao2 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   120
      TabIndex        =   2
      Top             =   1080
      Width           =   45
   End
   Begin VB.Label lbl_descricao1 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   120
      TabIndex        =   1
      Top             =   840
      Width           =   45
   End
   Begin VB.Menu mnu_cadastro 
      Caption         =   "&Cadastro"
      WindowList      =   -1  'True
      Begin VB.Menu mnu_mercadoria 
         Caption         =   "&Mercadoria"
      End
      Begin VB.Menu mnu_fornecedor 
         Caption         =   "&Fornecedor"
      End
      Begin VB.Menu mnu_separacao 
         Caption         =   "-"
      End
      Begin VB.Menu mnu_sair 
         Caption         =   "Sair"
      End
   End
   Begin VB.Menu mnu_lancamento 
      Caption         =   "&Lançamento"
      Begin VB.Menu mnu_entrada 
         Caption         =   "&Entrada"
         Shortcut        =   ^E
      End
      Begin VB.Menu mnu_saida 
         Caption         =   "&Saída"
         Shortcut        =   ^S
      End
   End
   Begin VB.Menu mnu_relatorios 
      Caption         =   "&Relatórios"
      Begin VB.Menu mnu_lerrelatorio 
         Caption         =   "Ler Re&latório"
      End
      Begin VB.Menu mnu_limparrelatorio 
         Caption         =   "Li&mpar Relatório"
      End
   End
   Begin VB.Menu mnu_ajuda 
      Caption         =   "&Ajuda"
   End
End
Attribute VB_Name = "frm_criandomenus"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_entradaesaida_Click()
End
End Sub
Private Sub cmd_entradaesaida_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
lbl_descricao1.Caption = "Botão Esquerdo: Sai do programa"
lbl_descricao2.Caption = "Botão Direito: Exibe um menu popup"
End Sub
Private Sub cmd_entradaesaida_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 2 Then
    PopupMenu mnu_lancamento
End If
End Sub
Private Sub form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
lbl_descricao1.Caption = ""
lbl_descricao2.Caption = ""
End Sub
Private Sub mnu_entrada_Click()
MsgBox "Menu Lançamento de Entrada de Mercadoria Acionado"
End Sub
Private Sub mnu_saida_Click()
MsgBox "Menu Lançamento de Saída de Mercadoria Acionado"
End Sub
Private Sub mnu_sair_Click()
End
End Sub

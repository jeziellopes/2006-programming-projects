VERSION 5.00
Begin VB.Form frm_estoque 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Controle de Estoque"
   ClientHeight    =   3090
   ClientLeft      =   150
   ClientTop       =   840
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.Menu mnu_cadastro 
      Caption         =   "&Cadastro"
      Begin VB.Menu mnu_mercadoria 
         Caption         =   "&Mercadoria"
         Shortcut        =   {F2}
      End
      Begin VB.Menu mnu_cliente 
         Caption         =   "&Cliente"
         Shortcut        =   {F3}
      End
      Begin VB.Menu mnu_espaco 
         Caption         =   "-"
      End
      Begin VB.Menu mnu_sair 
         Caption         =   "Sai&r"
      End
   End
   Begin VB.Menu mnu_lancamento 
      Caption         =   "&Lançamento"
      Begin VB.Menu mnu_vendas 
         Caption         =   "Vendas"
         Shortcut        =   {F5}
      End
   End
End
Attribute VB_Name = "frm_estoque"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub mnu_mercadoria_Click()
frm_mercadoria.Show
End Sub
Private Sub mnu_sair_Click()
End
End Sub

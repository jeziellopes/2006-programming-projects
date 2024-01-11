VERSION 5.00
Begin VB.MDIForm frm_pai 
   BackColor       =   &H8000000C&
   Caption         =   "Formulário Pai"
   ClientHeight    =   5685
   ClientLeft      =   165
   ClientTop       =   855
   ClientWidth     =   6300
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   Begin VB.Menu mnu_arquivo 
      Caption         =   "&Arquivo"
      Begin VB.Menu mnu_novoarquivo 
         Caption         =   "Novo Arquivo"
      End
   End
   Begin VB.Menu mnu_janela 
      Caption         =   "&Janela"
      WindowList      =   -1  'True
      Begin VB.Menu mnu_horizontal 
         Caption         =   "Lado a Lado na Horizontal"
      End
      Begin VB.Menu mnu_vertical 
         Caption         =   "Lado a Lado na Vertical"
      End
      Begin VB.Menu mnu_cascata 
         Caption         =   "Em Cascata"
      End
   End
End
Attribute VB_Name = "frm_pai"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub mnu_cascata_Click()
frm_pai.Arrange 0
End Sub
Private Sub mnu_horizontal_Click()
frm_pai.Arrange 1
End Sub
Private Sub mnu_vertical_Click()
frm_pai.Arrange 2
End Sub
Private Sub mnu_novoarquivo_Click()
Dim arquivo As New frm_filho
    arquivo.Show
End Sub

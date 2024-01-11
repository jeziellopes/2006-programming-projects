VERSION 5.00
Begin VB.Form frm_mercadoria 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Cadastro de Mercadoria"
   ClientHeight    =   3750
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   6990
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3750
   ScaleWidth      =   6990
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmd_proximo 
      Caption         =   "Próximo >>"
      Height          =   495
      Left            =   1320
      TabIndex        =   11
      Top             =   3120
      Width           =   1095
   End
   Begin VB.CommandButton cmd_anterior 
      Caption         =   "<< Anterior"
      Height          =   495
      Left            =   120
      TabIndex        =   10
      Top             =   3120
      Width           =   1095
   End
   Begin VB.CommandButton cmd_sair 
      Caption         =   "Sair"
      Height          =   495
      Left            =   5880
      TabIndex        =   16
      Top             =   3120
      Width           =   975
   End
   Begin VB.CommandButton cmd_grava 
      Caption         =   "Gravar"
      Height          =   495
      Left            =   5880
      TabIndex        =   15
      Top             =   2520
      Width           =   975
   End
   Begin VB.CommandButton cmd_excluir 
      Caption         =   "Excluir"
      Height          =   495
      Left            =   5880
      TabIndex        =   14
      Top             =   1920
      Width           =   975
   End
   Begin VB.CommandButton cmd_consultar 
      Caption         =   "Consultar"
      Height          =   495
      Left            =   5880
      TabIndex        =   13
      Top             =   1320
      Width           =   975
   End
   Begin VB.CommandButton cmd_alterar 
      Caption         =   "Alterar"
      Height          =   495
      Left            =   5880
      TabIndex        =   12
      Top             =   720
      Width           =   975
   End
   Begin VB.CommandButton cmd_incluir 
      Caption         =   "Incluir"
      Height          =   495
      Left            =   5880
      TabIndex        =   0
      Top             =   120
      Width           =   975
   End
   Begin VB.Frame fra_mercadoria 
      Height          =   2895
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   5655
      Begin VB.TextBox txt_valor 
         Height          =   375
         Left            =   2280
         MaxLength       =   8
         TabIndex        =   9
         Top             =   2160
         Width           =   2295
      End
      Begin VB.TextBox txt_quantidade 
         Height          =   375
         Left            =   2280
         MaxLength       =   2
         TabIndex        =   8
         Top             =   1560
         Width           =   975
      End
      Begin VB.TextBox txt_descricao 
         Height          =   375
         Left            =   2280
         MaxLength       =   50
         TabIndex        =   7
         Top             =   960
         Width           =   2895
      End
      Begin VB.TextBox txt_codigo 
         Height          =   375
         Left            =   2280
         MaxLength       =   3
         TabIndex        =   6
         Top             =   360
         Width           =   855
      End
      Begin VB.Label lbl_valor 
         AutoSize        =   -1  'True
         Caption         =   "Valor de Venda:"
         Height          =   195
         Left            =   960
         TabIndex        =   5
         Top             =   2160
         Width           =   1140
      End
      Begin VB.Label lbl_quantidade 
         AutoSize        =   -1  'True
         Caption         =   "Quantidade no Estoque:"
         Height          =   195
         Left            =   360
         TabIndex        =   4
         Top             =   1560
         Width           =   1725
      End
      Begin VB.Label lbl_descricao 
         AutoSize        =   -1  'True
         Caption         =   "Descrição:"
         Height          =   195
         Left            =   1320
         TabIndex        =   3
         Top             =   960
         Width           =   765
      End
      Begin VB.Label lbl_codigo 
         AutoSize        =   -1  'True
         Caption         =   "Código:"
         Height          =   195
         Left            =   1560
         TabIndex        =   2
         Top             =   360
         Width           =   540
      End
   End
End
Attribute VB_Name = "frm_mercadoria"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim BancoDeDados As Database
Dim TBMercadoria As Recordset
Private Sub cmd_alterar_Click()
cmd_incluir.Enabled = False
cmd_alterar.Enabled = False
cmd_consultar.Enabled = False
cmd_excluir.Enabled = False
cmd_grava.Enabled = True
cmd_sair.Enabled = True
cmd_anterior.Enabled = False
cmd_proximo.Enabled = False
fra_mercadoria.Enabled = True
End Sub
Private Sub cmd_incluir_Click()
cmd_incluir.Enabled = False
cmd_alterar.Enabled = False
cmd_consultar.Enabled = False
cmd_excluir.Enabled = False
cmd_grava.Enabled = True
cmd_sair.Enabled = True
cmd_anterior.Enabled = False
cmd_proximo.Enabled = False
fra_mercadoria.Enabled = True
LimpaFormulário
fra_mercadoria.Enabled = True
txt_codigo.SetFocus
End Sub
Private Sub cmd_grava_Click()
cmd_incluir.Enabled = True
cmd_alterar.Enabled = True
cmd_consultar.Enabled = True
cmd_excluir.Enabled = True
cmd_grava.Enabled = False
cmd_sair.Enabled = True
cmd_anterior.Enabled = True
cmd_proximo.Enabled = True
fra_mercadoria.Enabled = False
txt_codigo.Enabled = True
AtualizaCampos
TBMercadoria.Update
End Sub
Private Sub cmd_sair_Click()
Unload Me
End Sub
Private Sub Form_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    SendKeys ("{TAB}")
    KeyAscii = 0
End If
End Sub
Private Sub Form_Load()
Set BancoDeDados = OpenDatabase(App.Path & "\estoque.mdb")
Set TBMercadoria = BancoDeDados.OpenRecordset("Mercadoria", dbOpenTable)
cmd_grava.Enabled = False
fra_mercadoria.Enabled = False
If TBMercadoria.EOF = False Then
    AtualizaFormulário
End If
If TBMercadoria.RecordCount = "" Then
    cmd_alterar.Enabled = False
    cmd_consultar.Enabled = False
    cmd_excluir.Enabled = False
    cmd_anterior.Enabled = False
    cmd_proximo.Enabled = False
End If
End Sub
Private Sub Form_Unload(Cancel As Integer)
BancoDeDados.Close
TBMercadoria.Close
End Sub
Private Sub txt_codigo_LostFocus()
txt_codigo.Text = Format(txt_codigo.Text, "000")
TBMercadoria.Seek "=", txt_codigo.Text
If TBMercadoria.NoMatch = True Then
    MsgBox "Mercadoria já existe. Tente outro código"
    AtualizaFormulário
    cmd_incluir.Enabled = True
    cmd_alterar.Enabled = True
    cmd_consultar.Enabled = True
    cmd_excluir.Enabled = True
    cmd_grava.Enabled = False
    cmd_sair.Enabled = True
    cmd_anterior.Enabled = True
    cmd_proximo.Enabled = True
    fra_mercadoria.Enabled = False
Else
    TBMercadoria.AddNew
End If
End Sub
Private Sub txt_valor_LostFocus()
txt_valor.Text = Format(txt_valor.Text, "Standard")
End Sub
Private Sub cmd_anterior_Click()
TBMercadoria.MovePrevious
If TBMercadoria.EOF = True Then
    TBMercadoria.MoveNext
End If
AtualizaFormulário
End Sub
Private Sub cmd_proximo_Click()
TBMercadoria.MoveNext
If TBMercadoria.EOF = True Then
    TBMercadoria.MovePrevious
End If
AtualizaFormulário
End Sub
Private Function AtualizaCampos()
TBMercadoria("Código") = txt_codigo
TBMercadoria("Descrição") = txt_descricao
TBMercadoria("Quantidade") = txt_quantidade
TBMercadoria("Valor") = txt_valor
End Function
Private Function AtualizaFormulário()
txt_codigo = TBMercadoria("txt_codigo")
txt_descricao = TBMercadoria("txt_descricao")
txt_quantidade = TBMercadoria("txt_quantidade")
txt_valor = Format(TBMercadoria("txt_valor"), "standard")
End Function
Private Function LimpaFormulário()
txt_codigo = ""
txt_descricao = ""
txt_quantidade = ""
txt_valor = ""
End Function

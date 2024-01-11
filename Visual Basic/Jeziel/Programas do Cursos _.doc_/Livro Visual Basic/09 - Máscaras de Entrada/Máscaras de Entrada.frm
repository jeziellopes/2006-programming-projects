VERSION 5.00
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Begin VB.Form frm_mascaraentrada 
   BackColor       =   &H00800000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Máscara de Entrada"
   ClientHeight    =   1980
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4590
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   1980
   ScaleWidth      =   4590
   StartUpPosition =   3  'Windows Default
   Begin MSMask.MaskEdBox msk_datahora 
      Height          =   375
      Left            =   1320
      TabIndex        =   0
      Top             =   360
      Width           =   2895
      _ExtentX        =   5106
      _ExtentY        =   661
      _Version        =   393216
      MaxLength       =   16
      Mask            =   "##/##/####-##:##"
      PromptChar      =   "_"
   End
   Begin VB.Label lbl_3 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   1320
      TabIndex        =   3
      Top             =   1560
      Width           =   45
   End
   Begin VB.Label lbl_2 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   1320
      TabIndex        =   2
      Top             =   1200
      Width           =   45
   End
   Begin VB.Label lbl_1 
      AutoSize        =   -1  'True
      BackColor       =   &H00800000&
      ForeColor       =   &H00FF8080&
      Height          =   195
      Left            =   1320
      TabIndex        =   1
      Top             =   840
      Width           =   45
   End
End
Attribute VB_Name = "frm_mascaraentrada"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub msk_datahora_Change()
lbl_1.Caption = msk_datahora.Text
lbl_2.Caption = msk_datahora.FormattedText
lbl_3.Caption = msk_datahora.ClipText
End Sub
Private Sub msk_datahora_ValidationError(InvalidText As String, StartPosition As Integer)
Print "Erro de digitação"
End Sub

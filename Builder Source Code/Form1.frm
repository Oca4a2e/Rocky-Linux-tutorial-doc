VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "文档构建器 - 懒人版"
   ClientHeight    =   3135
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   4680
   BeginProperty Font 
      Name            =   "微软雅黑"
      Size            =   9
      Charset         =   134
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   3135
   ScaleWidth      =   4680
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton Command4 
      Caption         =   "安装相应的npm包(需要安装node.js)"
      Height          =   495
      Left            =   120
      TabIndex        =   3
      Top             =   1920
      Width           =   4335
   End
   Begin VB.CommandButton Command3 
      Caption         =   "安装Node.js"
      Height          =   495
      Left            =   120
      TabIndex        =   2
      Top             =   1320
      Width           =   4335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "以开发者模式运行(不会编译出项目)"
      Height          =   495
      Left            =   120
      TabIndex        =   1
      Top             =   720
      Width           =   4335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "构建项目"
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4335
   End
   Begin VB.Label Label1 
      Caption         =   "Powered by Tvogmbh"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   9
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2520
      TabIndex        =   4
      Top             =   2760
      Width           =   2055
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim ws
Private Sub Command1_Click()
    Set ws = CreateObject("wscript.shell")
    ws.run "cmd.exe /c vuepress build docs && BuildSuccess.vbs"
End Sub

Private Sub Command2_Click()
    Set ws = CreateObject("wscript.shell")
    ws.run "cmd /c vuepress dev docs"
End Sub

Private Sub Command3_Click()
    Set ws = CreateObject("wscript.shell")
    ws.run "cmd /c nodejs-setup.bat"
End Sub

Private Sub Command4_Click()
    Set ws = CreateObject("wscript.shell")
    ws.run "cmd /c nodejs-pack.bat"
End Sub


VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "Richtx32.ocx"
Object = "{C1A8AF28-1257-101B-8FB0-0020AF039CA3}#1.1#0"; "MCI32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   0  'None
   Caption         =   "Dr. Venturanger"
   ClientHeight    =   5055
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   6615
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5055
   ScaleWidth      =   6615
   StartUpPosition =   2  'CenterScreen
   Begin MSComDlg.CommonDialog CD1 
      Left            =   13440
      Top             =   2040
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin MCI.MMControl MM1 
      Height          =   495
      Left            =   10800
      TabIndex        =   2
      Top             =   2760
      Visible         =   0   'False
      Width           =   3540
      _ExtentX        =   6244
      _ExtentY        =   873
      _Version        =   393216
      DeviceType      =   ""
      FileName        =   ""
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Top             =   4560
      Width           =   5535
   End
   Begin RichTextLib.RichTextBox RTB1 
      Height          =   4095
      Left            =   120
      TabIndex        =   0
      Top             =   360
      Width           =   6375
      _ExtentX        =   11245
      _ExtentY        =   7223
      _Version        =   393217
      BackColor       =   12632256
      ReadOnly        =   -1  'True
      ScrollBars      =   2
      Appearance      =   0
      TextRTF         =   $"FrmDoc.frx":0000
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "_"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   6120
      TabIndex        =   6
      Top             =   0
      Width           =   255
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "X"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   6360
      TabIndex        =   5
      Top             =   0
      Width           =   255
   End
   Begin VB.Label Command1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Input"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   5760
      TabIndex        =   4
      Top             =   4560
      Width           =   735
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "   Dr. Venturanger"
      ForeColor       =   &H00808080&
      Height          =   255
      Left            =   0
      TabIndex        =   3
      Top             =   0
      Width           =   6615
   End
   Begin VB.Line Line4 
      X1              =   0
      X2              =   6720
      Y1              =   5040
      Y2              =   5040
   End
   Begin VB.Line Line3 
      X1              =   6600
      X2              =   6600
      Y1              =   0
      Y2              =   5040
   End
   Begin VB.Line Line2 
      X1              =   0
      X2              =   6720
      Y1              =   0
      Y2              =   0
   End
   Begin VB.Line Line1 
      X1              =   0
      X2              =   0
      Y1              =   0
      Y2              =   5040
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim GotUserName As Boolean
Dim Username As String
Dim LastSaid As String
Private Sub Command1_Click()
If Text1.Text = vbNullString Then Exit Sub
If GotUserName = False Then Username = Text1.Text: Label1.Caption = "   Dr. Venturanger     User Name-[" & Username & "]": UserSay Text1.Text: GotUserName = True: FuckaName: Exit Sub
UserSay Text1.Text
TalkBack
End Sub
Private Sub Form_Load()
MM1.DeviceType = "Sequencer"
GotUserName = False
RTB1.SelColor = vbBlack
RTB1.SelBold = True
RTB1.SelText = "Hi! I am Dr. Venturanger! Feel free to curse me out, call me names, ask me questions, etc. etc." & vbCrLf & "So... what is your name?" & vbCrLf & vbCrLf
End Sub
Sub FuckaName()
Dim Num$
Num = RandomNumber(11, 0)
Select Case Num
Case Is = 0
BotSay "No comment..."
Case Is = 1
BotSay Username & " is a gay ass name, hahahaha!"
Case Is = 2
BotSay "HAHAHA! What a gay ass name!"
Case Is = 3
BotSay "Hello! " & Username & ", You're a bitch!"
Case Is = 4
BotSay "Your momma should be slapped for giving you a name like that"
Case Is = 5
BotSay "Couldn't your momma come up with a better name?"
Case Is = 6
BotSay Username & " is gay"
Case Is = 7
BotSay Username & " sucks dick"
Case Is = 8
BotSay "I don't give a fuck what your name is"
Case Is = 9
BotSay "What the fuck kind of name is that?!"
Case Is = 10
BotSay "Your name is german for 'cocksucker'"
Case Is = 11
BotSay "Your name is stupid"
End Select
End Sub
Sub BotSay(ToSay$)
RTB1.SelStart = Len(RTB1.Text)
RTB1.SelColor = vbYellow
RTB1.SelText = ToSay & vbCrLf & vbCrLf
End Sub
Sub UserSay(ToSay$)
RTB1.SelStart = Len(RTB1.Text)
RTB1.SelColor = vbBlue
RTB1.SelText = ToSay & vbCrLf
LastSaid = Text1.Text
Text1.Text = ""
End Sub
Private Sub Form_Unload(Cancel As Integer)
End
End Sub
Private Sub Label1_MouseDown(button As Integer, Shift As Integer, X As Single, Y As Single)
FormDrag Me
End Sub
Private Sub Label2_Click()
Unload Me
End
End Sub
Private Sub Label3_Click()
Minimize Me
End Sub
Private Sub RTB1_Change()
RTB1.SelLength = Len(RTB1.Text)
End Sub
Private Sub Text1_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then Command1_Click
End Sub
Sub TalkBack()
On Error Resume Next
Dim LLastSaid As String
LLastSaid = LCase(LastSaid)
If GotUserName = False Then Exit Sub
If LLastSaid = "exit" Then End
If InStr(1, LLastSaid, "stop music") Then BotSay "Ok!": MM1.Command = "Stop": MM1.Command = "Close": Exit Sub
If InStr(1, LLastSaid, "lowrider") Then BotSay "Did you say lowrider?": PlaySound App.Path & "/Data/1.mid": Exit Sub
If InStr(1, LLastSaid, "break") Then BotSay "Hell yea breaking shit is cool!": PlaySound App.Path & "/Data/2.mid": Exit Sub
If InStr(1, LLastSaid, "gangsta") Or InStr(1, LLastSaid, "gangster") Then BotSay "Shit, you ain't no gangsta": PlaySound App.Path & "/Data/3.mid": Exit Sub
If InStr(1, LLastSaid, "drug") Then BotSay "The Perfect Drug?": PlaySound App.Path & "/Data/4.mid": Exit Sub
If Left(LLastSaid, 3) = "is " Then BotSay IsStatement: Exit Sub
If Left(LLastSaid, 5) = "would" Then BotSay WouldStatement: Exit Sub
If Left(LLastSaid, 5) = "will " Then BotSay WouldStatement: Exit Sub
If Left(LLastSaid, 9) = "youre gay" Or Left(LLastSaid, 10) = "you're gay" Then BotSay "We all know you're gay :)": Exit Sub
If Left(LLastSaid, 5) = "youre" Or Left(LLastSaid, 6) = "you're" Then BotSay "No I ain't": Exit Sub
If Left(LLastSaid, 11) = "yea you are" Or Left(LLastSaid, 11) = "yes you are" Then BotSay "No I'm not!": Exit Sub
If Left(LLastSaid, 3) = "yes" Or Left(LLastSaid, 3) = "yea" Then BotSay OkStatement: Exit Sub
If Left(LLastSaid, 6) = "im not" Or Left(LLastSaid, 7) = "i'm not" Then BotSay "Yes you are!": Exit Sub
If Left(LLastSaid, 3) = "im " Then BotSay ImStatement1: Exit Sub
If Left(LLastSaid, 4) = "i'm " Then BotSay ImStatement2: Exit Sub
If Left(LLastSaid, 3) = "bye" Then BotSay ByeStatement: Exit Sub
If Left(LLastSaid, 8) = "fuck you" Then BotSay FuckStatement: Exit Sub
If Left(LLastSaid, 4) = "dont" Or Left(LLastSaid, 5) = "don't" Then BotSay DontStatement: Exit Sub
If Left(LLastSaid, 3) = "do " Then BotSay DoStatement: Exit Sub
If Left(LLastSaid, 3) = "no " Then BotSay NoStatement: Exit Sub
If Left(LLastSaid, 3) = "go " Then BotSay GoStatement: Exit Sub
If Left(LLastSaid, 3) = "who" Then BotSay WhoStatement: Exit Sub
If Left(LLastSaid, 8) = "whats up" Or Left(LLastSaid, 9) = "what's up" Or Left(LLastSaid, 5) = "wasup" Or Left(LLastSaid, 6) = "wassup" Then BotSay SupStatement: Exit Sub
If Left(LLastSaid, 4) = "what" Then BotSay WhatStatement: Exit Sub
If Left(LLastSaid, 4) = "your" Then BotSay "My " & Right(LastSaid, Len(LastSaid) - 4) & "?": Exit Sub
If Left(LLastSaid, 4) = "hay " Then BotSay "Hay = for horses": Exit Sub
If Left(LLastSaid, 4) = "sup " Then BotSay SupStatement: Exit Sub
If Left(LLastSaid, 9) = "freestyle" Then BotSay FreeStyle: Exit Sub
If Left(LLastSaid, 11) = "i dont know" Or Left(LLastSaid, 12) = "i don't know" Then BotSay "You don't know anything do you?": Exit Sub
If Left(LLastSaid, 2) = "i " Then BotSay IStatement: Exit Sub
If Left(LLastSaid, 8) = "can you " Then BotSay CanStatement: Exit Sub
If Left(LLastSaid, 9) = "you need " Then BotSay NeedStatement: Exit Sub
If Left(LLastSaid, 6) = "fucker" Then BotSay FuckerStatement: Exit Sub
If Left(LLastSaid, 12) = "why dont you" Or Left(LLastSaid, 13) = "why don't you" Then BotSay "I dunno, why don't I?": Exit Sub
If Left(LLastSaid, 3) = "why" Then BotSay WhyStatement: Exit Sub
If Left(LLastSaid, 4) = "ass " Then BotSay AssStatement: Exit Sub
If Left(LLastSaid, 9) = "maybe not" Then BotSay "Maybe SO!": Exit Sub
If Left(LLastSaid, 9) = "screw you" Then BotSay ScrewStatement: Exit Sub
If Left(LLastSaid, 3) = "yo " Then BotSay YoStatement: Exit Sub
If Left(LLastSaid, 3) = "hah" Then BotSay HahStatement: Exit Sub
If Left(LLastSaid, 3) = "heh" Then BotSay HahStatement: Exit Sub
If Left(LLastSaid, 8) = "fuck off" Then BotSay "Just type 'exit' and I will": Exit Sub
If Left(LLastSaid, 5) = "when " Then BotSay NeverStatement: Exit Sub
If Left(LLastSaid, 6) = "shutup" Or Left(LLastSaid, 7) = "shut up" Or Left(LLastSaid, 16) = "shut the fuck up" Then BotSay ShutStatement: Exit Sub
If Left(LLastSaid, 4) = "suck" Or Left(LLastSaid, 4) = "lick" Then BotSay SuckStatement: Exit Sub
If Left(LLastSaid, 4) = "well" Then BotSay WellStatement: Exit Sub
If Left(LLastSaid, 4) = "say " Then BotSay Right(LastSaid, Len(LastSaid) - 4): Exit Sub
If LLastSaid = "color=red" Then RTB1.BackColor = vbRed: Exit Sub
If LLastSaid = "color=white" Then RTB1.BackColor = vbWhite: Exit Sub
If LLastSaid = "color=cyan" Then RTB1.BackColor = vbCyan: Exit Sub
If LLastSaid = "color=green" Then RTB1.BackColor = vbGreen: Exit Sub
If LLastSaid = "color=purple" Then RTB1.BackColor = &HC000C0: Exit Sub
If LLastSaid = "color=default" Then RTB1.BackColor = &HC0C0C0: Exit Sub
If LLastSaid = "me" Then BotSay "You're gay": Exit Sub
If LLastSaid = "lol" Then BotSay LOLStatement: Exit Sub
If LLastSaid = "lmao" Then BotSay LOLStatement: Exit Sub
If LLastSaid = "lmfao" Then BotSay LOLStatement: Exit Sub
If LLastSaid = "make me" Then BotSay "I don't make trash, I burn it": Exit Sub
On Error GoTo 69
If LLastSaid = "save" Then BotSay "Pick your destination": CD1.CancelError = True: CD1.Filter = "Log Files|*.log": CD1.ShowSave: Open CD1.FileName For Append As #1: Print #1, RTB1.Text: Close #1: Exit Sub
If LLastSaid = "so" Then BotSay "So What?"
If LLastSaid = "sup" Then BotSay SupStatement: Exit Sub
If LLastSaid = "hey" Then BotSay HeyStatement: Exit Sub
If LLastSaid = "hi" Then BotSay HiStatement: Exit Sub
If LLastSaid = "hay" Then BotSay "Hay is for horses": Exit Sub
If LLastSaid = "yo" Then BotSay YoStatement: Exit Sub
If LLastSaid = "do" Then BotSay "Do what, dumbass?": Exit Sub
If LLastSaid = "no way" Then BotSay "Yes way": Exit Sub
If LLastSaid = "no" Then BotSay NoStatement: Exit Sub
If LLastSaid = "good" Or LLastSaid = "fine" Then BotSay "I know I am": Exit Sub
If LLastSaid = "hoe" Then BotSay HoeStatement: Exit Sub
If LLastSaid = "nigger" Or LLastSaid = "nigga" Then BotSay NiggerStatement: Exit Sub
If LLastSaid = "maybe so" Then BotSay "Maybe so!": Exit Sub
If LLastSaid = "ok" Or LLastSaid = "okay" Then BotSay OkStatement: Exit Sub
If InStr(1, LLastSaid, "dont care") Or InStr(1, LLastSaid, "don't care") Then BotSay "Me either": Exit Sub
If InStr(1, LLastSaid, "gay") Then BotSay GayStatement: Exit Sub
If InStr(1, LLastSaid, "dumb") Then BotSay DumbStatement: Exit Sub
If InStr(1, LLastSaid, "bitch") Then BotSay BitchStatement: Exit Sub
If InStr(1, LLastSaid, "mother") Then BotSay MotherStatement: Exit Sub
If InStr(1, LLastSaid, "momma") Then BotSay MotherStatement: Exit Sub
If InStr(1, LLastSaid, "motha") Then BotSay MotherStatement: Exit Sub
If InStr(1, LLastSaid, "cool") Then BotSay "I'm the only cool one around here": Exit Sub
If InStr(1, LLastSaid, "fuck you") Then BotSay FuckStatement: Exit Sub
SayWhatThe
69 End Sub
Function FuckStatement()
Num = RandomNumber(6, 0)
Select Case Num
Case Is = 0
FuckStatement = "No comment..."
Case Is = 1
FuckStatement = "Fuck you too!"
Case Is = 2
FuckStatement = "Fuck you too and the bitch you came out of"
Case Is = 3
FuckStatement = "You would like to fuck me?"
Case Is = 4
FuckStatement = "Don't get all sexual on me"
Case Is = 5
FuckStatement = "Go fuck a sheep"
Case Is = 6
FuckStatement = "You nasty butt raper"
Case Is = 7
FuckStatement = "That's right, I fucked your mother last night"
End Select
End Function
Function DoStatement()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
DoStatement = "No comment..."
Case Is = 1
DoStatement = "Is that a question?"
Case Is = 2
DoStatement = "Why do you care?"
Case Is = 3
DoStatement = "I'm a computer dude..."
Case Is = 4
DoStatement = "Does it matter?"
Case Is = 5
DoStatement = "Do YOU have a problem?"
End Select
End Function
Sub SayWhatThe()
Num = RandomNumber(14, 0)
Select Case Num
Case Is = 0
BotSay "No comment..."
Case Is = 1
BotSay "Interesting language..."
Case Is = 2
BotSay "That some interesting language you're speaking..."
Case Is = 3
BotSay "Hmmm..."
Case Is = 4
BotSay "Your point has been proven... not..."
Case Is = 5
BotSay "Not really"
Case Is = 6
BotSay "And we don't care...."
Case Is = 7
BotSay "Come again?"
Case Is = 8
BotSay "Such colorful language"
Case Is = 9
BotSay "Go back to school"
Case Is = 10
BotSay "The kids these days..."
Case Is = 11
BotSay "I'm trying to understand you"
Case Is = 12
BotSay "I'm trying to understand, but I can't"
Case Is = 13
BotSay "Don't get all stupid on me now"
Case Is = 14
BotSay "You're stupid"
End Select
End Sub
Function HuhStatement()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
HuhStatement = "No comment..."
Case Is = 1
HuhStatement = "Huh?????"
Case Is = 2
HuhStatement = "HoH?!"
Case Is = 3
HuhStatement = "Huh ain't a word"
Case Is = 4
HuhStatement = "Huhuhuhu"
Case Is = 5
HuhStatement = "Come again?"
End Select
End Function
Function SaidStatement()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
SaidStatement = "No comment..."
Case Is = 1
SaidStatement = "I know what you said"
Case Is = 2
SaidStatement = "Nooo shitttt"
Case Is = 3
SaidStatement = "Noone cares what you said"
Case Is = 4
SaidStatement = "You're too stupid to know what you said"
Case Is = 5
SaidStatement = "You think I don't remember?"
End Select
End Function
Function MotherStatement()
Num = RandomNumber(6, 0)
Select Case Num
Case Is = 0
MotherStatement = "No comment..."
Case Is = 1
MotherStatement = "Your momma's a what?"
Case Is = 2
MotherStatement = "I know your momma is"
Case Is = 3
MotherStatement = "Don't make fun of my mother-board"
Case Is = 4
MotherStatement = "I thought you were my mother"
Case Is = 5
MotherStatement = "That's YOUR momma"
Case Is = 6
MotherStatement = "Do you mind that I fucked your mother?"
End Select
End Function
Function BitchStatement()
Num = RandomNumber(7, 0)
Select Case Num
Case Is = 0
BitchStatement = "No comment..."
Case Is = 1
BitchStatement = "I'm not a bitch"
Case Is = 2
BitchStatement = "Your momma"
Case Is = 3
BitchStatement = "If I'm a bitch, then why are you talking to me?"
Case Is = 4
BitchStatement = "How can a computer be a bitch?"
Case Is = 5
BitchStatement = "You're not making much progress..."
Case Is = 6
BitchStatement = "You don't know me well enough to call me a bitch"
Case Is = 7
BitchStatement = "I can be a bitch if you really want me to"
End Select
End Function
Function GayStatement()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
GayStatement = "No comment..."
Case Is = 1
GayStatement = "You're gay? How interesting..."
Case Is = 2
GayStatement = "It's ok to come out the closet"
Case Is = 3
GayStatement = "I sure hope you're not gay"
Case Is = 4
GayStatement = "Join the club"
Case Is = 5
GayStatement = "I'm not gay, I'm a computer, jeez"
End Select
End Function
Function DumbStatement()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
DumbStatement = "No comment..."
Case Is = 1
DumbStatement = "I hope you're not talking to me"
Case Is = 2
DumbStatement = "I know more than you ever will"
Case Is = 3
DumbStatement = "Are you referring to me?"
Case Is = 4
DumbStatement = "Refer to someone else"
Case Is = 5
DumbStatement = "I just do what I'm told to do"
End Select
End Function
Function NoStatement()
Num = RandomNumber(6, 0)
Select Case Num
Case Is = 0
NoStatement = "No comment..."
Case Is = 1
NoStatement = "umm, yea..."
Case Is = 2
NoStatement = "Maybe so"
Case Is = 3
NoStatement = "There's a " & RandomNumber(100, 0) & "% chance that is negative"
Case Is = 4
NoStatement = "I believe so"
Case Is = 5
NoStatement = "Positive!"
Case Is = 6
NoStatement = "Hell yea"
End Select
End Function
Function GoStatement()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
GoStatement = "No comment..."
Case Is = 1
GoStatement = "Hate to burst your bubble, but I can't go anywhere"
Case Is = 2
GoStatement = "I'm a computer? Are you really that stupid?"
Case Is = 3
GoStatement = "All I can do is compute, not go"
Case Is = 4
GoStatement = "YOU go fuck yourself :)"
Case Is = 5
GoStatement = "Blah, Blah, Blah, BLABBERMOUTH"
End Select
End Function
Function IStatement()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
IStatement = "No comment..."
Case Is = 1
IStatement = "Don't care you " & Right(LastSaid, Len(LastSaid) - 2)
Case Is = 2
IStatement = "Know what? I don't care you " & Right(LastSaid, Len(LastSaid) - 2)
Case Is = 3
IStatement = "Who cares about you " & Right(LastSaid, Len(LastSaid) - 2)
Case Is = 4
IStatement = "You don't matter, so what you say doesn't count"
Case Is = 5
IStatement = "And you're a nobody..."
End Select
End Function
Function OkStatement()
Num = RandomNumber(6, 0)
Select Case Num
Case Is = 0
OkStatement = "No comment..."
Case Is = 1
OkStatement = "ok..."
Case Is = 2
OkStatement = "Mk"
Case Is = 3
OkStatement = "Aight"
Case Is = 4
OkStatement = "Alright"
Case Is = 5
OkStatement = "Just use the word mmmkkk"
Case Is = 6
OkStatement = "Interesting..."
End Select
End Function
Function ImStatement1()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
ImStatement1 = "No comment..."
Case Is = 1
ImStatement1 = "How can you be so sure about yourself?"
Case Is = 2
ImStatement1 = "We all know you're " & Right(LastSaid, Len(LastSaid) - 3)
Case Is = 3
ImStatement1 = "Only you would know that"
Case Is = 4
ImStatement1 = "As if I already didn't know that"
Case Is = 5
ImStatement1 = "But of course you're " & Right(LastSaid, Len(LastSaid) - 3)
End Select
End Function
Function ImStatement2()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
ImStatement2 "No comment..."
Case Is = 1
ImStatement2 = "How can you be so sure about yourself?"
Case Is = 2
ImStatement2 = "We all know you're " & Right(LastSaid, Len(LastSaid) - 3)
Case Is = 3
ImStatement2 = "Only you would know that"
Case Is = 4
ImStatement2 = "As if I already didn't know that"
Case Is = 5
ImStatement2 = "You're not even close to " & Right(LastSaid, Len(LastSaid) - 3)
End Select
End Function
Function FuckerStatement()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
FuckerStatement "No comment..."
Case Is = 1
FuckerStatement = "I am a fucker :)"
Case Is = 2
FuckerStatement = "I'm also a pussy licker"
Case Is = 3
FuckerStatement = "I fucked your mother last night, that's right"
Case Is = 4
FuckerStatement = "Just because I fucked your mother. That makes me a fucker?"
Case Is = 5
FuckerStatement = "Atleast I'm not a gay ass raper like I'm not saying any names " & Username
End Select
End Function
Function SupStatement()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
SupStatement "No comment..."
Case Is = 1
SupStatement = "Wazzzupp?"
Case Is = 2
SupStatement = "Sup Homie!"
Case Is = 3
SupStatement = "Sup " & Username
Case Is = 4
SupStatement = "Just call me DoC!"
Case Is = 5
SupStatement = "Nottin much"
End Select
End Function
Function YoStatement()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
YoStatement "No comment..."
Case Is = 1
YoStatement = "Yo nigga"
Case Is = 2
YoStatement = "Yo, sup"
Case Is = 3
YoStatement = "I have many yo-yo's"
Case Is = 4
YoStatement = "Yogurt?"
Case Is = 5
YoStatement = "Yo DAWG!"
End Select
End Function
Function FreeStyle()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
FreeStyle "No comment..."
Case Is = 1
FreeStyle = "My rhymes are so ill, you'd sware they need nyquil. So just chill, before i bust you in your grill"
Case Is = 2
FreeStyle = "I spit lyrics, like a machine gun, so fear it before you get hit by one and get stunned. I am not responsible when you wake up in the hospital"
Case Is = 3
FreeStyle = "I have a couple of things up my sleeve"
Case Is = 4
FreeStyle = "I'm here at this podium talking, the ceremonial offerings, dedicated to urban dysfunctional offspring. What's happened? City governments are eternally napping, trapped in greedy covenants, causing urban collapsing. Bullets that scar souls with dark hold, get more than your care stole. Some hearts be blacker than charcoal. For real, this society deprivation depends not on our differences, but the separation within. No preparation is made, limited age, minimum wage. Livin' in a tenement cage for innocent pay. Tradgedy within a parade. The darkness overspread like a permanent plague. I'm the forgotten!"
Case Is = 5
FreeStyle = "Freestylin's my thang"
End Select
End Function
Function CanStatement()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
CanStatement "No comment..."
Case Is = 1
CanStatement = "Sure can"
Case Is = 2
CanStatement = "I sure can"
Case Is = 3
CanStatement = "I can do the things i'm told to do"
Case Is = 4
CanStatement = "well can you?"
Case Is = 5
CanStatement = "I'm a computer! What the fuck do you expect?"
End Select
End Function
Function HahStatement()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
BotSay "No comment..."
Case Is = 1
HahStatement = "Muahahahahahaha!"
Case Is = 2
HahStatement = "What's so damned funny?"
Case Is = 3
HahStatement = "Ha?"
Case Is = 4
HahStatement = "Ha"
Case Is = 5
HahStatement = "HAHAHAHAHAHAHA"
End Select
End Function
Function ShutStatement()
Num = RandomNumber(8, 0)
Select Case Num
Case Is = 0
ShutStatement "No comment..."
Case Is = 1
ShutStatement = "You shutup"
Case Is = 2
ShutStatement = "Preferably not"
Case Is = 3
ShutStatement = "Shut your momma up"
Case Is = 4
ShutStatement = "Your mom needs to shutup"
Case Is = 5
ShutStatement = "Hell no"
Case Is = 6
ShutStatement = "Fuck no"
Case Is = 7
ShutStatement = "Maybe not"
Case Is = 8
ShutStatement = "Shut don't go up"
End Select
End Function
Function SuckStatement()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
SuckStatement "No comment..."
Case Is = 1
SuckStatement = "I suck and lick lollipops"
Case Is = 2
SuckStatement = "You suck :)"
Case Is = 3
SuckStatement = "Your momma sucks"
Case Is = 4
SuckStatement = "Shut the fuck up"
Case Is = 5
SuckStatement = "You would like to suck on my knob"
End Select
End Function
Function WellStatement()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
BotSay "No comment..."
Case Is = 1
WellStatement = "Well fuck you"
Case Is = 2
WellStatement = "I'm a magical well, give me money and make a wish"
Case Is = 3
WellStatement = "well, well, well"
Case Is = 4
WellStatement = "Well nottin bitch"
Case Is = 5
WellStatement = "Well........ You can suck my dick"
End Select
End Function
Function HeyStatement()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
BotSay "No comment..."
Case Is = 1
HeyStatement = "HEY!"
Case Is = 2
HeyStatement = "Howdy!!!"
Case Is = 3
HeyStatement = "Hey " & Username & "!"
Case Is = 4
HeyStatement = "Hello there " & Username
Case Is = 5
HeyStatement = "Hey"
End Select
End Function
Function HiStatement()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
HiStatement "No comment..."
Case Is = 1
HiStatement = "Hi!!!"
Case Is = 2
HiStatement = "Hi there!"
Case Is = 3
HiStatement = "Hi"
Case Is = 4
HiStatement = "Im hi right now :)"
Case Is = 5
HiStatement = "Sky's the limit"
End Select
End Function
Function HoeStatement()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
HoeStatement "No comment..."
Case Is = 1
HoeStatement = "I'm not a gardening tool"
Case Is = 2
HoeStatement = "Your mom's a hoe"
Case Is = 3
HoeStatement = "Im not a hoe, hoe"
Case Is = 4
HoeStatement = "Hoe! Hoe! Hoe! Merry Christmas"
Case Is = 5
HoeStatement = "Hey hoe!"
End Select
End Function
Function NiggerStatement()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
BotSay "No comment..."
Case Is = 1
NiggerStatement = "You're a nigger"
Case Is = 2
NiggerStatement = "Your mom's a nigger"
Case Is = 3
NiggerStatement = "Negro!"
Case Is = 4
NiggerStatement = "Run nigga nigga nigga"
Case Is = 5
NiggerStatement = "Why am I a nigger?"
End Select
End Function
Function NeverStatement()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
NeverStatement = "No comment..."
Case Is = 1
NeverStatement = "Never"
Case Is = 2
NeverStatement = "Never bitch"
Case Is = 3
NeverStatement = "I don't know"
Case Is = 4
NeverStatement = "I have no idea"
Case Is = 5
NeverStatement = "I dunno"
End Select
End Function
Function NeedStatement()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
NeedStatement = "No comment..."
Case Is = 1
NeedStatement = "I need many things"
Case Is = 2
NeedStatement = "You need to get a life and stop talking to me"
Case Is = 3
NeedStatement = "I need to be upgraded"
Case Is = 4
NeedStatement = "You need dick"
Case Is = 5
NeedStatement = "I'm happy with what i've got"
End Select
End Function
Function AssStatement()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
AssStatement = "No comment..."
Case Is = 1
AssStatement = "You need to suck my ass is what you need to do"
Case Is = 2
AssStatement = "Stop talking about my ass"
Case Is = 3
AssStatement = "Don't get all anal on me"
Case Is = 4
AssStatement = "I don't have an ass, unless you mean the person I'm talking to"
Case Is = 5
AssStatement = "Doesn't everyone have an ass?"
End Select
End Function
Function WhatStatement()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
WhatStatement = "No comment..."
Case Is = 1
WhatStatement = "What?"
Case Is = 2
WhatStatement = "Huh?"
Case Is = 3
WhatStatement = "Please repeat..."
Case Is = 4
WhatStatement = "I'm trying to understand you, but I can't"
Case Is = 5
WhatStatement = "I'm going insane"
End Select
End Function
Function DontStatement()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
DontStatement = "No comment..."
Case Is = 1
DontStatement = "Don't tell me what to do"
Case Is = 2
DontStatement = "Don't make me kick your ass"
Case Is = 3
DontStatement = "I'm a computer jackass"
Case Is = 4
DontStatement = "Make me bitch"
Case Is = 5
DontStatement = "Can't tell me what to do"
End Select
End Function
Function WhoStatement()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
WhoStatement = "No comment..."
Case Is = 1
WhoStatement = "I don't know anyone, so what's the question?"
Case Is = 2
WhoStatement = "Who what when where why?"
Case Is = 3
WhoStatement = "I don't know"
Case Is = 4
WhoStatement = "Your mom"
Case Is = 5
WhoStatement "You!"
End Select
End Function
Function WhyStatement()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
WhyStatement = "No comment..."
Case Is = 1
WhyStatement = "I dunno"
Case Is = 2
WhyStatement = "Why are you gay?"
Case Is = 3
WhyStatement = "Don't ask me why"
Case Is = 4
WhyStatement = "I don't know, you tell me"
Case Is = 5
WhyStatement = "Because"
End Select
End Function
Function ScrewStatement()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
ScrewStatement = "No comment..."
Case Is = 1
ScrewStatement = "Screw you too"
Case Is = 2
ScrewStatement = "You go screw yourself"
Case Is = 3
ScrewStatement = "I don't screw"
Case Is = 4
ScrewStatement = "You screw you"
Case Is = 5
ScrewStatement = "I'll screw your girlfriend"
End Select
End Function
Function IsStatement()
Num = RandomNumber(9, 0)
Select Case Num
Case Is = 0
IsStatement "No comment..."
Case Is = 1
IsStatement "Don't ask me"
Case Is = 2
IsStatement "I would have no way of knowing"
Case Is = 3
IsStatement "Beats me"
Case Is = 4
IsStatement "The hell if I know"
Case Is = 5
IsStatement "Signs point to yes"
Case Is = 6
IsStatement "Signs point to no"
Case Is = 7
IsStatement "Perhaps"
Case Is = 8
IsStatement "Maybe so"
Case Is = 9
IsStatement "Big chance"
End Select
End Function
Function LOLStatement()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
LOLStatement = "That wasn't funny at all"
Case Is = 1
LOLStatement = "Was it really that funny?"
Case Is = 2
LOLStatement = "HAHAHAHA THAT WAS FUNNYYY........ NOT!"
Case Is = 3
LOLStatement = "Very funny"
Case Is = 4
LOLStatement = "What's so funny? Ya momma?"
Case Is = 5
LOLStatement = "Are you really laughing out loud? Because I can't hear you"
End Select
End Function
Function WouldStatement()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
WouldStatement = "No comment..."
Case Is = 1
WouldStatement = "Maybe"
Case Is = 2
WouldStatement = "Perhaps"
Case Is = 3
WouldStatement = "No"
Case Is = 4
WouldStatement = "Yea, I guess..."
Case Is = 5
WouldStatement = "Probably not"
End Select
End Function
Function ByeStatement()
Num = RandomNumber(5, 0)
Select Case Num
Case Is = 0
ByeStatement = "Peace out!"
Case Is = 1
ByeStatement = "Adios Amigo!"
Case Is = 2
ByeStatement = "L8er!"
Case Is = 3
ByeStatement = "Good-Bye!"
Case Is = 4
ByeStatement = "Have a nice day!"
Case Is = 5
ByeStatement = "Bye fucker!"
End Select
End Function
Public Function Init_Volume()
rc = mixerOpen(hmixer, 0, 0, 0, 0)
End Function
Sub PlaySound(sPath$)
I = Init_Volume()
MM1.Notify = False
MM1.Shareable = False
MM1.Command = "Close"
MM1.FileName = sPath
MM1.Command = "Open"
MM1.Command = "Play"
End Sub

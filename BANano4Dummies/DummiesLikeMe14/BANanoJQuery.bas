B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7.51
@EndOfDesignText@
Sub Class_Globals
	Public JQ As BANanoObject
	Private BANano As BANano
End Sub

'In AppStart add
'BANano.Header.AddJavascriptFile("jquery-3.4.1.min.js")

'Initializes jquery
Public Sub Initialize
	JQ.Initialize("$") 
End Sub
B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=7.51
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano  'ignore
	Private body As BANanoElement
End Sub

Sub Show
	'get the body element of the page
	body = BANano.GetElement("#body")
	'clear the body
	body.Empty
	'set the background color
	body.SetStyle(BANano.ToJson(CreateMap("background-color": "lightblue")))
End Sub

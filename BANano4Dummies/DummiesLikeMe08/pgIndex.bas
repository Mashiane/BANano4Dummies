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
	body.SetStyle(BANano.ToJson(CreateMap("background-image": $"url("./assets/image001.jpg")"$)))
	'the image should not be repeated
	body.SetStyle(BANano.ToJson(CreateMap("background-repeat": "no-repeat")))
	'the image should cover the page
	body.SetStyle(BANano.ToJson(CreateMap("background-size":"cover")))
End Sub

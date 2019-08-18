B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=7.51
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano  'ignore
End Sub

Sub Show
	'get the body element of the page
	Dim body As BANanoElement = BANano.GetElement("#body")
	'clear the body
	body.Empty
	'add the contents
	body.Append("<h1>Hello there, I am page 1. Click the button to go to page 2.</h1>").Append("<br/>")
	'add the button
	Dim btn1 As BANanoElement = body.Append($"<button id="btn1">Page 2</button>"$).Get("#btn1")
	'add a click event to the button
	btn1.HandleEvents("click", Me, "btn1_click")
End Sub

Sub btn1_click(e As BANanoEvent)
	page2.show
End Sub
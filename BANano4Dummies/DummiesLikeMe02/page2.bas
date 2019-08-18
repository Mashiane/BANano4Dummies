B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=7.51
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANAno As BANano  'ignore
End Sub

Sub Show
	'get the body element of the page
	Dim body As BANanoElement = BANAno.GetElement("#body")
	'clear the body
	body.Empty
	'add the contents
	body.Append("<h1>Hello there, I am page 2. Click the button to go to page 1.</h1>").Append("<br/>")
	'add the button
	Dim btn2 As BANanoElement = body.Append($"<button id="btn2">Page 1</button>"$).Get("#btn2")
	'add a click event to the button
	btn2.HandleEvents("click", Me, "btn2_click")
End Sub

Sub btn2_click(e As BANanoEvent)
	page1.show
End Sub
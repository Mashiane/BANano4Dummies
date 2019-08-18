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
	'
	Dim h2 As BANanoHTML
	h2.Initialize("h2").SetText("Formatting").PopToParent("body")
	'
	Dim p1 As BANanoElement = body.Append($"<p id="p1"></p>"$).Get("#p1")
	p1.SetHTML(BANano.SF($"{B}This is a paragraph{/B}"$))
	
	Dim p2 As BANanoElement = body.Append($"<p id="p2"></p>"$).Get("#p2")
	p2.SetHTML(BANano.SF($"{I}This is a paragraph{/I}"$))
	
	Dim p3 As BANanoElement = body.Append($"<p id="p3"></p>"$).Get("#p3")
	p3.SetHTML(BANano.SF($"{U}This is a paragraph{/U}"$))
	
	Dim p4 As BANanoElement = body.Append($"<p id="p4"></p>"$).Get("#p4")
	p4.SetHTML(BANano.SF($"{C:#cd24d6}This is a paragraph{/C}"$))
	
	Dim p5 As BANanoElement = body.Append($"<p id="p5"></p>"$).Get("#p5")
	
	body.Append("</br>")
End Sub

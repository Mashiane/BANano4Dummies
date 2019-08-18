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
	body.Append("<h1>Marking up Content</h1>").Append("<br/>")
	'
	SectionMarkup1
	SectionMarkup2
	'
	body.Append("</br>")
End Sub
'
'Sub SectionMarkup
'	Dim sect2 As BANanoHTML
'	sect2.Initialize("section").SetID("sect2")
'	'add section to the page
'	Dim section As BANanoElement = body.Append(sect2.html).Get("#sect2")
'	'
'	Dim h1 As BANanoHTML
'	h1.Initialize("h1").SetText("HTML5 Overview")
'	section.Append(h1.HTML)
'		'
'	Dim p As BANanoHTML
'	p.Initialize("p").SetText("HTML5 is used to structure documents on the web. It contains a lot of useful elements (Or tags).")
'	section.Append(p.HTML)
'	'
'End Sub


Sub SectionMarkup1
	'append the section to the page
	Dim section As BANanoElement = body.Append($"<section id="sect1"></section>"$).Get("#sect1")
	'
	section.Append($"<h1>HTML5 Overview</h1>"$)
	'
	section.Append($"<p>HTML5 is used to structure documents on the web. It contains a lot of useful elements (Or tags).</p>"$)
	'
	
End Sub


Sub SectionMarkup2
	'append the section to the page
	body.Append($"<section id="sect2"></section>"$)
	Dim section As BANanoElement = body.Get("#sect2")
	'
	Dim h1 As BANanoElement = section.Append($"<h1 id="h1">HTML5 Overview</h1>"$).Get("#h1")
	'
	Dim p As BANanoElement = section.Append($"<p id="p1">HTML5 is used to structure documents on the web. It contains a lot of useful elements (Or tags).</p>"$).Get("#p1")
	'
End Sub
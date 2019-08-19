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
	'create an empty div and get it
	Dim div As BANanoElement = body.Append($"<div id="div1"></div>"$).Get("#div1")
	'set border
	div.SetStyle(BANano.ToJson(CreateMap("border-style": "solid","width":"300px","height":"300px")))
	'add a paragraph to the div
	Dim p1 As BANanoElement = div.Append($"<p id="p1"></p>"$).Get("#p1")
	'set the text of the paragraph via code
	p1.SetText("This content is added via code!")
	'set the left margin of the paraphaph
	p1.SetStyle(BANano.ToJson(CreateMap("margin-left":"30px")))
	'set the padding of the paragraph
	p1.SetStyle(BANano.ToJson(CreateMap("padding":"24px")))
End Sub

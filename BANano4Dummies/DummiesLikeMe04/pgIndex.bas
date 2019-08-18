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
	h2.Initialize("h2").SetText("Styling Components").PopToParent("body")
	'
	Dim p As BANanoHTML
	p.Initialize("p").SetText("The style attribute is used to specify the styling of an element, like color:").PopToParent("body")
	
	'Dim p1 As BANanoHTML
	'p1.Initialize("p").SetText("This is a paragraph.").SetColor("red").PopToParent("body")
	'
	Dim p11 As BANanoElement = body.Append($"<p id="p1">This is a paragraph</p>"$).Get("#p1")
	p11.SetStyle(BANano.ToJson(CreateMap("color":"red")))
	
	Dim p22 As BANanoElement = body.Append($"<p id="p2">This is a paragraph</p>"$).Get("#p2")
	p22.SetStyle(BANano.ToJson(CreateMap("background-color":"powderblue")))
	
	Dim p33 As BANanoElement = body.Append($"<p id="p3">This is a paragraph</p>"$).Get("#p3")
	p33.SetStyle(BANano.ToJson(CreateMap("font-family":"verdana")))
	
	Dim p44 As BANanoElement = body.Append($"<p id="p4">This is a paragraph</p>"$).Get("#p4")
	p44.SetStyle(BANano.ToJson(CreateMap("font-size":"300%")))
	
	Dim p55 As BANanoElement = body.Append($"<p id="p5">This is a paragraph</p>"$).Get("#p5")
	p55.SetStyle(BANano.ToJson(CreateMap("text-align":"center")))
	
	'Dim p2 As BANanoHTML
	'p2.Initialize("p").SetText("This is a paragraph.").SetBackgroundColor("powderblue").PopToParent("body")
	'Dim p3 As BANanoHTML
	'p3.Initialize("p").SetText("This is a paragraph.").SetFontFamily("verdana").PopToParent("body")
	'Dim p4 As BANanoHTML
	'p4.Initialize("p").SetText("This is a paragraph.").SetFontSize("300%").PopToParent("body")
	'Dim p5 As BANanoHTML
	'p5.Initialize("p").SetText("This is a paragraph.").SetTextAlignCenter(True).PopToParent("body")
	
	
	body.Append("</br>")
End Sub

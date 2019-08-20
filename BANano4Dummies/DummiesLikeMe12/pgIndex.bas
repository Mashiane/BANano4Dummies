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
	Private slide As BANanoElement
End Sub

Sub Show
	'get the body element of the page
	body = BANano.GetElement("#body")
	'clear the body
	body.Empty
	'
	body.Append($"<label id="lblvalue">Value goes here</label>"$)
	'
	body.Append("<br/>")
	
	'<input id="slide" type="range" min="0" max="100" value="100" onChange="changescale(this.value)" Step="10"/>
	slide = body.Append($"<input id="slide"></input>"$).Get("#slide")	
	slide.SetAttr("type","range")
	slide.SetAttr("min", 0)
	slide.SetAttr("max", 100)
	slide.SetAttr("value",100)
	slide.SetAttr("step",10)
	slide.AddEventListener("change", BANano.CallBack(Me, "changescale", Null), True)
End Sub

Sub changescale()
	'get the value of the element
	Dim value As String = slide.GetValue
	'
	Dim lbl As BANanoElement = BANano.GetElement("#lblvalue")
	'
	lbl.SetText(value)
End Sub
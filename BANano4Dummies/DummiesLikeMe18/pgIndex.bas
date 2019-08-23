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
	Private js As BANanoJavaScript
End Sub
'
Sub Show
	js.Initialize
	'get the body of the page
	body = js.getElementById("body")
	'
	Dim h1 As BANanoElement = js.createElement("h1")
	h1.SetText("H1 My First Heading")
	'
	Dim h2 As BANanoElement = js.createElement("h2")
	h2.SetText("This is heading 2")
	'
	Dim h3 As BANanoElement = js.createElement("h3")
	h3.SetText("This is heading 3")
	'
	Dim h4 As BANanoElement = js.createElement("h4")
	h4.SetText("This is heading 4")
	js.setStyle(h4, CreateMap("font-size":"60px"))
	'
	
	Dim p1 As BANanoElement = js.createElement("p")
	p1.SetText("My First Paragraph")
	'
	'add a div to the page
	Dim div As BANanoElement = js.createElement("div")
	'add the div to the page
	js.appendChild(body, Array(h1, h2, h3, h4, p1, div))
	'
	'add an anchor using pure javascript
	Dim link As BANanoElement = js.createElement("a")
	js.SetInnerHTML(link, "grapes")
	js.SetAttribute(link, CreateMap("href": "https://en.wikipedia.org/wiki/Grape", "title": "Wikipedia page on grapes"))
	'add to div
	js.appendChild(div, Array(link))
	'
	'add an image
	Dim img As BANanoElement = js.createElement("img")
	img.SetAttr("src", "./assets/winslow.jpg")
	img.SetAttr("alt", "Winslow")
	img.SetAttr("width", "104")
	img.SetAttr("height", "142")
	body.Append(img)  'ignore
	'
	body.Append("<p>This is a button</p>")
	'add a button
	body.Append($"<button>Click me</button>"$)
	'
	'create a unordered - list
	Dim ul As BANanoElement = js.createElement("ul")
	Dim items As List
	items.Initialize 
	items.AddAll(Array("Coffee","Milk","Tea"))
	For Each strItem As String In items
		Dim li As BANanoElement = js.createElement("li")
		li.SetText(strItem)
		ul.Append(li)   'ignore)	
	Next
	'
	'create an ordered list
	Dim ol As BANanoElement = js.createElement("ol")
	Dim items As List
	items.Initialize
	items.AddAll(Array("Coffee","Milk","Tea"))
	For Each strItem As String In items
		Dim li As BANanoElement = js.createElement("li")
		li.SetText(strItem)
		ol.Append(li)   'ignore
	Next
	'
	Dim p2 As BANanoElement = js.createElement("p")
	js.SetInnerHTML(p2, "This is a <br> paragraph with a line break.")
	
	'
	Dim p3 As BANanoElement = js.createElement("p")
	p3.SetText("This is a paragraph!")
	js.setStyle(p3, CreateMap("color": "red", "font-size": "24px"))
	'
	Dim hr As BANanoElement = js.createElement("hr")
	'
	js.AppendMulti(body, Array(ul ,ol, p2, p3, hr))
	'
	Dim pre As BANanoElement = js.createElement("pre")
	pre.SetText($"My Bonnie lies over the ocean.

  My Bonnie lies over the sea.

  My Bonnie lies over the ocean.

  Oh, bring back my Bonnie to me."$)
	body.Append(pre)  'ignore
	'
	'create an image you can click
	Dim a1 As BANanoElement = js.createElement("a")
	a1.SetAttr("href", "https://www.w3schools.com")
	'
	Dim img2 As BANanoElement = js.createElement("img")
	js.setAttribute(img2, CreateMap("src": "https://www.w3schools.com/images/w3schools_green.jpg", "alt": "W3Schools.com"))
	js.appendChild(a1,Array(img2))
	'
	div.Append(a1)  'ignore
End Sub


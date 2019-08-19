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
	'*** CREATE MARKUP ****
	
	'<canvas id="mycanvas" width="600" height="400">
	'Your browser does Not support the canvas element.
	'</canvas>
	
	'create a canvas, we markup the code with an own class.
	'Dim cHTML As BANanoHTML
	'cHTML.Initialize("canvas").SetID("mycanvas").SetWidth("600").SetHeight("400")
	'cHTML.SetText("Your browser does not support the HTML 5 Canvas.")
	'lets set a border around the canvas so that we see the canvas
	'cHTML.SetStyle("border", "1px solid black")
	'***END MARKUP****"
	'we add the canvas to the body using our markup
	'body.Append(cHTML.HTML)
	
	'*** BANANO WAY ***
	Dim canvas As BANanoElement = body.Append($"<canvas id="mycanvas"></canvas>"$).Get("#mycanvas")
	canvas.SetAttr("width","600")
	canvas.SetAttr("height","400")
	canvas.SetText("Your browser does not support the HTML 5 Canvas.")
	canvas.SetStyle(BANano.ToJson(CreateMap("border":"1px solid black")))
	'*** BANANO WAY ***
	'
	'get the drawing context
	'****javascript
	'var ctx = document.getElementById('mycanvas').getContext('2d');
	'***banano 1.get the document
	'Dim doc As BANanoObject = BANano.Window.GetField("document")
	'2. run the method
	'Dim mycanvas As BANanoObject = doc.RunMethod("getElementById", Array("mycanvas"))
	'get the document context
	'Dim ctx As BANanoObject = mycanvas.RunMethod("getContext", Array("2d"))
	BANano.RunJavascriptMethod("drawOnCanvas", Null)
End Sub

#if javascript
function drawOnCanvas() {
	ctx = document.getElementById('mycanvas').getContext('2d');
	ctx.fillStyle = "#E34C26";
	ctx.beginPath();
	ctx.moveTo(39, 250);
	ctx.lineTo(17, 0);
	ctx.lineTo(262, 0);
	ctx.lineTo(239, 250);
	ctx.lineTo(139, 278);
	ctx.closePath();
	ctx.fill();
}

#End If

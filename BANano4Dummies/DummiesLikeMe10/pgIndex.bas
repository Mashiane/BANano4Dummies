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
	
	'<canvas id="mycanvas" width="600" height="400">
	'Your browser does Not support the canvas element.
	'</canvas>
		
	Dim canvas As BANanoElement = body.Append($"<canvas id="mycanvas"></canvas>"$).Get("#mycanvas")
	canvas.SetAttr("width","600")
	canvas.SetAttr("height","400")
	canvas.SetText("Your browser does not support the HTML 5 Canvas.")
	canvas.SetStyle(BANano.ToJson(CreateMap("border":"1px solid black")))
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

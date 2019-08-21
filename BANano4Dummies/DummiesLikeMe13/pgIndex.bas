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

#if css
body
{
font: 1em Verdana, Geneva, sans-serif;
padding: 0;
margin: 5px;
color: Black;
background-color: WhiteSmoke;
}
div
{
padding: 0;
margin: 0;
}
button
{
cursor: pointer;
}
.hidden
{
display: none;
}
#End If

Sub Show
	'get the body element of the page
	body = BANano.GetElement("#body")
	'clear the body
	body.Empty
	'
	body.Append($"<div id="app">
<header>App</header>
<div id="main"></div>
<footer></footer>
</div>"$)
End Sub
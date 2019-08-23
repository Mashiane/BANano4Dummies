B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7.51
@EndOfDesignText@
Sub Class_Globals
	Private document As BANanoObject
	Private BANano As BANano  'ignore
End Sub

Public Sub Initialize
	document = BANano.Window.GetField("document")
End Sub

#if javascript
	function useStrict(){
		"use strict";
	}
#End If


'use strict to ensure variables are defined
Sub UseStrict
	'ensure variable declarations are done
	BANano.RunJavascriptMethod("useStrict",Null)
End Sub

'javascript create element
Sub createElement(arguements As String) As BANanoElement
	'var newItem = document.createElement("LI");
	Dim bo As BANanoObject = document.RunMethod("createElement", Array(arguements))
	Return BANano.ToElement(bo)
End Sub

Sub createTextNode(arguements As String) As BANanoElement
	Dim bo As BANanoObject = document.RunMethod("createTextNode", Array(arguements))
	Return BANano.ToElement(bo)
End Sub

Sub getElementById(arguements As String) As BANanoElement
	'var list = document.getElementById("myList");
	Dim bo As BANanoObject = document.RunMethod("getElementById", Array(arguements))
	Return BANano.ToElement(bo)
End Sub

Sub appendChild(parent As BANanoElement, child As BANanoElement)
	Dim bo As BANanoObject = BANano.ToObject(child)
	parent.RunMethod("appendChild", Array(bo))
End Sub

Sub insertBefore(parent As BANanoElement, child As BANanoElement)
	Dim bo As BANanoObject = BANano.ToObject(child)
	parent.RunMethod("insertBefore", Array(bo))
End Sub

Sub childNodes(parent As BANanoElement) As List
	Dim items As List = parent.RunMethod("childNodes", Null)
	Return items
End Sub

Sub focus(arguements As String)
	'document.getElementById("myAnchor").focus();
	document.RunMethod("getElementById", Array(arguements)).RunMethod("focus", Null)
End Sub

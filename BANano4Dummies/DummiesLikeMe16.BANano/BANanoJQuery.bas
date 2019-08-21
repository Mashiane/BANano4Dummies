B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7.51
@EndOfDesignText@
#IgnoreWarnings:12
Sub Class_Globals
	Public JQuery As BANanoObject
	Private BANano As BANano
End Sub

'In AppStart add
'BANano.Header.AddJavascriptFile("jquery-3.4.1.min.js")

'Initializes jquery
Public Sub Initialize
	JQuery.Initialize("$")
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

'set the text for an element
Sub SetText(elID As String, text As String) As BANanoJQuery
	JQuery.Selector(elID).RunMethod("text", text)
	Return Me
End Sub

'set text to a banano object
Sub SetTextBO(bo As BANanoObject, text As String) As BANanoJQuery
	bo.RunMethod("text", text)
	Return Me
End Sub

'create an element
Sub createElement(tag As String) As BANanoObject
	Dim markup As String = $"<${tag}></${tag}>"$
	Dim newEL As BANanoObject = JQuery.Selector(markup)
	Return newEL
End Sub

'set the value for an element
Sub SetValue(elID As String, val As Object) As BANanoJQuery
	JQuery.Selector(elID).RunMethod("val", val)
	Return Me
End Sub


'append content
Sub Append(elID As String, text As Object) As BANanoJQuery
	JQuery.Selector(elID).RunMethod("append", text)
	Return Me
End Sub

'set focus to element
Sub Focus(elID As String) As BANanoJQuery
	JQuery.Selector(elID).RunMethod("focus", Null)
	Return Me
End Sub

'get the value of an element
Sub GetValue(elID As String) As Object
	Dim obj As Object = JQuery.Selector(elID).RunMethod("val", Null).result
	Return obj
End Sub

'hide an element
Sub Hide(elID As String) As BANanoJQuery
	JQuery.Selector(elID).RunMethod("hide", Null)
	Return Me
End Sub

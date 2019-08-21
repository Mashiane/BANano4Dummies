B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7.51
@EndOfDesignText@
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


'append content
Sub Append(elID As String, text As String) As BANanoJQuery
	JQuery.Selector(elID).RunMethod("append", text)
	Return Me
End Sub
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
Sub SetText(elID As Object, text As Object) As BANanoJQuery
	JQuery.Selector(elID).RunMethod("text", text)
	Return Me
End Sub

'create an element
Sub createElement(tag As Object) As BANanoObject
	Dim newEL As BANanoObject = JQuery.Selector(tag)
	Return newEL
End Sub

'get the parent node from the event
Sub ParentNode(e As BANanoEvent) As BANanoElement
	'get the target from event
	Dim target As BANanoObject = e.OtherField("target")
	'get the parentNode from target
	Dim parent As BANanoElement = BANano.ToElement(target.GetField("parentNode"))
	Return parent
End Sub

'insert before
Sub InsertBefore(source As BANanoElement, target As BANanoElement)
	Dim s As BANanoObject = BANano.ToObject(source)
	Dim t As BANanoObject = BANano.ToObject(target)
	JQuery.Selector(s).RunMethod("insertBefore", t)
End Sub

'insert after
Sub InsertAfter(source As Object, target As Object)
	Dim s As BANanoObject = BANano.ToObject(source)
	Dim t As BANanoObject = BANano.ToObject(target)
	JQuery.Selector(s).RunMethod("insertAfter", t)
End Sub

'move an item up
Sub MoveUp(itm As BANanoElement)
	'get the previous sibling
	Dim prev As BANanoElement = PreviousSibling(itm)
	'move the item up
	InsertBefore(itm,prev)
End Sub

'move an item down
Sub MoveDown(itm As BANanoElement)
	Dim sNext As BANanoElement = NextSibling(itm)
	'move the item down
	InsertAfter(itm,sNext)
End Sub

'get prev sibling
Sub PreviousSibling(itm As BANanoElement) As BANanoElement
	'get the previous sibling
	Return  BANano.ToElement(itm.GetField("previousSibling"))
End Sub


'get next sibling
Sub NextSibling(itm As BANanoElement) As BANanoElement
	'get the previous sibling
	Return  BANano.ToElement(itm.GetField("nextSibling"))
End Sub

'get last child
Sub LastChild(itm As BANanoElement) As BANanoElement
	'get the last child that keeps the span
	Return BANano.ToElement(itm.GetField("lastChild"))
End Sub

'remove
Sub Remove(o As BANanoElement)
	o.RunMethod("remove", Null)
End Sub

'set the value for an element
Sub SetValue(elID As Object, val As Object) As BANanoJQuery
	JQuery.Selector(elID).RunMethod("val", val)
	Return Me
End Sub


'append content
Sub Append(elID As Object, text As Object) As BANanoJQuery
	JQuery.Selector(elID).RunMethod("append", text)
	Return Me
End Sub

'append items to element
Sub AppendMulti(elID As BANanoObject, toAppend As List) As BANanoJQuery
	For Each obj As Object In toAppend
		elID.RunMethod("append", Array(obj))
	Next
	Return Me
End Sub

'set focus to element
Sub Focus(elID As Object) As BANanoJQuery
	JQuery.Selector(elID).RunMethod("focus", Null)
	Return Me
End Sub

'get the value of an element
Sub GetValue(elID As Object) As Object
	Dim obj As Object = JQuery.Selector(elID).RunMethod("val", Null).result
	Return obj
End Sub

'hide an element
Sub Hide(elID As Object) As BANanoJQuery
	JQuery.Selector(elID).RunMethod("hide", Null)
	Return Me
End Sub


'select
Sub GetItems(elID As String) As List
	Dim lst As List = JQuery.Selector(elID)
	Return lst
End Sub
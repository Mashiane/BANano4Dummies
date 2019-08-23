B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7.51
@EndOfDesignText@
#IgnoreWarnings:12
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

'createElement
Sub createElement(arguements As String) As BANanoElement
	'var newItem = document.createElement("LI");
	Dim bo As BANanoObject = document.RunMethod("createElement", Array(arguements))
	Return BANano.ToElement(bo)
End Sub

'createTextNode
Sub createTextNode(arguements As Object) As BANanoElement
	Dim bo As BANanoObject = document.RunMethod("createTextNode", Array(arguements))
	Return BANano.ToElement(bo)
End Sub

'getElementById
Sub getElementById(arguements As String) As BANanoElement
	'var list = document.getElementById("myList");
	Dim bo As BANanoObject = document.RunMethod("getElementById", Array(arguements))
	Return BANano.ToElement(bo)
End Sub

'getElementsByTagName
Sub getElementsByTagName(parent As BANanoElement, arguements As String) As List
	'var list = document.getElementsByTagName("<p>");
	Dim lst As List = parent.RunMethod("getElementsByTagName", Array(arguements)).result
	Return lst
End Sub

'getElementsByClassName
Sub getElementsByClassName(parent As BANanoElement, arguements As BANanoElement) As List
	'var list = element.getElementsByTagName("<p>");
	Dim lst As List = parent.RunMethod("getElementsByClassName", Array(arguements)).result
	Return lst
End Sub


'getAttributeNames
Sub getAttributeNames(parent As BANanoElement) As List
	'var list = element.getAttributeNames("<p>");
	Dim lst As List = parent.RunMethod("getAttributeNames", Null).result
	Return lst
End Sub

'appendChild
Sub appendChild(parent As BANanoElement, childs As List)
	For Each child As BANanoElement In childs
		Dim bo As BANanoObject = BANano.ToObject(child)
		parent.RunMethod("appendChild", Array(bo))
	Next	
End Sub

'insertBefore
Sub insertBefore(parent As BANanoElement, child As BANanoElement)
	Dim bo As BANanoObject = BANano.ToObject(child)
	parent.RunMethod("insertBefore", Array(bo))
End Sub

'before
Sub beforeElement(parent As BANanoElement, child As BANanoElement)
	Dim bo As BANanoObject = BANano.ToObject(child)
	parent.RunMethod("before", Array(bo))
End Sub

'before
Sub before(parent As BANanoElement, child As String)
	parent.RunMethod("before", Array(child))
End Sub

'after
Sub after(parent As BANanoElement, child As String)
	parent.RunMethod("after", Array(child))
End Sub


'childNodes
Sub childNodes(parent As BANanoElement) As List
	Dim items As List = parent.RunMethod("childNodes", Null).result
	Return items
End Sub


'children
Sub children(parent As BANanoElement) As List
	Dim items As List = parent.RunMethod("children", Null).result
	Return items
End Sub


'remove
Sub remove(parent As BANanoElement)
	parent.RunMethod("remove", Null)
End Sub

'querySelector
Sub querySelector(parent As BANanoElement) As BANanoElement
	Dim bo As BANanoObject = parent.RunMethod("querySelector", Null)
	Return BANano.ToElement(bo)
End Sub


'childElementCount
Sub childElementCount(parent As BANanoElement) As Long
	'var count = node.childElementCount;
	Dim lng As Long = parent.RunMethod("childElementCount", Null)
	Return lng
End Sub

'getAttribute
Sub getAttribute(parent As BANanoElement) As Object
	'var attribute = element.getAttribute(attributeName);
	Dim lng As Object = parent.RunMethod("getAttribute", Null)
	Return lng
End Sub


'getStyle
Sub getStyle(parent As BANanoElement) As Object
	'var attribute = element.style
	Dim lng As Object = parent.GetField("style").result
	Return lng
End Sub


'querySelectorAll
Sub querySelectorAll(parent As BANanoElement) As List
	'var matches = document.querySelectorAll("p");
	Dim items As List = parent.RunMethod("querySelectorAll", Null).result
	Return items
End Sub


'focus
Sub focus(arguements As String)
	'document.getElementById("myAnchor").focus();
	document.RunMethod("getElementById", Array(arguements)).RunMethod("focus", Null)
End Sub


'blur
Sub blur(arguements As String)
	'document.getElementById("myAnchor").focus();
	document.RunMethod("getElementById", Array(arguements)).RunMethod("blur", Null)
End Sub

'GetOuterHTML
Sub GetOuterHTML(el As BANanoElement) As String
	'var content = element.outerHTML;
	Dim sout As String = el.GetFIeld("outerHTML").Result
	Return sout
End Sub

'SetOuterHTML
Sub SetOuterHTML(el As BANanoElement, sout As String)
	'element.outerHTML = htmlString;
	el.SetField("outerHTML", sout)
End Sub

'GetInnerHTML
Sub GetInnerHTML(el As BANanoElement) As String
	'var content = element.innerHTML;
	Dim sout As String = el.GetField("innerHTML").Result
	Return sout
End Sub

'SetInnerHTML
Sub SetInnerHTML(el As BANanoElement, sout As String)
	'element.innerHTML = htmlString;
	el.SetField("innerHTML", sout)
End Sub


'SetInnerText
Sub SetInnerText(el As BANanoElement, sout As String)
	'element.innerText = htmlString;
	el.SetField("innerText", sout)
End Sub

'GetTitle 
Sub GetTitle(el As BANanoElement) As String
	'var content = element.title;
	Dim sout As String = el.GetField("title").result
	Return sout
End Sub

'SetTitle 
Sub SetTitle(el As BANanoElement, sout As String)
	'element.title = htmlString;
	el.SetField("title", sout)
End Sub

'prepend
Sub prepend(parent As BANanoElement, child As Object)
	'parent.prepend(p);
	parent.RunMethod("prepend", Array(child))
End Sub

'append
Sub append(parent As BANanoElement, child As Object)
	'parent.append(p);
	parent.RunMethod("append", Array(child))
End Sub


'replaceWith
Sub replaceWith(parent As BANanoElement, child As Object)
	'parent.replaceWith(p);
	parent.RunMethod("replaceWith", Array(child))
End Sub

'setAttribute
Sub setAttribute(parent As BANanoElement, props As Map)
	'Element.setAttribute(name, value);
	For Each k As String In props.keys
		Dim v As String = props.Get(k)
		parent.RunMethod("setAttribute", Array(k, v))
	Next
End Sub

'setStyle, updating existing tyles
Sub setStyle(parent As BANanoElement, props As Map)
	Dim styles As Map = parent.GetField("style").result
	For Each k As String In props.keys
		Dim v As String = props.Get(k)
		styles.Put(k,v)
	Next
End Sub

'hasAttribute
Sub hasAttribute(parent As BANanoElement, prop As Object) As Boolean
	'var hasit = Element.hasAttribute(name, value);
	Dim bo As Boolean = parent.RunMethod("hasAttribute", Array(prop)).Result
	Return bo
End Sub

'removeAttribute
Sub removeAttribute(parent As BANanoElement, props As List)
	'Element.removeAttribute(name, value);
	For Each strp As String In props
		parent.RunMethod("removeAttribute", Array(strp))
	Next
End Sub


'get the parent node from the event
Sub ParentNode(e As BANanoEvent) As BANanoElement
	'get the target from event
	Dim target As BANanoObject = e.OtherField("target")
	'get the parentNode from target
	Dim parent As BANanoElement = BANano.ToElement(target.GetField("parentNode"))
	Return parent
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

'append items to element
Sub AppendMulti(elID As BANanoElement, toAppend As List)
	For Each obj As BANanoElement In toAppend
		Dim child As BANanoObject = BANano.ToObject(obj)
		elID.RunMethod("append", Array(child))
	Next
End Sub
B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7.51
@EndOfDesignText@
Sub Class_Globals
	Private Input As UOENowHTML
	Public ID As String
	Private Modal As UOENowHTML
	Private Card As UOENowHTML
	Private h3 As UOENowHTML
	Public Body As UOENowHTML
End Sub

Public Sub Initialize(sid As String) As MiniCSSModal
	ID = sid.ToLowerCase
	Modal.Initialize("", "div").AddClass("modal")
	Input = BANanoMiniCSSCode.CreateInputCheckBox(ID).AddClass("modal")
	Card = BANanoMiniCSSCode.CreateCard("",False).SetLarge(True)
	Dim lbl As UOENowHTML = BANanoMiniCSSCode.CreateLabel("").SetFOR(ID).AddClass("modal-close")
	Card.AddElement(lbl)
	h3 = BANanoMiniCSSCode.CreateH3("").SetSection(True).SetDoublePadded(True)
	Body.Initialize("","div").AddClass("section") 
	Return Me 
End Sub

Sub SetHeading(h As String) As MiniCSSModal
	h3.SetText(h)
	Return Me
End Sub

Sub HTML As String
	Card.AddElement(h3)
	Card.AddElement(Body)
	Modal.AddElement(Card)
	Dim sb As StringBuilder
	sb.Initialize 
	sb.Append(Input.HTML)
	sb.Append(Modal.HTML)	
	Return sb.tostring
End Sub

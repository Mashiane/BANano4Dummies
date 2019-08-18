B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7.51
@EndOfDesignText@
Sub Class_Globals
	Public ID As String
	Public Accordion As UOENowHTML
	Private bmultiple As Boolean
End Sub

'Initializes the accordion
Public Sub Initialize(sid As String) As MiniCSSAccordion
	ID = sid.tolowercase
	Accordion.Initialize(ID,"div").AddClass("collapse")
	bmultiple = False
	Return Me
End Sub

Sub SetSelectMultiple(b As Boolean) As MiniCSSAccordion
	bmultiple = b
	Return Me
End Sub

Sub HTML As String
	Return Accordion.HTML
End Sub

Sub AddItem(itmID As String, heading As String, bExpanded As Boolean, Body As UOENowHTML)
	Dim input As UOENowHTML
	If bmultiple Then
		input = BANanoMiniCSSCode.CreateInputCheckBox(itmID).SetAttr("aria-hidden", True)
	Else
		input = BANanoMiniCSSCode.CreateInputRadio(itmID,"").SetAttr("aria-hidden", True)
	End If
	If bmultiple = False Then input.SetNAME(ID)
	If bExpanded Then input.SetAttr("checked", True)
	Dim lbl As UOENowHTML = BANanoMiniCSSCode.CreateLabel("").SetFOR(itmID).SetAttr("aria-hidden", True).SetText(heading)
	'
	Dim sb As StringBuilder
	sb.Initialize 
	sb.Append(input.HTML)
	sb.Append(lbl.HTML)
	sb.Append(Body.HTML)
	Accordion.AddContent(sb.ToString)
End Sub
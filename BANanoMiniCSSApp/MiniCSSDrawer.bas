B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7.51
@EndOfDesignText@
Sub Class_Globals
	Public Nav As UOENowHTML
	Public ID As String
	Public Drawer As UOENowHTML
End Sub

'Initializes the drawer
Public Sub Initialize(sID As String) As MiniCSSDrawer
	ID = sID.tolowercase
	Drawer.Initialize(ID,"input").AddClass("drawer").SetVALUE("on").SetTYPE("checkbox")
	Nav.Initialize("nav-drawer", "nav").AddClass("col-md-4").AddClass("col-lg-3")
	Dim h3 As UOENowHTML = BANanoMiniCSSCode.CreateH3("").SetText("Menu")
	Dim close As UOENowHTML = BANanoMiniCSSCode.CreateLabel("").SetFOR(ID).AddClass("button").AddClass("drawer-close")
	Nav.AddElement(h3)
	Nav.AddElement(close)
	Return Me
End Sub

Sub AddItem(itmID As String, href As String, Text As String) As MiniCSSDrawer
	Dim a As UOENowHTML
	a = BANanoMiniCSSCode.CreateAnchor(itmID).SetHREF(href).SetText(Text)
	Nav.AddElement(a)
	Return Me
End Sub

Sub AddItem1(href As String, itmID As String, Text As String) As MiniCSSDrawer
	Dim a As UOENowHTML
	a = BANanoMiniCSSCode.CreateAnchor(itmID).SetHREF(href).SetText(Text)
	Nav.AddElement(a)
	Return Me
End Sub

Sub AddItem2(html As UOENowHTML)
	Nav.AddElement(html)
End Sub
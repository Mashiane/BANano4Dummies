B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=7.51
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private SQL As BANanoSQL
	Private body As BANanoElement
	Private BANano As BANano
End Sub

Sub Init
	SQL.OpenWait("demo1","demo1")
	'
	'get the body of the page
	body = BANano.GetElement("#body")
	'empty the body
	body.Empty
	'
	Dim root As UOENowHTML = BANanoMiniCSSCode.CreateDIV("root").SetStyle("height", "100vh")
	'
	Dim header As UOENowHTML = BANanoMiniCSSCode.CreateHeader("header1").AddClass("row").addclass("sticky")
	'
	Dim logo As UOENowHTML = BANanoMiniCSSCode.CreateSpan("span1").AddClass("logo")
	logo.AddClass("col-sm-3").AddClass("col-md").SetText("BANanoMiniCSSCode")
	'
	Dim a1 As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("a1").SetText("{NBSP}GITHUB")
	a1.AddClass("button").AddClass("col-sm").AddClass("col-md").SetHREF("https://github.com/Chalarangelo/mini.css").SetTargetBlank(True)
	'
	Dim a2 As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("a2").SetText("{NBSP}FLAVORS")
	a2.AddClass("button").AddClass("col-sm").AddClass("col-md").SetHREF("https://minicss.org/flavors")
	'
	header.AddElement(logo)
	header.AddElement(a1)
	header.AddElement(a2)
	header.AddDrawerMenu("drawer-menu", "doc-drawer-checkbox")
	root.AddElement(header)
	'
	Dim dw As UOENowHTML = BANanoMiniCSSCode.CreateRow("doc-wrapper")
	
	Dim drawer As MiniCSSDrawer
	drawer.Initialize("doc-drawer-checkbox")
	'
	Dim search As UOENowHTML = BANanoMiniCSSCode.CreateInputSearch("search-bar")
	search.SetStyle("width","100%").SetStyle("margin","0px")
	search.Wrap("", "div")
	drawer.AddItem2(search)	
	drawer.AddItem1("#getting-started", "link-to-getting-started", "Getting started")
	drawer.AddItem1("#common-textual-elements", "link-to-common-textual-elements", "Common textual elements")
	drawer.AddItem1("#heading","link-to-heading","Headings")
	drawer.AddItem1("#images-captions","link-to-images-captions","Images & captions")
	drawer.AddItem1("#lists","link-to-lists","Lists")
	drawer.AddItem1("#code-and-quotations", "link-to-code-and-quotations","Code & quotations")
	drawer.AddItem1("#grid","link-to-grid","Grid system")
	drawer.AddItem1("#cards","link-to-cards","Cards")
	drawer.AddItem1("#card-sections", "link-to-card-sections","Card sections")
	drawer.AddItem1("#forms-and-input", "link-to-forms-and-input","Forms & input")
	drawer.AddItem1("#buttons", "link-to-buttons","Buttons")
	drawer.AddItem1("#input-grouping","link-to-input-grouping","Input grouping")
	drawer.AddItem1("#header","link-to-header","Header")
	drawer.AddItem1("#navigation-bar", "link-to-navigation-bar","Navigation bar")
	drawer.AddItem1("#footer", "link-to-footer", "Footer")
	drawer.AddItem1("#drawer", "link-to-drawer", "Menu drawer")
	drawer.AddItem1("#tables", "link-to-tables", "Tables")
	drawer.additem1("#text-highlighting","link-to-text-highlighting","Text highlighting")
	drawer.AddItem1("#toasts", "link-to-toasts", "Toasts")
	drawer.AddItem1("#tooltips", "link-to-tooltips", "Tooltips")
	drawer.AddItem1("#modal-dialogs", "link-to-modal-dialogs", "Modal dialogs")
	drawer.AddItem1("#spoilers-and-accordions", "link-to-spoilers-and-accordions", "Spoilers & accordions")
	drawer.AddItem1("#progress-bars", "link-to-progress-bars", "Progress bars")
	drawer.AddItem1("#donut-spinners", "link-to-donut-spinners", "Donut spinners")
	drawer.AddItem1("#icons", "link-to-icons", "Icons")
	drawer.AddItem1("#visibility-helpers", "link-to-visibility-helpers","Visibility helpers")
	drawer.AddItem1("#element-decorators","link-to-element-decorators","Element decorators")
	drawer.AddItem1("#responsive-spacing-sizing", "link-to-responsive-spacing-sizing","Responsive spacing & sizing")
	'
	
	dw.AddDrawer(drawer)
	'
	Dim mn As UOENowHTML = BANanoMiniCSSCode.CreateMain("doc-content").AddClass("col-sm-12").AddClass("col-md-8").AddClass("col-lg-9")
	'
	mn.AddElement(MiniCSS.getting_started)
	mn.addelement(MiniCSS.common_textual_elements)
	mn.addelement(MiniCSS.heading)
	mn.addelement(MiniCSS.images_captions)
	mn.addelement(MiniCSS.lists)
	mn.addelement(MiniCSS.code_and_quotations)
	mn.addelement(MiniCSS.grid)
	mn.addelement(MiniCSS.cards)
	mn.addelement(MiniCSS.card_sections)
	mn.addelement(MiniCSS.forms_and_input)
	mn.addelement(MiniCSS.buttons)
	mn.addelement(MiniCSS.input_grouping)
	mn.addelement(MiniCSS.header)
	mn.addelement(MiniCSS.navigation_bar)
	mn.addelement(MiniCSS.footer)
	mn.addelement(MiniCSS.drawer)
	mn.addelement(MiniCSS.tables)
	mn.addelement(MiniCSS.text_highlighting)
	mn.addelement(MiniCSS.toasts)
	mn.addelement(MiniCSS.tooltips)
	mn.addelement(MiniCSS.modal_dialogs)
	mn.addelement(MiniCSS.spoilers_and_accordions)
	mn.addelement(MiniCSS.progress_bars)
	mn.addelement(MiniCSS.donut_spinners)
	mn.addelement(MiniCSS.icons)
	mn.addelement(MiniCSS.visibility_helpers)
	mn.addelement(MiniCSS.element_decorators)
	mn.addelement(MiniCSS.responsive_spacing_sizing)
	'
	dw.AddElement(mn)
	'
	root.AddElement(dw)
	
	body.Append(root.HTML)
	    
End Sub




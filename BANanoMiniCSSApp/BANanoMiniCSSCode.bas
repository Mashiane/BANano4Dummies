B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=7.51
@EndOfDesignText@
'Static code module
#IgnoreWarnings:12
Sub Process_Globals
	Private BANano As BANano
	Public const BUTTON_SIZE_SMALL As String = "small"
	Public const BUTTON_SIZE_LARGE As String = "large"
	Public const VISIBILITY_HIDDEN As String = "hidden"
	Public const VISIBILITY_VISUALLY_HIDDEN As String = "visually-hidden"
	Public VISIBILITY_HIDDEN_SM As String = "hidden-sm"
	Public const VISIBILITY_HIDDEN_MD As String =  "hidden-md"
	Public const VISIBILITY_HIDDEN_LG As String = "hidden-lg"
	Public const VISIBILITY_VISUALLY_HIDDEN_SM As String = "visually-hidden-sm"
	Public const VISIBILITY_VISUALLY_HIDDEN_MD As String = "visually-hidden-md"
	Public const VISIBILITY_VISUALLY_HIDDEN_LG As String = "visually-hidden-lg"
End Sub


'create input search
Sub CreateInputSearch(sid As String) As UOENowHTML
	Dim s As UOENowHTML
	s.Initialize(sid, "input").SetTYPE("search").SetPlaceHolder("Search...")
	Return s
End Sub

'create main
Sub CreateMain(mainid As String) As UOENowHTML
	Dim m As UOENowHTML
	m.Initialize(mainid,"main")
	Return m
End Sub

'create drawer menu
Sub CreateDrawerMenu(tid As String, drawerid As String) As UOENowHTML
	Dim t As UOENowHTML
	t = CreateLabel(tid).AddClass("button").AddClass("drawer-toggle").AddClass("col-sm")
	t.SetFOR(drawerid)
	Return t
End Sub

'set size
Sub SetSize(pi As UOENowHTML, size As String)
	pi.AddClass(size)
End Sub

'set theme
Sub SetTheme(pi As UOENowHTML, theme As String)
	pi.AddClass(theme)
End Sub

'set visibility of item
Sub SetVisibility(pi As UOENowHTML, vis As String)
	pi.AddClass(vis)
End Sub

Sub CStr(o As Object) As String
	Return "" & o
End Sub

'create icon use https://feathericons.com
Sub CreateIcon(i As String, icon As String) As UOENowHTML
	Dim ii As UOENowHTML
	ii.Initialize(i,"span").UseTheme("icon", icon)
	Return ii
End Sub

'create a spinner
Sub CreateSpinner(sid As String) As UOENowHTML
	Dim s As UOENowHTML
	s.Initialize(sid,"div").AddClass("spinner").SetROLE("progressbar")
	Return s
End Sub

'create progress bar
Sub CreateProgressBar(pbid As String) As UOENowHTML
	Dim pb As UOENowHTML
	pb.Initialize(pbid,"progress")
	Return pb
End Sub

'create toast
Sub CreateToast(tid As String) As UOENowHTML
	Dim t As UOENowHTML
	t.Initialize(tid,"span").AddClass("toast")
	Return t
End Sub

'create footer
Sub CreateFooter(fid As String) As UOENowHTML
	Dim f As UOENowHTML
	f.Initialize(fid,"footer")
	Return f
End Sub

'create nav
Sub CreateNav(nid As String) As UOENowHTML
	Dim n As UOENowHTML
	n.Initialize(nid,"nav")
	Return n
End Sub

'create header
Sub CreateHeader(hid As String) As UOENowHTML
	Dim h As UOENowHTML
	h.Initialize(hid,"header")
	Return h
End Sub

'create section
Sub CreateSection(sid As String) As UOENowHTML
	Dim s As UOENowHTML = CreateDIV(sid)
	s.AddClass("section")
	Return s
End Sub


'set double padded
Sub SetDoublePadded(p As UOENowHTML)
	p.AddClass("double-padded")
End Sub

'set dark
Sub SetDark(p As UOENowHTML)
	p.AddClass("dark")
End Sub

'set media
Sub SetMedia(p As UOENowHTML)
	p.AddClass("media")
End Sub

'set section
Sub SetSection(p As UOENowHTML)
	p.AddClass("section")
End Sub

'set warning
Sub SetWarning(p As UOENowHTML) As UOENowHTML
	p.AddClass("warning")
	Return p
End Sub

'set error
Sub SetError(p As UOENowHTML) As UOENowHTML
	p.AddClass("error")
	Return p
End Sub

'create a card
Sub CreateCard(cid As String, bFluid As Boolean) As UOENowHTML
	Dim c As UOENowHTML
	c.Initialize(cid,"div").AddClass("card")
	c.AddClassOnCondition(bFluid, "fluid")
	Return c
End Sub

'create small card
Sub CreateCardSmall(cid  As String) As UOENowHTML
	Dim c As UOENowHTML = CreateCard(cid,False)
	c.AddClass("small")
	Return c
End Sub

'create large card
Sub CreateCardLarge(cid As String) As UOENowHTML
	Dim c As UOENowHTML = CreateCard(cid,False)
	c.AddClass("lage")
	Return c
End Sub

'create a div
Sub CreateDIV(did As String) As UOENowHTML
	Dim div As UOENowHTML
	div.Initialize(did, "div")
	Return div
End Sub

'create media object
Sub CreateMediaObject(oid As String, oimage As String, imagealt As String, otitle As String, ocontent As String) As String
	oid = oid.tolowercase
	Dim mo As String = $"<div id="${oid}" class="row">
  <div class="col-sm-2">
    <img id="${oid}-img" src="${oimage}" alt="${imagealt}"/>
  </div>
  <div class="col-sm">
    <h2 id="${oid}-hdr">${otitle}</h2>
    <p id="${oid}-content">${ocontent}</p>
  </div>
</div>"$
	Return mo
End Sub

'create block quote
Sub CreateBlockQuote(bqid As String, bqcite As String) As UOENowHTML
	Dim ul As UOENowHTML
	ul.Initialize(bqid, "blockquote")
	If bqcite <> "" Then
		ul.AddAttribute("cite", bqcite)
	End If
	Return ul
End Sub


'create pre
Sub CreatePRE(preid As String) As UOENowHTML
	Dim ul As UOENowHTML
	ul.Initialize(preid, "pre").AddClass("code-line")
	Return ul
End Sub


'create OL
Sub CreateOL(ulid As String, items As List) As UOENowHTML
	Dim ul As UOENowHTML
	ul.Initialize(ulid, "ol")
	For Each opt As Map In items
		Dim optid As String = opt.Get("id")
		Dim optval As String = opt.Get("value")
		Dim thisoption As UOENowHTML = CreateLI(optid)
		optid = CStr(optid)
		optval = CStr(optval)
		thisoption.SetText(optval)
		ul.AddElement(thisoption)
	Next
	Return ul
End Sub

'create UL
Sub CreateUL(ulid As String, items As List) As UOENowHTML
	Dim ul As UOENowHTML
	ul.Initialize(ulid, "ul")
	For Each opt As Map In items
		Dim optid As String = opt.Get("id")
		Dim optval As String = opt.Get("value")
		optid = CStr(optid)
		optval = CStr(optval)
		Dim thisoption As UOENowHTML = CreateLI(optid)
		thisoption.SetText(optval)
		ul.AddElement(thisoption)
	Next
	Return ul
End Sub

'create li
Sub CreateLI(liid As String) As UOENowHTML
	Dim li As UOENowHTML
	li.Initialize(liid, "li")
	Return li
End Sub

'create image
Sub CreateImg(imgid As String) As UOENowHTML
	Dim img As UOENowHTML
	img.Initialize(imgid, "img")
	Return img	
End Sub

'create figcaption
Sub CreateFigCaption(fid As String) As UOENowHTML
	Dim f As UOENowHTML
	f.Initialize(fid, "figcaption")
	Return f
End Sub


'create figure
Sub CreateFigure(fid As String) As UOENowHTML
	Dim f As UOENowHTML
	f.Initialize(fid, "figure")
	Return f
End Sub

'create h
Sub CreateH(hid As String, size As Int) As UOENowHTML
	Dim hkey As String = "h" & CStr(size)
	Dim h As UOENowHTML
	h.Initialize(hid, hkey)
	Return h
End Sub

'create h1
Sub CreateH1(hid As String) As UOENowHTML
	Dim hdr As UOENowHTML = CreateH(hid,1)
	Return hdr
End Sub

'create h2
Sub CreateH2(hid As String) As UOENowHTML
	Dim hdr As UOENowHTML = CreateH(hid,2)
	Return hdr
End Sub

'create h3
Sub CreateH3(hid As String) As UOENowHTML
	Dim hdr As UOENowHTML = CreateH(hid,3)
	Return hdr
End Sub

'create h4
Sub CreateH4(hid As String) As UOENowHTML
	Dim hdr As UOENowHTML = CreateH(hid,4)
	Return hdr
End Sub

'create h5
Sub CreateH5(hid As String) As UOENowHTML
	Dim hdr As UOENowHTML = CreateH(hid,5)
	Return hdr
End Sub

'create h6
Sub CreateH6(hid As String) As UOENowHTML
	Dim hdr As UOENowHTML = CreateH(hid,6)
	Return hdr
End Sub


'create horizontal rule
Sub CreateHR() As UOENowHTML
	Dim hr As UOENowHTML
	hr.Initialize("","hr")
	Return hr
End Sub

'create sub
Sub CreateSub(sid As String) As UOENowHTML
	Dim s As UOENowHTML
	s.Initialize(sid,"sub")
	Return s
End Sub

'create small
Sub CreateSmall(sid As String) As UOENowHTML
	Dim s As UOENowHTML
	s.Initialize(sid,"small")
	Return s
End Sub

'create a span
Sub CreateSpan(sid As String) As UOENowHTML
	Dim s As UOENowHTML
	s.Initialize(sid,"span")
	Return s 
End Sub

'create an anchor
Sub CreateAnchor(aid As String) As UOENowHTML
	Dim a As UOENowHTML
	a.Initialize(aid,"a")
	Return a
End Sub

'create paragraph
Sub CreateParagraph(pid As String) As UOENowHTML
	Dim p As UOENowHTML
	p.Initialize(pid,"p")
	Return p
End Sub

'create form
Sub CreateForm(fID As String) As UOENowHTML
	Dim frm As UOENowHTML
	frm.Initialize(fID,"form")
	Return frm
End Sub

'create legend
Sub CreateLegend(fID As String, sCaption As String) As UOENowHTML
	Dim fs As UOENowHTML
	fs.Initialize(fID, "legend").AddContent(sCaption)
	Return fs
End Sub

'create fieldset
Sub CreateFieldSet(fID As String, sCaption As String) As UOENowHTML
	Dim fs As UOENowHTML
	fs.Initialize(fID, "fieldset")
	Dim lgnd As UOENowHTML = CreateLegend("", sCaption)
	fs.AddElement(lgnd)
	Return fs
End Sub

'add text area
Sub AddTextArea(tid As String, tCaption As String, tPlaceholder As String, bVertical As Boolean) As UOENowHTML
	tid = tid.tolowercase
	Dim lkey As String = "lbl" & tid
	Dim ig As UOENowHTML = CreateInputGroup("",bVertical)
	Dim lbl As UOENowHTML = CreateLabel(lkey).AddContent(tCaption).SetFOR(tid)
	Dim txt As UOENowHTML = CreateTextArea(tid).SetPlaceHolder(tPlaceholder)
	ig.AddElement(lbl)
	ig.AddElement(txt)
	Return ig
End Sub


'add select
Sub AddSelect(tid As String, tCaption As String, bVertical As Boolean, options As List) As UOENowHTML
	tid = tid.tolowercase
	Dim lkey As String = "lbl" & tid
	Dim ig As UOENowHTML = CreateInputGroup("",bVertical)
	Dim lbl As UOENowHTML = CreateLabel(lkey).AddContent(tCaption).SetFOR(tid)
	Dim txt As UOENowHTML = CreateSelect(tid, options)
	ig.AddElement(lbl)
	ig.AddElement(txt)
	Return ig
End Sub


'add textbox
Sub AddText(tid As String, tCaption As String, tPlaceholder As String, bVertical As Boolean) As UOENowHTML
	tid = tid.tolowercase
	Dim lkey As String = "lbl" & tid
	Dim ig As UOENowHTML = CreateInputGroup("",bVertical)
	Dim lbl As UOENowHTML = CreateLabel(lkey).AddContent(tCaption).SetFOR(tid)
	Dim txt As UOENowHTML = CreateInputText(tid, tPlaceholder)
	ig.AddElement(lbl)
	ig.AddElement(txt)
	Return ig
End Sub

'add tel
Sub AddTel(tid As String, tCaption As String, tPlaceholder As String, bVertical As Boolean) As UOENowHTML
	tid = tid.tolowercase
	Dim lkey As String = "lbl" & tid
	Dim ig As UOENowHTML = CreateInputGroup("",bVertical)
	Dim lbl As UOENowHTML = CreateLabel(lkey).AddContent(tCaption).SetFOR(tid)
	Dim txt As UOENowHTML = CreateInputTel(tid, tPlaceholder)
	ig.AddElement(lbl)
	ig.AddElement(txt)
	Return ig
End Sub

'add number
Sub AddNumber(tid As String, tCaption As String, tPlaceholder As String, bVertical As Boolean) As UOENowHTML
	tid = tid.tolowercase
	Dim lkey As String = "lbl" & tid
	Dim ig As UOENowHTML = CreateInputGroup("",bVertical)
	Dim lbl As UOENowHTML = CreateLabel(lkey).AddContent(tCaption).SetFOR(tid)
	Dim txt As UOENowHTML = CreateInputNumber(tid, tPlaceholder)
	ig.AddElement(lbl)
	ig.AddElement(txt)
	Return ig
End Sub

'add checkbox
Sub AddCheckBox(tid As String, tCaption As String, bVertical As Boolean) As UOENowHTML
	tid = tid.tolowercase
	Dim lkey As String = "lbl" & tid
	Dim ig As UOENowHTML = CreateInputGroup("",bVertical)
	Dim lbl As UOENowHTML = CreateLabel(lkey).AddContent(tCaption).SetFOR(tid)
	Dim txt As UOENowHTML = CreateInputCheckBox(tid)
	ig.AddElement(lbl)
	ig.AddElement(txt)
	Return ig
End Sub

'add radio
Sub AddRadio(tid As String, tName As String, tCaption As String, bVertical As Boolean) As UOENowHTML
	tid = tid.tolowercase
	Dim lkey As String = "lbl" & tid
	Dim ig As UOENowHTML = CreateInputGroup("",bVertical)
	Dim lbl As UOENowHTML = CreateLabel(lkey).AddContent(tCaption).SetFOR(tid)
	Dim txt As UOENowHTML = CreateInputRadio(tid, tName)
	ig.AddElement(lbl)
	ig.AddElement(txt)
	Return ig
End Sub


'add radio group
Sub AddRadioGroup(tid As String, tCaption As String, options As List) As UOENowHTML
	tid = tid.tolowercase
	Dim ig As UOENowHTML = CreateInputGroup(tid, False).removeClass("fluid")
	Dim lbl As UOENowHTML = CreateLabel(tid).AddContent(tCaption).SetFOR(tid)
	ig.AddElement(lbl)
	For Each opt As Map In options
		Dim optid As String = opt.Get("id")
		Dim optval As String = opt.Get("value")
		optid = CStr(optid)
		optval = CStr(optval)
		optval = "{NBSP}{NBSP}" & optval
		Dim lkey As String = "lbl" & optid
		Dim rKey As String = tid & optid
		Dim lbl As UOENowHTML = CreateLabel(lkey).AddContent(optval).SetFOR(rKey)
		Dim txt As UOENowHTML = CreateInputRadio(rKey, tid).Setvalue(optid)
		ig.AddElement(txt)
		ig.AddElement(lbl)
	Next
	Return ig
End Sub

'add email
Sub AddEmail(tid As String, tCaption As String, tPlaceholder As String, bVertical As Boolean) As UOENowHTML
	tid = tid.tolowercase
	Dim lkey As String = "lbl" & tid
	Dim ig As UOENowHTML = CreateInputGroup("",bVertical)
	Dim lbl As UOENowHTML = CreateLabel(lkey).AddContent(tCaption).SetFOR(tid)
	Dim txt As UOENowHTML = CreateInputEmail(tid, tPlaceholder)
	ig.AddElement(lbl)
	ig.AddElement(txt)
	Return ig
End Sub

'add file upload
Sub AddFile(tid As String, tCaption As String, bVertical As Boolean) As UOENowHTML
	tid = tid.tolowercase
	Dim lkey As String = "lbl" & tid
	Dim ig As UOENowHTML = CreateInputGroup("", bVertical)
	Dim lbl As UOENowHTML = CreateLabel(lkey).AddContent(tCaption).SetFOR(tid).AddClass("button")
	Dim txt As UOENowHTML = CreateInputFile(tid).SetStyle("display","none")
	ig.AddElement(txt)
	ig.AddElement(lbl)
	Return ig
End Sub

'add password
Sub AddPassword(tid As String, tCaption As String, tPlaceholder As String, bVertical As Boolean) As UOENowHTML
	tid = tid.tolowercase
	Dim lkey As String = "lbl" & tid
	Dim ig As UOENowHTML = CreateInputGroup("",bVertical)
	Dim lbl As UOENowHTML = CreateLabel(lkey).AddContent(tCaption).SetFOR(tid)
	Dim txt As UOENowHTML = CreateInputPassword(tid, tPlaceholder)
	ig.AddElement(lbl)
	ig.AddElement(txt)
	Return ig
End Sub

'create container
Sub CreateContainer(cid As String) As UOENowHTML
	cid = cid.tolowercase
	Dim div As UOENowHTML
	div.Initialize(cid,"div").AddClass("container")
	Return div
End Sub

'create label
Sub CreateLabel(lid As String) As UOENowHTML
	lid = lid.tolowercase
	Dim lbl As UOENowHTML
	lbl.Initialize(lid, "label")
	Return lbl
End Sub

'create label button
Sub CreateLabelButton(lid As String) As UOENowHTML
	lid = lid.tolowercase
	Dim lbl As UOENowHTML
	lbl.Initialize(lid, "label").AddClass("button")
	Return lbl
End Sub

'add to parent
Sub AddToParent(parentID As String, el As UOENowHTML)
	parentID = parentID.tolowercase
	Dim pEL As BANanoElement
	pEL = BANano.GetElement($"#${parentID}"$)
	pEL.Append(el.HTML)
End Sub

'create input
Sub CreateInput(tid As String) As UOENowHTML
	tid = tid.tolowercase
	Dim input As UOENowHTML
	input.Initialize(tid, "input")
	Return input
End Sub

'create text area
Sub CreateTextArea(tid As String) As UOENowHTML
	Dim ta As UOENowHTML
	ta.Initialize(tid,"textarea")
	Return ta 
End Sub

'create an option
Sub CreateOption(oid As String, ocontent As String) As UOENowHTML
	Dim o As UOENowHTML
	o.Initialize(oid,"option").AddContent(ocontent)
	Return o 
End Sub

'create select
Sub CreateSelect(tid As String, options As List) As UOENowHTML
	Dim ta As UOENowHTML
	ta.Initialize(tid,"select")
	For Each opt As Map In options
		Dim optid As String = opt.Get("id")
		Dim optval As String = opt.Get("value")
		Dim thisoption As UOENowHTML = CreateOption(optid,optval)
		ta.AddElement(thisoption)
	Next
	Return ta 
End Sub

'create input text
Sub CreateInputText(tid As String, PlaceHolder As String) As UOENowHTML
	Dim input As UOENowHTML = CreateInput(tid).SetTYPE("text").SetPlaceHolder(PlaceHolder)
	Return input
End Sub

'create button
Sub CreateButton(btnID As String) As UOENowHTML
	Dim b As UOENowHTML
	b.Initialize(btnID,"button")
	Return b
End Sub

'create input button
Sub CreateInputButton(tid As String, tValue As String) As UOENowHTML
	Dim input As UOENowHTML = CreateInput(tid).SetTYPE("button").setvalue(tValue)
	Return input
End Sub

'create input reset
Sub CreateInputReset(tid As String, tValue As String) As UOENowHTML
	Dim input As UOENowHTML = CreateInput(tid).SetTYPE("reset").setvalue(tValue)
	Return input
End Sub

'create input submit
Sub CreateInputSubmit(tid As String, tValue As String) As UOENowHTML
	Dim input As UOENowHTML = CreateInput(tid).SetTYPE("submit").setvalue(tValue)
	Return input
End Sub

'create input file
Sub CreateInputFile(tid As String) As UOENowHTML
	Dim input As UOENowHTML = CreateInput(tid).SetTYPE("file")
	Return input
End Sub

'create input email
Sub CreateInputEmail(tid As String, PlaceHolder As String) As UOENowHTML
	Dim input As UOENowHTML = CreateInput(tid).SetTYPE("email").SetPlaceHolder(PlaceHolder)
	Return input
End Sub

'create input password
Sub CreateInputPassword(tid As String, PlaceHolder As String) As UOENowHTML
	Dim input As UOENowHTML = CreateInput(tid).SetTYPE("password").SetPlaceHolder(PlaceHolder)
	Return input
End Sub

'create input checkbox
Sub CreateInputCheckBox(tid As String) As UOENowHTML
	Dim input As UOENowHTML = CreateInput(tid).SetTYPE("checkbox").SetAttr("tabindex","0")
	input.AddAttribute("autocomplete", "off")
	Return input
End Sub


'create input radio
Sub CreateInputRadio(tid As String, tname As String) As UOENowHTML
	Dim input As UOENowHTML = CreateInput(tid).SetTYPE("radio").SetAttr("tabindex","0").SetNAME(tname)
	input.AddAttribute("autocomplete", "off")
	Return input
End Sub

'create input tel
Sub CreateInputTel(tid As String, PlaceHolder As String) As UOENowHTML
	Dim input As UOENowHTML = CreateInput(tid).SetTYPE("tel").SetPlaceHolder(PlaceHolder)
	Return input
End Sub

'create input number
Sub CreateInputNumber(tid As String, PlaceHolder As String) As UOENowHTML
	Dim input As UOENowHTML = CreateInput(tid).SetTYPE("number").SetPlaceHolder(PlaceHolder)
	Return input
End Sub

'create input group
Sub CreateInputGroup(grpName As String, bVertical As Boolean) As UOENowHTML
	Dim ig As UOENowHTML
	ig.Initialize(grpName, "div").AddClass("input-group").AddClassOnCondition(bVertical, "vertical").AddClass("fluid")
	Return ig
End Sub


'create button group
Sub CreateButtonGroup() As UOENowHTML
	Dim ig As UOENowHTML
	ig.Initialize("", "div").AddClass("button-group")
	Return ig
End Sub


'create row
Sub CreateRow(rowid As String) As UOENowHTML
	rowid = rowid.tolowercase
	Dim row As UOENowHTML
	row.Initialize(rowid, "div").AddClass("row")
	Return row
End Sub

'create column with sizes only
Sub CreateColumnOS(colid As String, offset_small As Int, offset_medium As Int, offset_large As Int, SIZE_SMALL As Int, size_medium As Int, SIZE_LARGE As Int) As UOENowHTML
	Dim col As UOENowHTML = CreateColumn(colid,SIZE_SMALL, size_medium, SIZE_LARGE)
	'
	Dim olarge As String = $"col-lg-offset-${offset_large}"$
	Dim omedium As String = $"col-md-offset-${offset_medium}"$
	Dim osmall As String = $"col-sm-offset-${offset_small}"$
	'
	If offset_large > 0 Then col.AddClass(olarge)
	If offset_medium > 0 Then col.AddClass(omedium)
	If offset_small > 0 Then col.AddClass(osmall)
	'
	Return col
End Sub


'create iframe
Sub CreateIFrame(ifid As String) As UOENowHTML
	Dim i As UOENowHTML
	i.Initialize(ifid, "iframe")
	Return i
End Sub


'create column
Sub CreateColumn(colid As String, size_small As Int, size_medium As Int, size_large As Int) As UOENowHTML
	colid = colid.tolowercase
	Dim col As UOENowHTML
	'
	Dim slarge As String = $"col-lg-${size_large}"$
	Dim smedium As String = $"col-md-${size_medium}"$
	Dim ssmall As String = $"col-sm-${size_small}"$
	'
	col.Initialize(colid, "div")
	'
	If size_large > 0 Then col.AddClass(slarge)
	If size_medium > 0 Then col.AddClass(smedium)
	If size_small > 0 Then col.AddClass(ssmall)
	'
	Return col
End Sub


'create column fluid
Sub CreateColumnFluid(colid As String) As UOENowHTML
	colid = colid.tolowercase
	Dim col As UOENowHTML
	col.Initialize(colid, "div").AddClass("col-sm")
	Return col
End Sub
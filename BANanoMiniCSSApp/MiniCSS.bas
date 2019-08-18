B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=7.51
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private fx As JFX
End Sub

Sub getting_started As UOENowHTML
	Dim div As UOENowHTML = BANanoMiniCSSCode.CreateCard("getting-started", True)
	Dim h2 As UOENowHTML = BANanoMiniCSSCode.CreateH2("").SetSection(True).SetDoublePadded(True).SetText("Getting Started")
	'
	Dim section As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	'
	Dim row As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")
	Dim col As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1",12,12,12)
	'
	Dim h1 As UOENowHTML = BANanoMiniCSSCode.CreateH1("h1")
	h1.SetText("What is BANano?").AddBreak(True)
	col.AddElement(h1)
	Dim p1 As UOENowHTML = BANanoMiniCSSCode.CreateParagraph("p1")
	p1.SetText("BANano is a B4J Library created by Alain Bailleul to create one-page websites/webapps with (offline) Progressive Web App support. ")
	p1.AddText("It transpiles B4J source code to Javascript/HTML/CSS. It can be used to make Websites and WebApps, even Progressive Web Apps (PWA). ")
	p1.AddText("It does not depend on jQuery but generates pure Vanilla Javascript. It does not rely on any javascript/css framework, so you can use whatever one you prefer. ")
	p1.AddText("You do have to write the wrapper for the framework you want to use yourself. ").AddBreak(True).AddBreak(True)
	p1.AddText("The generated HTML, CSS and JavaScript files do not need to run from a VPN! In fact, you can just run the app by opening the html file in any browser. ")
	p1.AddText("Because they are PWA's, they also work after the user goes off-line. ").AddBreak(True)
	p1.AddText("A new feature for JavaScript is encryption so to protect your source code!").AddBreak(True)
	p1.AddText("For communication with the outside world, Ajax/PHP calls And MQTT are build-in.").AddBreak(True)
	p1.AddText("For local storage you can use Cookies, LocalStorage, SessionStorage And IndexedDB (using the build-in BANAnoSQL object).").AddBreak(True)
	p1.AddText("The BANanoJSONParser And BANanoJSONGenerator can be used to read and write Json. They are the equivalent of the normal JSONParser And JSONGenerator from B4X. ")
	p1.AddBreak(True).AddBreak(True)
	p1.AddText("To be able to develop websites/webapps with BANAno, you need experience in B4J, HTML, CSS and Javascript").AddBreak(True).AddBreak(True)
	
	p1.AddLink("https://www.b4x.com/android/forum/threads/banano-website-app-wpa-library-with-abstract-designer-support.99740/#content", "Download BANano 3.09+", "_blank").AddBreak(True)
	p1.AddLink("http://gorgeousapps.com/banhelp.html","View Online Help.", "_blank").AddBreak(True).AddBreak(True)
	p1.AddText("Sourced directly from Alain's thread & online help.").AddBreak(True)
	p1.AddBreak(True)
	col.AddElement(p1)
	'
	Dim h3 As UOENowHTML = BANanoMiniCSSCode.CreateH1("h3")
	h3.SetText("The Structure of a BANano Project").AddBreak(True)
	col.AddElement(h3).AddBreak(True)
	'
	Dim pre1 As UOENowHTML = BANanoMiniCSSCode.createPRE("")
	pre1.SetText($"1. Copy downloaded BANano Library to B4J External libraries"$).AddBreak(True)
	pre1.AddText($"2. Open B4J and create a new project. File > New > UI (JavaFX)"$).AddBreak(True)
	pre1.AddText($"3. Copy the code below to Main"$).AddBreak(True).AddBreak(True)
pre1.AddText($"Sub Process_Globals\r\n
Private BANano As BANano  'ignore\r\n
Private fx As JFX\r\n
End Sub"$).AddBreak(True).AddBreak(True)
	
	pre1.AddText($"Sub AppStart (Form1 As Form, Args() As String)\r\n
	'initialize banano object with event, appname (must not have space) and version\r\n
	BANano.Initialize("BANano", "MyApp",DateTime.now)\r\n
	'the name of the html file\r\n
	BANano.HTML_NAME = "index.html"\r\n
	'the title of the page\r\n
	BANano.Header.Title = "MyApp"\r\n
	'do not use service workers for PWA\r\n
	BANano.TranspilerOptions.UseServiceWorker = False\r\n
	'transpile b4j code to html, css and javascript and store output in File.DirApp\r\n
	'the webiste/website will be loaded in \Objects\MyApp where you saved your project\r\n
	BANano.Build(File.dirApp)\r\n
	'open the compiled index file\r\n
	Dim URL As String = File.GetUri(File.Combine(File.dirapp,"MyApp"),"index.html")\r\n
	fx.ShowExternalDocument(URL)\r\n
	ExitApplication\r\n
End Sub"$).addbreak(True).addbreak(True)

	pre1.AddText($"Sub BANano_Ready\r\n
	'****javascript****\r\n
	'var body = document.getElementById("body");\r\n
	'var.innerHTML = 'Hello Alain Bailleul!';\r\n
	\r\n
	'****jquery****\r\n
	'var body = $("#body");\r\n
	'body.append("Hello Alain Bailleul!");\r\n
	\r\n
	'****banano****\r\n
	Dim body As BANanoElement = BANano.GetElement("#body")\r\n
	body.Append("Hello Alain Bailleul!")\r\n
End Sub"$).AddBreak(True).AddBreak(True)
	col.AddElement(pre1)
	'
	Dim pp As UOENowHTML = BANanoMiniCSSCode.CreateParagraph("")
	pp.SetText("When you run this code (F5), the default browser will be opened and this will appear!").AddBreak(True).AddBreak(True)
	col.AddElement(pp)
	'
	Dim img As UOENowHTML = BANanoMiniCSSCode.CreateImg("")
	img.setsrc("./assets/helloalain.jpg",True)
	col.AddElement(img)
	'
	col.AddBreak(True).AddBreak(True)
	Dim pp As UOENowHTML = BANanoMiniCSSCode.CreateParagraph("")
	pp.SetText("For any BANano App, the sub routine AppStart and BANano_Ready is required!").AddBreak(True)
	pp.AddText("We activated the BANAno library by initializing it with an event name 'BANano', this expectes BANano_Ready. I assume _Ready indicated that the page has loaded!").AddBreak(True)
	pp.AddText("We then set some properties for the app. For more details on the BANano object properties, see the online BANano help.").AddBreak(True)
	pp.AddText("After everything is done, we need to build our page so that it has content. BANano creates a blank page <body >when it runs and that's where you need to create HTML elements. ").AddBreak(True)
	pp.AddText("On the code example we show how the code can be written in javascript and jquery and how to do the same thing in BANano. ").AddBreak(True).AddBreak(True)
	pp.AddText("The above example just used normal HTML5 without any CSS. One can add CSS files in their project as depicted below within the AppStart subroutine before .Build().").AddBreak(True)
	col.AddElement(pp)
	
	Dim pre As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
	pre.SetText($"BANano.Header.AddCSSFile("mini.min.css")"$)
	'
	col.AddElement(pre)
	'
	Dim pa As UOENowHTML= BANanoMiniCSSCode.CreateParagraph("")
	pa.SetText("BANanoMiniCSSCode is a class that seeks to take one through the process of creating HTML elements using the mini.css framework. ")
	pa.AddText("As you will note, the site closely resembles the mini.css documentation website. The base component for all HTML elements is UOENowHTML, a simple class that just builds HTML universally. ")
	pa.AddText("Whilst there is support for the Abstract Designer, this approach is based on coding, thus the 'MiniCSSCode' on the name. ").AddBreak(True).AddBreak(True)
	pa.AddText("Things to remember").AddBreak(True).AddBreak(True)
	pa.AddText("1: All code that will be writen in your Code and Class Modules will be transpiled to HTML, Javascript and CSS.").AddBreak(True)
	pa.AddText("2: The starting point for your app executing is ALWAYS BANano_Ready.").AddBreak(True)
	pa.AddText("3: You write your code the normal way you have been doing using B4J.").AddBreak(True)
	pa.AddText("4: By default, your code will be saved in app.js file on the scripts folder.").AddBreak(True)
	pa.AddText("5: Anything you add on the Files tab will be saved on the ./assets folder of your app.").AddBreak(True)
	pa.AddText("6: Any css files added on the files tab will be saved on the ./styles folder.").AddBreak(True)
	pa.AddText("7: Any js files added on the files tab will be saved on the ./scripts folder.").AddBreak(True).AddBreak(True)
	
	pa.AddText("Rule #1. Have fun!").AddBreak(True)
	pa.AddText("Rule #2. Remember Rule #1").AddBreak(True)
	pa.AddBreak(True).AddBreak(True)
	col.AddElement(pa)
	'
	col.AddText("PS: Below we will show you some mini.css components and how they are created with BANanoMiniCSSCode. There is nothing set in stone as one can create their elements using StringBuilder etc")
	row.AddElement(col)
	'
	section.addelement(row)
	'
	div.AddElements(Array(h2,section))
	Return div
End Sub

Sub common_textual_elements As UOENowHTML
	Dim div As UOENowHTML = BANanoMiniCSSCode.CreateCard("common-textual-elements", True)
	Dim h2 As UOENowHTML = BANanoMiniCSSCode.CreateH2("").SetSection(True).SetDoublePadded(True).SetText("Common Textual Elements")
	'
	Dim section As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	'
	Dim row As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")
	Dim col As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1",12,12,12)
	'
	Dim p As UOENowHTML = BANanoMiniCSSCode.CreateParagraph("")
	p.SetText("This is a paragraph. with some{NBSP}").AddStrong("bold text").AddText("{NBSP}and some{NBSP}").AddEM("italics text.").AddBreak(True)
	p.AddAnchor("#","This is a link","").AddBreak(True)
	p.AddSmall("This is some small text").AddBreak(True)
	p.AddSub("Subscript").AddBreak(True)
	p.AddSup("Superscript").AddBreak(True)
	col.AddElement(p)
	'
Dim pre As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
pre.SetText($"Dim p As UOENowHTML = BANanoMiniCSSCode.CreateParagraph("")\r\n
p.SetText("This is a paragraph. with some{NBSP}").AddStrong("bold text").AddText("{NBSP}and some{NBSP}").AddEM("italics text.").AddBreak(True)\r\n
p.AddAnchor("#","This is a link","").AddBreak(True)\r\n
p.AddSmall("This is some small text").AddBreak(True)\r\n
p.AddSub("Subscript").AddBreak(True)\r\n
p.AddSup("Superscript").AddBreak(True)"$)
	'
	col.AddElement(pre)
	'
	row.AddElement(col)
	'
	section.addelement(row)
	'
	div.AddElements(Array(h2,section))
	Return div
End Sub

Sub heading As UOENowHTML
	Dim div As UOENowHTML = BANanoMiniCSSCode.CreateCard("heading", True)
	Dim h2 As UOENowHTML = BANanoMiniCSSCode.CreateH2("").SetSection(True).SetDoublePadded(True).SetText("Headings")
	'
	Dim section As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	'
	Dim row As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")
	Dim col As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1",12,12,12)
	'
	Dim h1 As UOENowHTML = BANanoMiniCSSCode.CreateH1("").SetText("Heading 1").AddSmall("Subheading")
	Dim pre As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
	pre.SetText($"Dim h1 As UOENowHTML = BANanoMiniCSSCode.CreateH1("").SetText("Heading 1").AddSmall("Subheading")"$)
	col.AddElements(Array(h1, pre))
	'
	Dim h22 As UOENowHTML = BANanoMiniCSSCode.CreateH2("").SetText("Heading 2").AddSmall("Subheading")
	Dim pre2 As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
	pre2.SetText($"Dim h2 As UOENowHTML = BANanoMiniCSSCode.CreateH2("").SetText("Heading 2").AddSmall("Subheading")"$)
	col.AddElements(Array(h22, pre2))
	'
	Dim h3 As UOENowHTML = BANanoMiniCSSCode.CreateH3("").SetText("Heading 3").AddSmall("Subheading")
	Dim pre3 As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
	pre3.SetText($"Dim h3 As UOENowHTML = BANanoMiniCSSCode.CreateH3("").SetText("Heading 3").AddSmall("Subheading")"$)
	col.AddElements(Array(h3, pre3))
	'
	Dim h4 As UOENowHTML = BANanoMiniCSSCode.CreateH4("").SetText("Heading 4").AddSmall("Subheading")
	Dim pre4 As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
	pre4.SetText($"Dim h4 As UOENowHTML = BANanoMiniCSSCode.CreateH4("").SetText("Heading 4").AddSmall("Subheading")"$)
	col.AddElements(Array(h4, pre4))
	'
	Dim h5 As UOENowHTML = BANanoMiniCSSCode.CreateH5("").SetText("Heading 5").AddSmall("Subheading")
	Dim pre5 As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
	pre5.SetText($"Dim h5 As UOENowHTML = BANanoMiniCSSCode.CreateH5("").SetText("Heading 5").AddSmall("Subheading")"$)
	col.AddElements(Array(h5, pre5))
	'
	Dim h6 As UOENowHTML = BANanoMiniCSSCode.CreateH6("").SetText("Heading 6").AddSmall("Subheading")
	Dim pre6 As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
	pre6.SetText($"Dim h6 As UOENowHTML = BANanoMiniCSSCode.CreateH6("").SetText("Heading 6").AddSmall("Subheading")"$)
	col.AddElements(Array(h6, pre6))
	
	'
	row.AddElement(col)
	
	
	'
	section.addelement(row)
	'
	div.AddElements(Array(h2,section))
	Return div
End Sub

Sub images_captions As UOENowHTML
	Dim div As UOENowHTML = BANanoMiniCSSCode.CreateCard("images-captions", True)
	Dim h2 As UOENowHTML = BANanoMiniCSSCode.CreateH2("").SetSection(True).SetDoublePadded(True).SetText("Images & Captions")
	'
	Dim section As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	Dim row As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")
	Dim col As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1",12,12,12)
	'
	Dim img As UOENowHTML = BANanoMiniCSSCode.CreateImg("").SetSRC("./assets/julie.jpg",True).SetALT("Julie")
	Dim pre As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
	pre.SetText($"Dim img As UOENowHTML = BANanoMiniCSSCode.CreateImg("").SetSRC("./assets/julie.jpg",True).SetALT("Julie")"$)
	col.AddElements(Array(img,pre))
	'
	Dim figure As UOENowHTML = BANanoMiniCSSCode.CreateFigure("")
	Dim img1 As UOENowHTML = BANanoMiniCSSCode.CreateImg("").SetSRC("./assets/michael.jpg",True).SetALT("Michael")
	Dim figcaption As UOENowHTML = BANanoMiniCSSCode.CreateFigCaption("").SetText("This is Michael")
	figure.AddElements(Array(img1,figcaption))
	col.AddElement(figure)
	'
	Dim pre1 As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
pre1.SetText($"Dim figure As UOENowHTML = BANanoMiniCSSCode.CreateFigure("")\r\n
Dim img1 As UOENowHTML = BANanoMiniCSSCode.CreateImg("").SetSRC("./assets/michael.jpg",True).SetALT("Michael")\r\n
Dim figcaption As UOENowHTML = BANanoMiniCSSCode.CreateFigCaption("").SetText("This is Michael")\r\n
figure.AddElements(Array(img1,figcaption))\r\n
col.AddElement(figure)"$)
	col.AddElement(pre1)
	'
	row.AddElement(col)
	'
	section.addelement(row)
	'
	div.AddElements(Array(h2,section))
	
	Return div
End Sub

Sub lists As UOENowHTML
	Dim div As UOENowHTML = BANanoMiniCSSCode.CreateCard("lists", True)
	Dim h2 As UOENowHTML = BANanoMiniCSSCode.CreateH2("").SetSection(True).SetDoublePadded(True).SetText("Lists")
	'
	Dim section As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	Dim row As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")
	Dim col As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1",12,12,12)
	'
	Dim lst As List
	lst.Initialize 
	lst.Add(CreateMap("id" : "1", "value" : "Apples"))
	lst.Add(CreateMap("id" : "2", "value" : "Oranges"))
	lst.Add(CreateMap("id" : "3", "value" : "Strawberries"))
	Dim ul As UOENowHTML = BANanoMiniCSSCode.CreateUL("", lst)
	col.AddElement(ul)
	
	Dim pre As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
pre.SetText($"Dim lst As List\r\n
lst.Initialize\r\n 
lst.Add(CreateMap("id" : "1", "value" : "Apples"))\r\n
lst.Add(CreateMap("id" : "2", "value" : "Oranges"))\r\n
lst.Add(CreateMap("id" : "3", "value" : "Strawberries"))\r\n
Dim ul As UOENowHTML = BANanoMiniCSSCode.CreateUL("", lst)\r\n
col.AddElement(ul)"$)
	col.AddElement(pre)
	'
	Dim ol As UOENowHTML = BANanoMiniCSSCode.CreateOL("", lst)
	col.AddElement(ol)
	'
	Dim pre1 As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
	pre1.SetText($"Dim lst As List\r\n
lst.Initialize\r\n 
lst.Add(CreateMap("id" : "1", "value" : "Apples"))\r\n
lst.Add(CreateMap("id" : "2", "value" : "Oranges"))\r\n
lst.Add(CreateMap("id" : "3", "value" : "Strawberries"))\r\n
Dim ul As UOENowHTML = BANanoMiniCSSCode.CreateOL("", lst)\r\n
col.AddElement(ul)"$)
	col.AddElement(pre1)
	'
	row.AddElement(col)
	'
	section.addelement(row)
	'
	div.AddElements(Array(h2,section))
	Return div
End Sub

Sub code_and_quotations As UOENowHTML
	Dim div As UOENowHTML = BANanoMiniCSSCode.CreateCard("code-and-quotations", True)
	Dim h2 As UOENowHTML = BANanoMiniCSSCode.CreateH2("").SetSection(True).SetDoublePadded(True).SetText("Code & Quotations")
	'
	Dim section As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	Dim row As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")
	Dim col As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1",12,12,12)
	'
	'<p>This is some text with some inline <code>source code</code> and some keyboard <kbd>input</kbd>.</p>
	Dim p As UOENowHTML = BANanoMiniCSSCode.CreateParagraph("")
	p.SetText("This is some text with some inline{NBSP}").AddCode("source code").AddText("{NBSP}and some keyboard{NBSP}")
	p.AddKBD("input.")
	col.AddElement(p)
	'
	Dim pre As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
pre.SetText($"Dim p As UOENowHTML = BANanoMiniCSSCode.CreateParagraph("")\r\n
p.SetText("This is some text with some inline{NBSP}").AddCode("source code").AddText("{NBSP}and some keyboard{NBSP}")\r\n
p.AddKBD("input.")\r\n
col.AddElement(p)"$)
col.AddElement(pre)
	'
	Dim prec As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
	prec.SetText($"function sum(num1, num2)\r\n
	Return num1 + num2;\r\n
}"$)
	col.AddElement(prec)
	'
	Dim pre1 As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
	pre1.SetText($"Dim prec As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")\r\n
	prec.SetText($"function sum(num1, num2)\r\n
	Return num1 + num2;\r\n
}\r\n
	col.AddElement(prec)"$)
	col.AddElement(pre1)
	'
	Dim bq As UOENowHTML = BANanoMiniCSSCode.CreateBlockQuote("","http://www.b4x.com").SetText("This is some text quoted from elsewhere")
	col.AddElement(bq)
	'
	Dim pred As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
	pred.SetText($"Dim bq As UOENowHTML = BANanoMiniCSSCode.CreateBlockQuote("","http://www.b4x.com").SetText("This is some text quoted from elsewhere")\r\n
	col.AddElement(bq)"$)
	col.AddElement(pred)
	'
	row.AddElement(col)
	section.addelement(row)
	div.AddElements(Array(h2,section))
	Return div
End Sub

Sub grid As UOENowHTML
	Dim div As UOENowHTML = BANanoMiniCSSCode.CreateCard("grid", True)
	Dim h2 As UOENowHTML = BANanoMiniCSSCode.CreateH2("").SetSection(True).SetDoublePadded(True).SetText("Grid")
	'
	Dim section As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	Dim row As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")
	Dim col As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1",12,12,12)
	'
	Dim cont As UOENowHTML = BANanoMiniCSSCode.CreateContainer("")
	'
	Dim R1 As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")
	Dim R1C1 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1", 1,1,1).AddDiv("","1", "box-colored")
	Dim R1C2 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C2", 11,11,11).AddDiv("","11", "box-colored")
	R1.AddElements(Array(R1C1,R1C2))
	'
	Dim R2 As UOENowHTML = BANanoMiniCSSCode.CreateRow("R2")
	Dim R2C1 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R2C1", 2,2,2).AddDiv("","2", "box-colored")
	Dim R2C2 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R2C2", 10,10,10).AddDiv("","10", "box-colored")
	R2.AddElements(Array(R2C1,R2C2))
	'
	Dim R3 As UOENowHTML = BANanoMiniCSSCode.CreateRow("R3")
	Dim R3C1 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R3C1", 3,3,3).AddDiv("","3", "box-colored")
	Dim R3C2 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R3C2", 9,9,9).AddDiv("","9", "box-colored")
	R3.AddElements(Array(R3C1,R3C2))
	'
	Dim R4 As UOENowHTML = BANanoMiniCSSCode.CreateRow("R4")
	Dim R4C1 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R4C1", 4,4,4).AddDiv("","4", "box-colored")
	Dim R4C2 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R4C2", 8,8,8).AddDiv("","8", "box-colored")
	R4.AddElements(Array(R4C1,R4C2))
	'
	Dim R5 As UOENowHTML = BANanoMiniCSSCode.CreateRow("R5")
	Dim R5C1 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R5C1", 5,5,5).AddDiv("","5", "box-colored")
	Dim R5C2 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R5C2", 7,7,7).AddDiv("","7", "box-colored")
	R5.AddElements(Array(R5C1,R5C2))
	'
	Dim R6 As UOENowHTML = BANanoMiniCSSCode.CreateRow("R6")
	Dim R6C1 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R6C1", 6,6,6).AddDiv("","6", "box-colored")
	Dim R6C2 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R6C2", 6,6,6).AddDiv("","6", "box-colored")
	R6.AddElements(Array(R6C1,R6C2))
	'
	Dim R7 As UOENowHTML = BANanoMiniCSSCode.CreateRow("R7")
	Dim R7C1 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R7C1", 12,12,12).AddDiv("","12", "box-colored")
	R7.AddElements(Array(R7C1))
	'
	Dim R8 As UOENowHTML = BANanoMiniCSSCode.CreateRow("R8")
	Dim R8C1 As UOENowHTML = BANanoMiniCSSCode.CreateColumnFluid("R8C1").AddDiv("","fluid", "box-colored")
	Dim R8C2 As UOENowHTML = BANanoMiniCSSCode.CreateColumnFluid("R8C2").AddDiv("","fluid", "box-colored")
	R8.AddElements(Array(R8C1,R8C2))
	'
	cont.AddElements(Array(R1,R2,R3,R4,R5,R6,R7,R8))
	col.AddElement(cont)
	'
Dim pre As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
pre.SetText($"Dim cont As UOENowHTML = BANanoMiniCSSCode.CreateContainer("")\r\n
'\r\n
Dim R1 As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")\r\n
Dim R1C1 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1", 1,1,1).AddDiv("","1", "box-colored")\r\n
Dim R1C2 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C2", 11,11,11).AddDiv("","11", "box-colored")\r\n
R1.AddElements(Array(R1C1,R1C2))\r\n
'\r\n
Dim R2 As UOENowHTML = BANanoMiniCSSCode.CreateRow("R2")
Dim R2C1 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R2C1", 2,2,2).AddDiv("","2", "box-colored")\r\n
Dim R2C2 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R2C2", 10,10,10).AddDiv("","10", "box-colored")\r\n
R2.AddElements(Array(R2C1,R2C2))\r\n
'\r\n
Dim R3 As UOENowHTML = BANanoMiniCSSCode.CreateRow("R3")
Dim R3C1 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R3C1", 3,3,3).AddDiv("","3", "box-colored")\r\n
Dim R3C2 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R3C2", 9,9,9).AddDiv("","9", "box-colored")\r\n
R3.AddElements(Array(R3C1,R3C2))\r\n
'\r\n
Dim R4 As UOENowHTML = BANanoMiniCSSCode.CreateRow("R4")
Dim R4C1 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R4C1", 4,4,4).AddDiv("","4", "box-colored")\r\n
Dim R4C2 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R4C2", 8,8,8).AddDiv("","8", "box-colored")\r\n
R4.AddElements(Array(R4C1,R4C2))\r\n
'\r\n
Dim R5 As UOENowHTML = BANanoMiniCSSCode.CreateRow("R5")
Dim R5C1 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R5C1", 5,5,5).AddDiv("","5", "box-colored")\r\n
Dim R5C2 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R5C2", 7,7,7).AddDiv("","7", "box-colored")\r\n
R5.AddElements(Array(R5C1,R5C2))\r\n
'\r\n
Dim R6 As UOENowHTML = BANanoMiniCSSCode.CreateRow("R6")
Dim R6C1 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R6C1", 6,6,6).AddDiv("","6", "box-colored")\r\n
Dim R6C2 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R6C2", 6,6,6).AddDiv("","6", "box-colored")\r\n
R6.AddElements(Array(R6C1,R6C2))\r\n
'\r\n
Dim R7 As UOENowHTML = BANanoMiniCSSCode.CreateRow("R7")\r\n
Dim R7C1 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R7C1", 12,12,12).AddDiv("","12", "box-colored")\r\n
R7.AddElements(Array(R7C1))\r\n
'\r\n
Dim R8 As UOENowHTML = BANanoMiniCSSCode.CreateRow("R8")\r\n
Dim R8C1 As UOENowHTML = BANanoMiniCSSCode.CreateColumnFluid("R8C1").AddDiv("","fluid", "box-colored")\r\n
Dim R8C2 As UOENowHTML = BANanoMiniCSSCode.CreateColumnFluid("R8C2").AddDiv("","fluid", "box-colored")\r\n
R8.AddElements(Array(R8C1,R8C2))\r\n
'\r\n
cont.AddElements(Array(R1,R2,R3,R4,R5,R6,R7,R8))\r\n
col.AddElement(cont)"$)
	col.AddElement(pre)
	'
	Dim mo As String = BANanoMiniCSSCode.CreateMediaObject("","./assets/mike.jpg","Mike","Media object heading","Media object content...")
	col.SetText(mo)
	'
	Dim pp As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
	pp.SetText($"Dim mo As String = BANanoMiniCSSCode.CreateMediaObject("","./assets/mike.jpg","Mike","Media object heading","Media object content...")\r\n
	col.SetText(mo)"$)
	col.AddElement(pp)
	'
	
	row.AddElement(col)
	section.addelement(row)
	div.AddElements(Array(h2,section))
	Return div
End Sub

Sub header As UOENowHTML
	Dim div As UOENowHTML = BANanoMiniCSSCode.CreateCard("header", True)
	Dim h2 As UOENowHTML = BANanoMiniCSSCode.CreateH2("").SetSection(True).SetDoublePadded(True).SetText("Header")
	'
	Dim section As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	Dim row As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")
	Dim col As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1",12,12,12)
	'
	'add a header
	Dim hdr As UOENowHTML = BANanoMiniCSSCode.CreateHeader("hdr").AddClass("sticky")
	Dim logo As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("logo").SetText("Logo").SetHREF("#").AddClass("logo")
	Dim home As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("home").SetText("Home").SetHREF("#").AddClass("button")
	Dim news As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("news").SetText("News").SetHREF("#").AddClass("button")
	Dim about As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("about").SetText("About").SetHREF("#").AddClass("button")
	Dim contact As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("contact").SetText("Contact").SetHREF("#").AddClass("button")
	Dim download As UOENowHTML = BANanoMiniCSSCode.CreateButton("download").SetText("Download")
	hdr.AddElements(Array(logo,home,news,about,contact,download))
	col.AddElement(hdr)
	'
Dim pp As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
pp.SetText($"Dim hdr As UOENowHTML = BANanoMiniCSSCode.CreateHeader("hdr").AddClass("sticky")\r\n
Dim logo As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("logo").SetText("Logo").SetHREF("#").AddClass("logo")\r\n
Dim home As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("home").SetText("Home").SetHREF("#").AddClass("button")\r\n
Dim news As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("news").SetText("News").SetHREF("#").AddClass("button")\r\n
Dim about As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("about").SetText("About").SetHREF("#").AddClass("button")\r\n
Dim contact As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("contact").SetText("Contact").SetHREF("#").AddClass("button")\r\n
Dim download As UOENowHTML = BANanoMiniCSSCode.CreateButton("download").SetText("Download")\r\n
hdr.AddElements(Array(logo,home,news,about,contact,download))\r\n
col.AddElement(hdr)"$)
col.AddElement(pp)
	'
	row.AddElement(col)
	section.addelement(row)
	div.AddElements(Array(h2,section))
	Return div
End Sub


Sub cards As UOENowHTML
	Dim div As UOENowHTML = BANanoMiniCSSCode.CreateCard("cards", True)
	Dim h2 As UOENowHTML = BANanoMiniCSSCode.CreateH2("").SetSection(True).SetDoublePadded(True).SetText("Cards")
	'
	Dim section As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	Dim row As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")
	Dim col As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1",12,12,12)
	'
	Dim card As UOENowHTML = BANanoMiniCSSCode.CreateCard("",False).SetWarning(True)
	Dim sect As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	Dim h3 As UOENowHTML = BANanoMiniCSSCode.CreateH3("").SetText("Card Heading")
	Dim p As UOENowHTML = BANanoMiniCSSCode.CreateParagraph("").SetText("Card Content")
	sect.AddElements(Array(h3,p))
	card.AddElement(sect)
	col.AddElement(card)
	'
Dim pre As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
pre.SetText($"Dim card As UOENowHTML = BANanoMiniCSSCode.CreateCard("",False).SetWarning(True)\r\n
Dim sect As UOENowHTML = BANanoMiniCSSCode.CreateSection("")\r\n
Dim h3 As UOENowHTML = BANanoMiniCSSCode.CreateH3("").SetText("Card Heading")\r\n
Dim p As UOENowHTML = BANanoMiniCSSCode.CreateParagraph("").SetText("Card Content")\r\n
sect.AddElements(Array(h3,p))\r\n
card.AddElement(sect)\r\n
col.AddElement(card)"$)
	col.AddElement(pre)
	
	'
	Dim card1 As UOENowHTML = BANanoMiniCSSCode.CreateCard("",False).SetLarge(True).SetError(True)
	Dim sect1 As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	Dim h31 As UOENowHTML = BANanoMiniCSSCode.CreateH3("").SetText("Large Card Heading")
	Dim p1 As UOENowHTML = BANanoMiniCSSCode.CreateParagraph("").SetText("Large Card Content")
	sect1.AddElements(Array(h31,p1))
	card1.AddElement(sect1)
	col.AddElement(card1)
	'
	Dim pre1 As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
pre1.SetText($"Dim card1 As UOENowHTML = BANanoMiniCSSCode.CreateCard("",False).SetLarge(True).SetError(True)\r\n
Dim sect1 As UOENowHTML = BANanoMiniCSSCode.CreateSection("")\r\n
Dim h31 As UOENowHTML = BANanoMiniCSSCode.CreateH3("").SetText("Large Card Heading")\r\n
Dim p1 As UOENowHTML = BANanoMiniCSSCode.CreateParagraph("").SetText("Large Card Content")\r\n
sect1.AddElements(Array(h31,p1))\r\n
card1.AddElement(sect1)\r\n
col.AddElement(card1)"$)
col.AddElement(pre1)

	'
	row.AddElement(col)
	section.addelement(row)
	div.AddElements(Array(h2,section))
	Return div
End Sub

Sub card_sections As UOENowHTML
	Dim div As UOENowHTML = BANanoMiniCSSCode.CreateCard("card-sections", True)
	Dim h2 As UOENowHTML = BANanoMiniCSSCode.CreateH2("").SetSection(True).SetDoublePadded(True).SetText("Card Sections")
	'
	Dim section As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	Dim row As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")
	Dim col As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1",12,12,12)
	'
	Dim card As UOENowHTML = BANanoMiniCSSCode.CreateCard("", True)
	Dim h3 As UOENowHTML = BANanoMiniCSSCode.CreateH3("").SetSection(True).SetText("Title Section")
	Dim p As UOENowHTML = BANanoMiniCSSCode.CreateParagraph("").SetSection(True).SetText("A para with some textual content!")
	card.AddElements(Array(h3,p))
	col.AddElement(card)
	'
Dim pre As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
pre.SetText($"Dim card As UOENowHTML = BANanoMiniCSSCode.CreateCard("", True)\r\n
Dim h3 As UOENowHTML = BANanoMiniCSSCode.CreateH3("").SetSection(True).SetText("Title Section")\r\n
Dim p As UOENowHTML = BANanoMiniCSSCode.CreateParagraph("").SetSection(True).SetText("A para with some textual content!")\r\n
card.AddElements(Array(h3,p))\r\n
col.AddElement(card)"$)
col.AddElement(pre)
	'
	Dim card1 As UOENowHTML = BANanoMiniCSSCode.CreateCard("",False)
	Dim sect As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	Dim sh3 As UOENowHTML = BANanoMiniCSSCode.CreateH3("").SetText("Card with image")
	Dim img As UOENowHTML = BANanoMiniCSSCode.CreateImg("").SetSRC("./assets/james.jpg",True).SetSection(True).SetMedia(True)
	sect.AddElement(sh3)
	card1.AddElements(Array(sect,img))
	col.AddElement(card1)
	'
Dim pre1 As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
pre1.SetText($"Dim card1 As UOENowHTML = BANanoMiniCSSCode.CreateCard("",False)\r\n
Dim sect As UOENowHTML = BANanoMiniCSSCode.CreateSection("")\r\n
Dim sh3 As UOENowHTML = BANanoMiniCSSCode.CreateH3("").SetText("Card with image")\r\n
Dim img As UOENowHTML = BANanoMiniCSSCode.CreateImg("").SetSRC("./assets/james.jpg",True).SetSection(True).SetMedia(True)\r\n
sect.AddElement(sh3)\r\n
card1.AddElements(Array(sect,img))\r\n
col.AddElement(card1)"$)
	col.AddElement(pre1)
	'
	Dim card2 As UOENowHTML = BANanoMiniCSSCode.CreateCard("",False)
	Dim sect2 As UOENowHTML = BANanoMiniCSSCode.CreateSection("").SetDark(True).SetDoublePadded(True)
	Dim sh32 As UOENowHTML = BANanoMiniCSSCode.CreateH3("").SetText("Card with video")
	Dim img2 As UOENowHTML = BANanoMiniCSSCode.CreateIframe("").SetSection(True).SetMedia(True).SetWidth("1280").SetHeight(720)
	img2.SetSRC("https://www.youtube.com/embed/ScMzIvxBSi4",True)
	sect2.AddElement(sh32)
	card2.AddElements(Array(sect2,img2))
	col.AddElement(card2)
	'
Dim pre2 As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
pre2.SetText($"Dim card2 As UOENowHTML = BANanoMiniCSSCode.CreateCard("",False)\r\n
Dim sect2 As UOENowHTML = BANanoMiniCSSCode.CreateSection("").SetDark(True).SetDoublePadded(True)\r\n
Dim sh32 As UOENowHTML = BANanoMiniCSSCode.CreateH3("").SetText("Card with video")\r\n
Dim img2 As UOENowHTML = BANanoMiniCSSCode.CreateIframe("").SetSection(True).SetMedia(True).SetWidth("1280").SetHeight(720)\r\n
img2.SetSRC("https://www.youtube.com/embed/ScMzIvxBSi4",True)\r\n
sect2.AddElement(sh32)\r\n
card2.AddElements(Array(sect2,img2))\r\n
col.AddElement(card2)"$)
col.AddElement(pre2)

	'
	row.AddElement(col)
	section.addelement(row)
	div.AddElements(Array(h2,section))
	Return div
End Sub
Sub forms_and_input As UOENowHTML
	Dim div As UOENowHTML = BANanoMiniCSSCode.CreateCard("forms-and-input", True)
	Dim h2 As UOENowHTML = BANanoMiniCSSCode.CreateH2("").SetSection(True).SetDoublePadded(True).SetText("Forms & Input")
	'
	Dim section As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	Dim row As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")
	Dim col As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1",12,12,12)
	'
	col.AddElement(CreateFormExample)
	'
	Dim radOptions As List
	radOptions.Initialize 
	radOptions.Add(CreateMap("id":"m", "value":"Male"))
	radOptions.Add(CreateMap("id":"f", "value":"Female"))
	Dim rads As UOENowHTML = BANanoMiniCSSCode.AddRadioGroup("gender", "Gender", radOptions)
	col.AddElement(rads)
	'
	
	row.AddElement(col)
	section.addelement(row)
	div.AddElements(Array(h2,section))
	Return div
End Sub
Sub buttons As UOENowHTML
	Dim div As UOENowHTML = BANanoMiniCSSCode.CreateCard("buttons", True)
	Dim h2 As UOENowHTML = BANanoMiniCSSCode.CreateH2("").SetSection(True).SetDoublePadded(True).SetText("Buttons")
	'
	Dim section As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	'
	Dim row As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")
	Dim col As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1",12,12,12)
	'
	Dim btn1 As UOENowHTML = BANanoMiniCSSCode.CreateButton("").SetText("Button")
	Dim btn2 As UOENowHTML = BANanoMiniCSSCode.CreateInputButton("", "Input Button")
	Dim reset As UOENowHTML = BANanoMiniCSSCode.CreateInputReset("", "Reset")
	Dim submit As UOENowHTML = BANanoMiniCSSCode.CreateInputSubmit("", "Submit")
	Dim a1 As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("").SetText("Anchor Button").AddClass("button").SetHREF("#")
	Dim a2 As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("").SetROLE("button").SetText("Link").SetHREF("#")
	Dim l1 As UOENowHTML = BANanoMiniCSSCode.CreateLabel("").AddClass("button").SetText("Label 1")
	Dim l2 As UOENowHTML = BANanoMiniCSSCode.CreateLabel("").SetROLE("button").SetText("Label 2")
	col.AddElements(Array(btn1,btn2,reset,submit,a1,a2,l1,l2))
	'
	'
Dim pre2 As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
pre2.SetText($"Dim btn1 As UOENowHTML = BANanoMiniCSSCode.CreateButton("").SetText("Button")\r\n
Dim btn2 As UOENowHTML = BANanoMiniCSSCode.CreateInputButton("", "Input Button")\r\n
Dim reset As UOENowHTML = BANanoMiniCSSCode.CreateInputReset("", "Reset")\r\n
Dim submit As UOENowHTML = BANanoMiniCSSCode.CreateInputSubmit("", "Submit")\r\n
Dim a1 As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("").SetText("Anchor Button").AddClass("button").SetHREF("#")\r\n
Dim a2 As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("").SetROLE("button").SetText("Link").SetHREF("#")\r\n
Dim l1 As UOENowHTML = BANanoMiniCSSCode.CreateLabel("").AddClass("button").SetText("Label 1")\r\n
Dim l2 As UOENowHTML = BANanoMiniCSSCode.CreateLabel("").SetROLE("button").SetText("Label 2")\r\n
col.AddElements(Array(btn1,btn2,reset,submit,a1,a2,l1,l2))"$)
col.AddElement(pre2)
	'
	
	row.AddElement(col)
	section.addelement(row)
	div.AddElements(Array(h2,section))
	Return div
End Sub
Sub input_grouping As UOENowHTML
	Dim div As UOENowHTML = BANanoMiniCSSCode.CreateCard("input-grouping", True)
	Dim h2 As UOENowHTML = BANanoMiniCSSCode.CreateH2("").SetSection(True).SetDoublePadded(True).SetText("Input grouping")
	'
	Dim section As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	'
	Dim row As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")
	Dim col As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1",12,12,12)
	'
	Dim fName As UOENowHTML = BANanoMiniCSSCode.AddText("","Username","Username", False)
	Dim pWd As UOENowHTML = BANanoMiniCSSCode.AddPassword("", "Password", "Password", False)
	Dim fName1 As UOENowHTML = BANanoMiniCSSCode.AddText("","Username","Username", True)
	Dim pWd1 As UOENowHTML = BANanoMiniCSSCode.AddPassword("", "Password", "Password", True)
	col.AddElements(Array(fName,pWd,fName1,pWd1))
	'
Dim pre2 As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
pre2.SetText($"Dim fName As UOENowHTML = BANanoMiniCSSCode.AddText("","Username","Username", False)\r\n
Dim pWd As UOENowHTML = BANanoMiniCSSCode.AddPassword("", "Password", "Password", False)\r\n
Dim fName1 As UOENowHTML = BANanoMiniCSSCode.AddText("","Username","Username", True)\r\n
Dim pWd1 As UOENowHTML = BANanoMiniCSSCode.AddPassword("", "Password", "Password", True)\r\n
col.AddElements(Array(fName,pWd,fName1,pWd1))"$)
	col.AddElement(pre2)
	'
	Dim bg As UOENowHTML = BANanoMiniCSSCode.CreateButtonGroup
	Dim b1 As UOENowHTML = BANanoMiniCSSCode.CreateButton("").SetText("Buttons")
	Dim b2 As UOENowHTML = BANanoMiniCSSCode.CreateButton("").SetText("can")
	Dim b3 As UOENowHTML = BANanoMiniCSSCode.CreateButton("").SetText("be grouped")
	bg.AddElements(Array(b1,b2,b3))
	col.AddElement(bg)
	'
Dim pre3 As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
pre3.SetText($"Dim bg As UOENowHTML = BANanoMiniCSSCode.CreateButtonGroup\r\n
Dim b1 As UOENowHTML = BANanoMiniCSSCode.CreateButton("").SetText("Buttons")\r\n
Dim b2 As UOENowHTML = BANanoMiniCSSCode.CreateButton("").SetText("can")\r\n
Dim b3 As UOENowHTML = BANanoMiniCSSCode.CreateButton("").SetText("be grouped")\r\n
bg.AddElements(Array(b1,b2,b3))\r\n
col.AddElement(bg)"$)
	col.AddElement(pre3)
	'	
	row.AddElement(col)
	section.addelement(row)
	div.AddElements(Array(h2,section))
	'
	Return div
End Sub
Sub navigation_bar As UOENowHTML
	Dim div As UOENowHTML = BANanoMiniCSSCode.CreateCard("navigation-bar", True)
	Dim h2 As UOENowHTML = BANanoMiniCSSCode.CreateH2("").SetSection(True).SetDoublePadded(True).SetText("Navigation Bar")
	'
	Dim section As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	'
	Dim row As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")
	Dim col As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1",12,12,12)
	'
	'<a href="#">home</a>
	'<span>news</span>
	'<a href="#" class="sublink-1">new Courses</a>
	'<a href="#" class="sublink-1">Certifications</a>
	'<span class="sublink-1">Events</span>
	'<a href="#" class="sublink-2">Course Showcase - 12th, Dec</a>
	'<a href="#" class="sublink-2">Staff AMA - 16th, Dec</a>
	'<a href="#" class="sublink-1">Policy Update</a>
	'<a href="#">About</a>
	'<a href="#">Contact</a>
	
	
	'add navigation
	Dim nav As UOENowHTML = BANanoMiniCSSCode.CreateNav("nav1")
	Dim home As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("").SetHREF("#").SetText("Home")
	Dim news As UOENowHTML = BANanoMiniCSSCode.CreateSpan("").SetText("News")
	Dim newcourses As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("").SetHREF("#").SetText("New Courses").SetSublink1(True)
	Dim certifications As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("").SetHREF("#").SetText("Certifications").SetSublink1(True)
	Dim events As UOENowHTML = BANanoMiniCSSCode.CreateSpan("").SetSublink1(True).SetText("Events")
	Dim courseshowcase As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("").SetHREF("#").SetSublink2(True).SetText("Course Showcase - 12th, Dec")
	Dim staffama As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("").SetHREF("#").SetSublink2(True).SetText("Staff AMA - 16th, Dec")
	Dim policyupdates As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("").SetHref("#").SetSublink1(True).SetText("Policy Update")
	Dim about As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("").SetHREF("#").SetText("About")
	Dim contact As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("").SetHREF("#").SetText("Contact")
	nav.AddElements(Array(home,news,newcourses, certifications, events,courseshowcase,staffama,policyupdates,about, contact))
	col.AddElement(nav)
	'
Dim pre As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
pre.SetText($"Dim nav As UOENowHTML = BANanoMiniCSSCode.CreateNav("nav1")\r\n
Dim home As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("").SetHREF("#").SetText("Home")\r\n
Dim news As UOENowHTML = BANanoMiniCSSCode.CreateSpan("").SetText("News")\r\n
Dim newcourses As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("").SetHREF("#").SetText("New Courses").SetSublink1(True)\r\n
Dim certifications As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("").SetHREF("#").SetText("Certifications").SetSublink1(True)\r\n
Dim events As UOENowHTML = BANanoMiniCSSCode.CreateSpan("").SetSublink1(True).SetText("Events")\r\n
Dim courseshowcase As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("").SetHREF("#").SetSublink2(True).SetText("Course Showcase - 12th, Dec")\r\n
Dim staffama As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("").SetHREF("#").SetSublink2(True).SetText("Staff AMA - 16th, Dec")\r\n
Dim policyupdates As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("").SetHref("#").SetSublink1(True).SetText("Policy Update")\r\n
Dim about As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("").SetHREF("#").SetText("About")\r\n
Dim contact As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("").SetHREF("#").SetText("Contact")\r\n
nav.AddElements(Array(home,news,newcourses, certifications, events,courseshowcase,staffama,policyupdates,about, contact))\r\n
col.AddElement(nav)"$)
	col.AddElement(pre)

	'
	row.AddElement(col)
	section.addelement(row)
	div.AddElements(Array(h2,section))
	Return div
End Sub


Sub footer As UOENowHTML
	Dim div As UOENowHTML = BANanoMiniCSSCode.CreateCard("footer", True)
	Dim h2 As UOENowHTML = BANanoMiniCSSCode.CreateH2("").SetSection(True).SetDoublePadded(True).SetText("Footer")
	'
	Dim section As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	'
	Dim row As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")
	Dim col As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1",12,12,12)
	'
	Dim footer1 As UOENowHTML = BANanoMiniCSSCode.CreateFooter("footer").AddClass("sticky")
	Dim fp As UOENowHTML = BANanoMiniCSSCode.CreateParagraph("fp").SetText("© 2016-2017 Web Corporation{NBSP}|{NBSP}")
	Dim about As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("").SetHREF("#").SetText("About")
	Dim span As UOENowHTML = BANanoMiniCSSCode.CreateSpan("").SetText("{NBSP}|{NBSP}")
	Dim tou As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("").SetHREF("#").SetText("Terms of use")
	fp.AddElements(Array(about, span, tou))
	footer1.AddElements(Array(fp))
	col.AddElement(footer1)
	'
Dim pre As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
pre.SetText($"Dim footer1 As UOENowHTML = BANanoMiniCSSCode.CreateFooter("footer").AddClass("sticky")\r\n
Dim fp As UOENowHTML = BANanoMiniCSSCode.CreateParagraph("fp").SetText("© 2016-2017 Web Corporation{NBSP}|{NBSP}")\r\n
Dim about As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("").SetHREF("#").SetText("About")\r\n
Dim span As UOENowHTML = BANanoMiniCSSCode.CreateSpan("").SetText("{NBSP}|{NBSP}")\r\n
Dim tou As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("").SetHREF("#").SetText("Terms of use")\r\n
fp.AddElements(Array(about, span, tou))\r\n
footer1.AddElements(Array(fp))\r\n
col.AddElement(footer1)"$)
	col.AddElement(pre)
	
	row.AddElement(col)
	section.addelement(row)
	div.AddElements(Array(h2,section))
	
	Return div
End Sub

Sub drawer As UOENowHTML
	Dim div As UOENowHTML = BANanoMiniCSSCode.CreateCard("drawer", True)
	Dim h2 As UOENowHTML = BANanoMiniCSSCode.CreateH2("").SetSection(True).SetDoublePadded(True).SetText("Drawer")
	'
	Dim section As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	'
	Dim row As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")
	Dim col As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1",12,12,12)
	
	Dim drawer1 As MiniCSSDrawer
	drawer1.Initialize("doc-drawer-checkbox1")
	drawer1.AddItem1("#home", "link-to-getting-started", "Home")
	drawer1.AddItem1("#news", "link-to-common-textual-elements", "News")
	drawer1.AddItem1("#about","link-to-heading","About")
	drawer1.AddItem1("#contact","link-to-images-captions","Contact")
	Dim dw As UOENowHTML = BANanoMiniCSSCode.CreateRow("doc-wrapper1")
	dw.AddDrawer(drawer1)
	col.AddElement(dw)
	'
Dim pre As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
pre.SetText($"Dim drawer1 As MiniDrawer\r\n
drawer1.Initialize("doc-drawer-checkbox1")\r\n
drawer1.AddItem1("#home", "link-to-getting-started", "Home")\r\n
drawer1.AddItem1("#news", "link-to-common-textual-elements", "News")\r\n
drawer1.AddItem1("#about","link-to-heading","About")\r\n
drawer1.AddItem1("#contact","link-to-images-captions","Contact")\r\n
col.AddDrawer(drawer1)"$)
	col.AddElement(pre)
	
	'
	row.AddElement(col)
	section.addelement(row)
	div.AddElements(Array(h2,section))
	Return div
End Sub

Sub tables As UOENowHTML
	Dim div As UOENowHTML = BANanoMiniCSSCode.CreateCard("tables", True)
	
	Return div
End Sub
Sub text_highlighting As UOENowHTML
	Dim div As UOENowHTML = BANanoMiniCSSCode.CreateCard("text-highlighting", True)
	Dim h2 As UOENowHTML = BANanoMiniCSSCode.CreateH2("").SetSection(True).SetDoublePadded(True).SetText("Text Highlighting")
	'
	Dim section As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	'
	Dim row As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")
	Dim col As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1",12,12,12)
	'
	'
	Dim pm As UOENowHTML = BANanoMiniCSSCode.CreateParagraph("pm").SetText("This is some{NBSP}").AddMark("highlighted text", "secondary").SetText(".")
	col.AddElement(pm)
	'
	Dim pre As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
	pre.SetText($"Dim pm As UOENowHTML = BANanoMiniCSSCode.CreateParagraph("pm").SetText("This is some{NBSP}").AddMark("highlighted text", "secondary").SetText(".")\r\n
	col.AddElement(pm)"$)
	col.AddElement(pre)
	'
	Dim pm1 As UOENowHTML = BANanoMiniCSSCode.CreateParagraph("pm1").AddMark("This is some highlighted text", "inline-block")
	col.AddElement(pm1)
	'
	Dim pre1 As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
	pre1.SetText($"Dim pm As UOENowHTML = BANanoMiniCSSCode.CreateParagraph("pm").AddMark("This is some highlighted text", "inline-block")\r\n
	col.AddElement(pm)"$)
	col.AddElement(pre1)
	'
	Dim pm2 As UOENowHTML = BANanoMiniCSSCode.CreateParagraph("pm2").SetText("This highlight is styled as a").AddMark("tag", "tag")
	col.AddElement(pm2)
	'
	Dim pre1 As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
	pre1.SetText($"Dim pm As UOENowHTML = BANanoMiniCSSCode.CreateParagraph("pm2").SetText("This highlight is styled as a").AddMark("tag", "tag")\r\n
	col.AddElement(pm)"$)
	col.AddElement(pre1)
	
	row.AddElement(col)
	section.addelement(row)
	div.AddElements(Array(h2,section))
	Return div
End Sub

Sub toasts As UOENowHTML
	Dim div As UOENowHTML = BANanoMiniCSSCode.CreateCard("toasts", True)
	Dim h2 As UOENowHTML = BANanoMiniCSSCode.CreateH2("").SetSection(True).SetDoublePadded(True).SetText("Toasts")
	'
	Dim section As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	'
	Dim row As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")
	Dim col As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1",12,12,12)
	'
	Dim tst As UOENowHTML = BANanoMiniCSSCode.CreateToast("tst").SetText("A Toast to MiniCSS!")
	col.AddElement(tst)
	'
	Dim pre1 As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
	pre1.SetText($"Dim tst As UOENowHTML = BANanoMiniCSSCode.CreateToast("tst").SetText("A Toast to MiniCSS!")"$)
	col.AddElement(pre1)
	
	row.AddElement(col)
	section.addelement(row)
	div.AddElements(Array(h2,section))
	Return div
End Sub

Sub tooltips As UOENowHTML
	Dim div As UOENowHTML = BANanoMiniCSSCode.CreateCard("tooltips", True)
	Dim h2 As UOENowHTML = BANanoMiniCSSCode.CreateH2("").SetSection(True).SetDoublePadded(True).SetText("Tooltips")
	'
	Dim section As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	'
	Dim row As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")
	Dim col As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1",12,12,12)
	'
	Dim tt As UOENowHTML = BANanoMiniCSSCode.CreateParagraph("pp").SetText("A paragraph with a tooltip, hover on it!").SetToolTip("My tooltip!")
	col.AddElement(tt)
	'
	Dim pre1 As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
	pre1.SetText($"Dim tt As UOENowHTML = BANanoMiniCSSCode.CreateParagraph("pp").SetText("A paragraph with a tooltip, hover on it!").SetToolTip("My tooltip!")"$)
	col.AddElement(pre1)
	
	row.AddElement(col)
	section.addelement(row)
	div.AddElements(Array(h2,section))
	Return div
End Sub
Sub modal_dialogs As UOENowHTML
	Dim div As UOENowHTML = BANanoMiniCSSCode.CreateCard("modal-dialogs", True)
	Dim h2 As UOENowHTML = BANanoMiniCSSCode.CreateH2("").SetSection(True).SetDoublePadded(True).SetText("Modal Dialogs")
	'
	Dim section As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	'
	Dim row As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")
	Dim col As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1",12,12,12)
	
	'
	Dim mdl As MiniCSSModal
	mdl.Initialize("mymodal").SetHeading("My Modal")
	mdl.Body.SetText("This is my modal dialog")
	col.AddContent(mdl.HTML)
	'
	Dim btn As UOENowHTML = BANanoMiniCSSCode.CreateLabel("").SetFOR("mymodal").AddClass("button").SetText("Show Modal")
	col.AddElement(btn)
	'
Dim pre1 As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
pre1.SetText($"Dim mdl As MiniCSSModal\r\n
mdl.Initialize("mymodal").SetHeading("My Modal")\r\n
mdl.Body.SetText("This is my modal dialog")\r\n
col.AddContent(mdl.HTML)\r\n
'\r\n
Dim btn As UOENowHTML = BANanoMiniCSSCode.CreateLabel("").SetFOR("mymodal").AddClass("button").SetText("Show Modal")\r\n
col.AddElement(btn)"$)
	col.AddElement(pre1)
	
	row.AddElement(col)
	section.addelement(row)
	div.AddElements(Array(h2,section))
	
	Return div
End Sub

Sub spoilers_and_accordions As UOENowHTML
	Dim div As UOENowHTML = BANanoMiniCSSCode.CreateCard("spoilers-and-accordions", True)
	Dim h2 As UOENowHTML = BANanoMiniCSSCode.CreateH2("").SetSection(True).SetDoublePadded(True).SetText("Spoilers & Accordions")
	'
	Dim section As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	'
	Dim row As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")
	Dim col As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1",12,12,12)
	'
	Dim acc As MiniCSSAccordion
	acc.Initialize("acc").SetSelectMultiple(True)
	'
	Dim i1 As UOENowHTML
	i1.Initialize("i1","div").AddParagraph("This is the first section!")
	acc.AddItem("item1","Collapse Section 1", True, i1)
	Dim i2 As UOENowHTML
	i2.Initialize("i2","div").AddParagraph("This is the second section!")
	acc.AddItem("item2","Collapse Section 2", False, i2)
	col.AddElement(acc.Accordion)
	'
	Dim pre1 As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
pre1.SetText($"Dim acc As MiniCSSAccordion\r\n
acc.Initialize("acc").SetSelectMultiple(True)\r\n
'\r\n
Dim i1 As UOENowHTML\r\n
i1.Initialize("i1","div").AddParagraph("This is the first section!")\r\n
acc.AddItem("item1","Collapse Section 1", True, i1)\r\n
Dim i2 As UOENowHTML\r\n
i2.Initialize("i2","div").AddParagraph("This is the second section!")\r\n
acc.AddItem("item2","Collapse Section 2", False, i2)\r\n
col.AddElement(acc.Accordion)"$)
	col.AddElement(pre1)
	'
	Dim acc1 As MiniCSSAccordion
	acc1.Initialize("acc1").SetSelectMultiple(False)
	'
	Dim x1 As UOENowHTML = BANanoMiniCSSCode.CreateDIV("x1").AddParagraph("This is the first accordion item!")
	acc1.AddItem("xitem1","Accordion Section 1", True, x1)
	Dim x2 As UOENowHTML = BANanoMiniCSSCode.CreateDIV("x2").AddParagraph("This is the second accordion item!")
	acc1.AddItem("xitem2","Accordion Section 2", False, x2)
	col.AddElement(acc1.Accordion)
	'
	Dim pre2 As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
pre2.SetText($"Dim acc1 As MiniCSSAccordion\r\n
acc1.Initialize("acc1").SetSelectMultiple(False)\r\n
'\r\n
Dim x1 As UOENowHTML = BANanoMiniCSSCode.CreateDIV("x1").AddParagraph("This is the first accordion item!")\r\n
acc1.AddItem("xitem1","Accordion Section 1", True, x1)\r\n
Dim x2 As UOENowHTML = BANanoMiniCSSCode.CreateDIV("x2").AddParagraph("This is the second accordion item!")\r\n
acc1.AddItem("xitem2","Accordion Section 2", False, x2)\r\n
col.AddElement(acc1.Accordion)"$)
	col.AddElement(pre2)
	
	'
	row.AddElement(col)
	section.addelement(row)
	div.AddElements(Array(h2,section))

	Return div
End Sub

Sub progress_bars As UOENowHTML
	Dim div As UOENowHTML = BANanoMiniCSSCode.CreateCard("progress-bars", True)
	Dim h2 As UOENowHTML = BANanoMiniCSSCode.CreateH2("").SetSection(True).SetDoublePadded(True).SetText("Progress Bars")
	'
	Dim section As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	'
	Dim row As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")
	Dim col As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1",12,12,12)
	'
	Dim pb As UOENowHTML = BANanoMiniCSSCode.CreateProgressBar("pb").SetVALUE(450).SetMax(1000).AddClass("primary")
	col.AddElement(pb)
	'
	Dim pre1 As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
	pre1.SetText($"Dim pb As UOENowHTML = BANanoMiniCSSCode.CreateProgressBar("pb").SetVALUE(450).SetMax(1000).AddClass("primary")"$)
	col.AddElement(pre1)
	
	row.AddElement(col)
	section.addelement(row)
	div.AddElements(Array(h2,section))
	
	Return div
End Sub
Sub donut_spinners As UOENowHTML
	Dim div As UOENowHTML = BANanoMiniCSSCode.CreateCard("donut-spinners", True)
	Dim h2 As UOENowHTML = BANanoMiniCSSCode.CreateH2("").SetSection(True).SetDoublePadded(True).SetText("Donut Spinners")
	'
	Dim section As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	'
	Dim row As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")
	Dim col As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1",12,12,12)
	'
	Dim spn As UOENowHTML = BANanoMiniCSSCode.CreateSpinner("spn").addclass("primary")
	Dim spn1 As UOENowHTML = BANanoMiniCSSCode.CreateSpinner("spn").addclass("secondary")
	Dim spn2 As UOENowHTML = BANanoMiniCSSCode.CreateSpinner("spn").addclass("tertiary")
	
	col.AddElements(Array(spn,spn1,spn2))
	'
	Dim pre1 As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
	pre1.SetText($"Dim spn As UOENowHTML = BANanoMiniCSSCode.CreateSpinner("spn").addclass("primary")"$)
	col.AddElement(pre1)
	
	row.AddElement(col)
	section.addelement(row)
	div.AddElements(Array(h2,section))
	
	Return div
End Sub
Sub icons As UOENowHTML
	Dim div As UOENowHTML = BANanoMiniCSSCode.CreateCard("icons", True)
	Dim h2 As UOENowHTML = BANanoMiniCSSCode.CreateH2("").SetSection(True).SetDoublePadded(True).SetText("Icons")
	'
	Dim section As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	'
	Dim row As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")
	Dim col As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1",12,12,12)
	'
	Dim p As UOENowHTML = BANanoMiniCSSCode.CreateAnchor("").SetHREF("https://feathericons.com").SetText("Feather.com Icons").SetTargetBlank(True)
	col.AddElement(p)
	col.AddText("{BR}{BR}")
	'
	
	Dim icon As UOENowHTML = BANanoMiniCSSCode.CreateIcon("","alert")
	Dim icon1 As UOENowHTML = BANanoMiniCSSCode.CreateIcon("","location")
	Dim icon2 As UOENowHTML = BANanoMiniCSSCode.CreateIcon("","user")
	col.AddElements(Array(icon,icon1,icon2))
	'
	Dim pre1 As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
pre1.SetText($"Dim icon As UOENowHTML = BANanoMiniCSSCode.CreateIcon("","alert")\r\n
Dim icon1 As UOENowHTML = BANanoMiniCSSCode.CreateIcon("","location")\r\n
Dim icon2 As UOENowHTML = BANanoMiniCSSCode.CreateIcon("","user")\r\n
col.AddElements(Array(icon,icon1,icon2))"$)
	col.AddElement(pre1)
	
	row.AddElement(col)
	section.addelement(row)
	div.AddElements(Array(h2,section))
	
	Return div
End Sub

Sub visibility_helpers As UOENowHTML
	Dim div As UOENowHTML = BANanoMiniCSSCode.CreateCard("visibility-helpers", True)
	Dim h2 As UOENowHTML = BANanoMiniCSSCode.CreateH2("").SetSection(True).SetDoublePadded(True).SetText("Visibility Helpers")
	'
	Dim section As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	'
	Dim row As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")
	Dim col As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1",12,12,12)
	'
	Dim p As UOENowHTML = BANanoMiniCSSCode.CreateParagraph("").SetText("Hidden on Small")
	p.AddClass(BANanoMiniCSSCode.VISIBILITY_HIDDEN_SM)
	col.AddElement(p)
	'
Dim pre1 As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
pre1.SetText($"Dim p As UOENowHTML = BANanoMiniCSSCode.CreateParagraph("").SetText("Hidden on Small")\r\n
p.AddClass(BANanoMiniCSSCode.VISIBILITY_HIDDEN_SM)\r\n
col.AddElement(p)"$)
col.AddElement(pre1)
	
	row.AddElement(col)
	section.addelement(row)
	div.AddElements(Array(h2,section))
	
	'
	Return div
End Sub

Sub element_decorators As UOENowHTML
	Dim div As UOENowHTML = BANanoMiniCSSCode.CreateCard("element-decorators", True)
	Dim h2 As UOENowHTML = BANanoMiniCSSCode.CreateH2("").SetSection(True).SetDoublePadded(True).SetText("Element Decorators")
	'
	Dim section As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	'
	Dim row As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")
	Dim col As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1",12,12,12)
	'
	Dim btn1 As UOENowHTML = BANanoMiniCSSCode.CreateButton("btn1").SetBordered(True).SetText("Bordered Button")
	Dim btn3 As UOENowHTML = BANanoMiniCSSCode.CreateButton("btn1").SetBordered(True).SetText("Bordered Button").SetPrimary(True)
	Dim btn2 As UOENowHTML = BANanoMiniCSSCode.CreateButton("btn2").SetShadowed(True).SetText("Shadowed Button")
	'
	Dim pimages As UOENowHTML = BANanoMiniCSSCode.CreateParagraph("pimages")
	Dim rimg As UOENowHTML = BANanoMiniCSSCode.CreateImg("rimg").SetSRC("./assets/james.jpg",True).SetALT("Rounded").SetRounded(True).SetStyle("width","80px").SetStyle("height","80px")
	Dim cimg As UOENowHTML = BANanoMiniCSSCode.CreateImg("cimg").SetSRC("./assets/olivia.jpg",True).SetALT("Circular").SetCircular(True).SetStyle("width","80px").SetStyle("height","80px")
	pimages.AddElements(Array(rimg,cimg))
	col.AddElements(Array(btn1,btn3,btn2,pimages))
	'
Dim pre1 As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
pre1.SetText($"Dim btn1 As UOENowHTML = BANanoMiniCSSCode.CreateButton("btn1").SetBordered(True).SetText("Bordered Button")\r\n
Dim btn3 As UOENowHTML = BANanoMiniCSSCode.CreateButton("btn1").SetBordered(True).SetText("Bordered Button").SetPrimary(True)\r\n
Dim btn2 As UOENowHTML = BANanoMiniCSSCode.CreateButton("btn2").SetShadowed(True).SetText("Shadowed Button")\r\n
'\r\n
Dim pimages As UOENowHTML = BANanoMiniCSSCode.CreateParagraph("pimages")\r\n
Dim rimg As UOENowHTML = BANanoMiniCSSCode.CreateImg("rimg").SetSRC("./assets/james.jpg",True).SetALT("Rounded").SetRounded(True).SetStyle("width","80px").SetStyle("height","80px")\r\n
Dim cimg As UOENowHTML = BANanoMiniCSSCode.CreateImg("cimg").SetSRC("./assets/olivia.jpg",True).SetALT("Circular").SetCircular(True).SetStyle("width","80px").SetStyle("height","80px")\r\n
pimages.AddElements(Array(rimg,cimg))\r\n
col.AddElements(Array(btn1,btn3,btn2,pimages))"$)
col.AddElement(pre1)
'
	row.AddElement(col)
	section.addelement(row)
	div.AddElements(Array(h2,section))
	
	Return div
End Sub

Sub responsive_spacing_sizing As UOENowHTML
	Dim div As UOENowHTML = BANanoMiniCSSCode.CreateCard("responsive-spacing-sizing", True)
	Dim h2 As UOENowHTML = BANanoMiniCSSCode.CreateH2("").SetSection(True).SetDoublePadded(True).SetText("Responsive Spacing & Sizing")
	'
	Dim section As UOENowHTML = BANanoMiniCSSCode.CreateSection("")
	'
	Dim row As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")
	Dim col As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1",12,12,12)
	'
	Dim span1 As UOENowHTML = BANanoMiniCSSCode.CreateSpan("").SetResponsiveMargin(True).SetText("Responsive margin{BR}")
	Dim span2 As UOENowHTML = BANanoMiniCSSCode.CreateSpan("").SetResponsivePadding(True).SetText("Responsive padding")
	col.AddElements(Array(span1,span2))
	'
	Dim pre1 As UOENowHTML = BANanoMiniCSSCode.CreatePRE("")
	pre1.SetText($"Dim span1 As UOENowHTML = BANanoMiniCSSCode.CreateSpan("").SetResponsiveMargin(True).SetText("Responsive margin")\r\n
	Dim span2 As UOENowHTML = BANanoMiniCSSCode.CreateSpan("").SetResponsivePadding(True).SetText("Responsive padding")\r\n
	col.AddElements(Array(span1,span2))"$)
	col.AddElement(pre1)

	row.AddElement(col)
	section.addelement(row)
	div.AddElements(Array(h2,section))
	
	Return div
End Sub


Sub CreateFormExample As UOENowHTML
	Dim form As UOENowHTML = BANanoMiniCSSCode.CreateForm("form1")
	Dim fieldset As UOENowHTML = BANanoMiniCSSCode.CreateFieldSet("","Register")
	'R1
	Dim R1 As UOENowHTML = BANanoMiniCSSCode.CreateRow("R1")
	Dim R1C1 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C1",12,6,6)
	Dim R1C2 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R1C2",12,6,6)
	'R2
	Dim R2 As UOENowHTML = BANanoMiniCSSCode.CreateRow("R2")
	Dim R2C1 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R2C1",12,6,6)
	Dim R2C2 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R2C2",12,6,6)
	'R3
	Dim R3 As UOENowHTML = BANanoMiniCSSCode.CreateRow("R3")
	Dim R3C1 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R3C1",12,6,6)
	Dim R3C2 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R3C2",12,6,6)
	'R4
	Dim R4 As UOENowHTML = BANanoMiniCSSCode.CreateRow("R4")
	Dim R4C1 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R4C1",12,6,6)
	Dim R4C2 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R4C2",12,6,6)
	'R5
	Dim R5 As UOENowHTML = BANanoMiniCSSCode.CreateRow("R5")
	Dim R5C1 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R5C1",12,6,6)
	Dim R5C2 As UOENowHTML = BANanoMiniCSSCode.CreateColumn("R5C2",12,6,6)
	'
	
	Dim fName As UOENowHTML = BANanoMiniCSSCode.AddText("txtFirstName", "First Name", "First Name", True)
	Dim lName As UOENowHTML = BANanoMiniCSSCode.AddText("txtLastName", "Last Name", "Last Name", True)
	'
	Dim tEmail As UOENowHTML = BANanoMiniCSSCode.AddEmail("txtEmail", "Email Address", "Email Address", True)
	Dim tTel As UOENowHTML = BANanoMiniCSSCode.AddTel("txtCell", "Mobile Number", "Mobile Number", True)
	'
	Dim tPassword As UOENowHTML = BANanoMiniCSSCode.AddPassword("txtPassword", "Password", "********", True)
	Dim tConfirmPassword As UOENowHTML = BANanoMiniCSSCode.AddPassword("txtConfirmPassword", "Confirm Password", "********", True)
	'
	Dim pFile As UOENowHTML = BANanoMiniCSSCode.AddFile("txtprofilepic", "Upload Profile Pic", True)
	Dim img As UOENowHTML = BANanoMiniCSSCode.CreateImg("imgProfile").SetSRC("./assets/michael.jpg",True).SetALT("Profile Pic")
	img.SetStyle("width","100px").SetStyle("height","100px")
	'
	Dim options As List
	options.Initialize
	options.Add(CreateMap("id":"m", "value":"Male"))
	options.Add(CreateMap("id":"f", "value":"Female"))
	Dim selGender As UOENowHTML = BANanoMiniCSSCode.AddSelect("selGender","Gender",True,options)
	Dim chkAgree As UOENowHTML = BANanoMiniCSSCode.CreateInputCheckBox("chkAgree").SetText("I agree")
	Dim radAgree As UOENowHTML = BANanoMiniCSSCode.CreateInputRadio("radAgree","agree").SetText("A radio")
	
	'R1
	R1C1.AddElement(fName)
	R1C2.AddElement(lName)
	R1.AddElements(Array(R1C1,R1C2))
	'
	'R2
	R2C1.AddElement(tEmail)
	R2C2.AddElement(tTel)
	R2.AddElements(Array(R2C1,R2C2))
	'
	'R3
	R3C1.AddElement(tPassword)
	R3C2.AddElement(tConfirmPassword)
	R3.AddElements(Array(R3C1,R3C2))
	'
	R4C1.AddElement(img)
	R4C2.AddElement(pFile)
	R4.AddElements(Array(R4C1,R4C2))
	'
	R5C1.AddElement(selGender)
	R5C2.AddElements(Array(chkAgree,radAgree))
	R5.AddElements(Array(R5C1,R5C2))
	
	fieldset.AddElements(Array(R1,R2,R3,R4,R5))
	'
	form.AddElement(fieldset)
	'
	Return form
End Sub


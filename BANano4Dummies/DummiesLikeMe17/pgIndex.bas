B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=7.51
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano  'ignore
	Private body As BANanoElement
	Private version As String
	Private JQuery As BANanoJQuery
	Private Mode As String
	Private lastEdit As BANanoElement
End Sub
'
Sub Show
	'initialize jquery
	JQuery.Initialize
	'call the javascript method to ensure all variables are defined
	JQuery.UseStrict
	
	'get the body element of the page
	body = BANano.GetElement("#body")
	'clear the body
	body.Empty
	'define the body of the app
	body.Append($"<div id="app">
<header>Task@Hand </header>
<div id="main">
<div id="add-task">
<label for="new-task-name">Add a task</label>
<input type="text" id="new-task-name"
title="Enter a task name" placeholder="Enter a task name"/>
</div>
<ul id="task-list">
</ul>
</div>
<footer>
</footer>
</div>"$)
	
	'define the version
	version = "v1.0"
	'
	JQuery.Append("#app>header", version)
	setStatus("Ready")
	
	'get the element to attach event to
	Dim taskName As BANanoElement = BANano.GetElement("#new-task-name")
	'attach the event
	taskName.On("keypress", Me, "task_keypress")
	'
	LoadTasks
	Mode = ""
End Sub

'load tasks from localstorage
Sub LoadTasks
	Dim titles As List = BANano.GetLocalStorage("taskAtHand.taskList")
	If titles = Null Then Return
	For Each title As String In titles
		title = title.Trim
		addTaskElement(title)
	Next
End Sub


'fires when a keypress happens on task
Sub task_keypress(e As BANanoEvent)
	'if we press enter
	If e.CharCode = 13 Then
		addTask
		'cancel default operation/bubbling
		Return False
	End If
	'set the focus to the task name element
	JQuery.Focus("#new-task-name")
End Sub

Sub addTask
	'get the task name
	Dim tskName As String = JQuery.GetValue("#new-task-name")
	If tskName = "" Then Return
	If Mode = "E" Then
		lastEdit.SetText(" " & tskName)
	Else
		addTaskElement(tskName)
	End If
	Mode = ""
	SaveTasks
	JQuery.SetValue("#new-task-name", "")
	JQuery.Focus("#new-task-name")
End Sub

Sub addTaskElement(taskName As String)
	'delete button segment
	Dim delete As BANanoObject = JQuery.createElement($"<button title="Delete" class='delete'>X</button>"$)
	BANano.ToElement(delete).On("click", Me, "task_delete")
	'edit button segment
	Dim edit As BANanoObject = JQuery.createElement($"<button title="Edit" class='edit'>E</button>"$)
	BANano.ToElement(edit).On("click", Me, "task_edit")
	'move up button
	Dim moveUp As BANanoObject = JQuery.createElement($"<button title="Up" class='move-up'>U</button>"$)
	BANano.ToElement(moveUp).On("click", Me, "task_up")
	'move down button
	Dim moveDown As BANanoObject = JQuery.createElement($"<button title="Down" class='move-down'>D</button>"$)
	BANano.ToElement(moveDown).On("click", Me, "task_down")
	'span to show the item
	Dim span As String = $"<span class='task-name'> ${taskName}</span>"$
	'create an empty list item
	Dim task As BANanoObject = JQuery.createElement($"<li class="task"></li>"$)
	'join other elements
	JQuery.AppendMulti(task, Array(delete, edit, moveUp, moveDown, span))
	'add to the list
	JQuery.Append("#task-list", task)
End Sub

'when a task is being edited
Sub task_edit(e As BANanoEvent)
	Mode = "E"
	'get the parent node of the button as the button is inside a li
	Dim task As BANanoElement = JQuery.ParentNode(e)
	'get last child in the list
	lastEdit = JQuery.LastChild(task)
	Dim text As String = lastEdit.GetText
	'edit mode show entry
	BANano.GetElement("#new-task-name").SetValue(text)
	'focus to text box
	JQuery.Focus("#new-task-name")
End Sub


'when a task is being deleted
Sub task_delete(e As BANanoEvent)
	Mode = ""
	'get the parent node of the button as the button is inside a li
	Dim task As BANanoElement = JQuery.ParentNode(e)
	'remove the item from the list
	JQuery.Remove(task)
	SaveTasks
End Sub

'when a task is being moved up
Sub task_up(e As BANanoEvent)
	Mode = ""
	'get the li the up button sits inside
	Dim task As BANanoElement = JQuery.ParentNode(e)
	'move the item up
	JQuery.MoveUp(task)
	SaveTasks
End Sub

'when a task is being moved down
Sub task_down(e As BANanoEvent)
	Mode = ""
	'get the task the button sits inside of
	Dim task As BANanoElement = JQuery.ParentNode(e)
	'move item down
	JQuery.MoveDown(task)
	SaveTasks
End Sub

Sub setStatus(message As String)
	JQuery.SetText("#app>footer", message)
End Sub

'save tasks to localstorage
Sub SaveTasks
	Dim titles As List
	titles.Initialize 
	'get all items, returns a list of elements
	Dim tasks As List = JQuery.GetItems($"#task-list .task span.task-name"$)
	For Each taskm As Map In tasks
		Dim textContent As String = taskm.Get("textContent")
		textContent = textContent.trim
		titles.Add(textContent)
	Next
	'save to local storage
	BANano.SetLocalStorage("taskAtHand.taskList", titles)
	Mode = ""
End Sub
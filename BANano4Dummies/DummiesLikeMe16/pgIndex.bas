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
End Sub

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
	'*** jquery : var tskName = $("#new-task-name").val();
	'*** BANano : Dim tskName As Object = BANano.GetElement("#new-task-name").GetValue
	Dim tskName As String = JQuery.GetValue("#new-task-name")
	If tskName = "" Then Return
	addTaskElement(tskName)
	'clear the contents of the textvalue and set focus
	'*** jquery : $("#new-task-name").val("");
	'*** jquery : $("#new-task-name").focus();
	'*** BANAno : BANano.GetElement("#new-task-name").SetValue("")
	JQuery.SetValue("#new-task-name", "")
	JQuery.Focus("#new-task-name")
End Sub

Sub addTaskElement(taskName As String)
	'*** BANANO : BANano.GetElement("#task-list").Append($"<li>${taskName}</li>"$)
	'var $task = $("<li></li>");
	''$task.text(taskName);
	'$("#task-list").append($task);
	
	Dim task As BANanoObject = JQuery.createElement("li")
	JQuery.SetTextBO(task, taskName)
	JQuery.Append("#task-list", task)
End Sub


Sub setStatus(message As String)
	JQuery.SetText("#app>footer", message)
End Sub
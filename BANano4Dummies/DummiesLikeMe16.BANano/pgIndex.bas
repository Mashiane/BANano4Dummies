B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=7.51
@EndOfDesignText@
Sub Process_Globals
	Private BANano As BANano
	Private body As BANanoElement
	Private version As String
End Sub

Sub Show
	'get the body of the page and clear it
	body = BANano.GetElement("#body").Empty
	'add main div
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
	BANano.GetElement("#app>header").Append(version)
	setStatus("Ready")
	
	'get the element to attach event to
	Dim taskName As BANanoElement = BANano.GetElement("#new-task-name")
	'attach the event
	taskName.On("keypress", Me, "task_keypress")

End Sub

Sub Focus(elID As String)
	BANano.Window.GetField("document").RunMethod("getElementById", Array(elID)).RunMethod("focus", Null)
End Sub

'
''fires when a keypress happens on task
Sub task_keypress(e As BANanoEvent)
	'if we press enter
	If e.CharCode = 13 Then
		addTask
		'cancel default operation/bubbling
		Return False
	End If
	'set the focus to the task name element
	Focus("#new-task-name")
End Sub
'
Sub addTask
	'get the task name
	Dim tskName As String = BANano.GetElement("#new-task-name").GetValue
	If tskName = "" Then Return
	addTaskElement(tskName)
	BANano.GetElement("#new-task-name").SetValue("")
	Focus("#new-task-name")
End Sub
'
Sub addTaskElement(taskName As String)
	BANano.GetElement("#task-list").Append($"<li>${taskName}</li>"$)
End Sub

Sub setStatus(message As String)
	BANano.GetElement("#app>footer").SetText(message)
End Sub

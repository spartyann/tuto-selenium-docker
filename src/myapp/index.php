<!DOCTYPE html>
<html lang="en">
	<head>
		<title>My App</title>
		<meta charset="utf-8">
		<meta name="description" content="My App">
		<script src="/js/jquery-3.3.1.min.js"></script>
		<script src="/js/vue.js"></script>
		<script src="/js/app.js"></script>

		<link href="/css/style.css" rel="stylesheet" />
	</head>

	<body>
		<div id="app">
			<h1>Tasks ({{ tasks.length }})</h1>

			<p>
				<div class="task" v-for="(task, index) in tasks">
					<div class="td-100">
						<input :id="'task_text_' + index" v-model="task.text"/>
					</div>
					<div class="td tar" style="padding-left:10px">
						<a :id="'task_delete_' + index" v-on:click="deleteTask(task)">Delete</a>
					</div>
				</div>
			</p>

			<p>
				<a id="add_task" v-on:click="addTask()">Add task</a>
			</p>
		</div>
	</body>
</html>
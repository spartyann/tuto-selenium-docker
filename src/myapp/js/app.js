
$(function(){ 

	new Vue({
			
		el: "#app",
		
		data: {
			tasks: [
				{
					text: "First task",
				},
				{
					text: "Second task",
				}
			],
		},
		
		methods: {

			addTask: function ()
			{
				this.tasks.push({text: ""});
			},

			deleteTask: function (task)
			{
				var index = this.tasks.indexOf(task);
				this.tasks.splice(index, 1);
			}
		}
	});

});

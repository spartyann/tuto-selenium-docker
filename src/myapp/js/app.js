
$(function(){ 

	new Vue({
			
		el: "#app",
		
		data: {
			tasks: [
				{
					text: "First task",
					done: false
				},
				{
					text: "Second task",
					done: false
				}
			],
		},
		
		methods: {

			addTask: function ()
			{
				this.tasks.push({text: "", done : false});
			},

			deleteTask: function (task) {
				var index = this.tasks.indexOf(task);
				this.tasks.splice(index, 1);
			}
		}
	});

});
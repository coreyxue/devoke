jQuery(function($) {  
	$(document).ajaxComplete(function(){
		var left = $('#arrow-left');
		var right = $('#arrow-right');

		left.on("click", function(){
			var month = parseInt($('#month').text());
			var year = parseInt($('#year').text());
			console.log(month);
			var pre_month = month - 1;
			if(pre_month == 0) {
				pre_month = 12;
				year = year - 1;
			}
			var content = $(".content");
			$.ajax({
			  	type: "GET",
			  	url: "/checkins/index/"+year+'/'+pre_month,
			  	success: function(result) {
			  		console.log(result);
			  		content.html(result);
			  	}
	      	});
		});

		right.on("click", function(){
			var month = parseInt($('#month').text());
			var year = parseInt($('#year').text());
			console.log(month);
			var next_month = month + 1;
			if(next_month == 12) {
				next_month = 1;
				year = year + 1;
			}
			var content = $(".content");
			$.ajax({
			  	type: "GET",
			  	url: "/checkins/index/"+year+'/'+next_month,
			  	success: function(result) {
			  		console.log(result);
			  		content.html(result);
			  	}
	      	});
		});
	});
})
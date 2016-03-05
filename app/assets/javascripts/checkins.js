jQuery(function($) { 
	var left = $('#arrow-lepkpoft');
	var right = $('#arrow-right');
	console.log(left);

	left.on("click", function(){
		console.log("aaa");
		var next_month = remembered_date.getMonth();
		$.ajax({
		  	type: "GET",
		  	url: "/checkins/index/"+remembered_date.getFullYear()+'/'+next_month,
		  	success: function(result){
		  		console.log(result);
		  		content.html(result);
		  	}
      	});
	});
})
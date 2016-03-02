jQuery(function($) {   
	var postBut = $("#postBut");
	var content = $(".content");
	var bar = $(".bar");
	postBut.on("click", function(){
		content.html("home");
		$.ajax({
		  	type: "GET",
		  	url: "/posts",
		  	success: function(result){
		  		console.log(result);
		  		content.html(result);
		  	}
      	});
	})
	var pro = $("progress");
	pro.css("value",50);
})
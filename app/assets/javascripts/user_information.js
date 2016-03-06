jQuery(function($) {   
	var postBut = $("#postBut");
	var calBut = $("#calBut");
	var content = $(".content");
	var bar = $(".bar");
	var remembered_date = new Date();

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

	calBut.on("click", function(){
		content.html("home");
		var today = new Date();
		var month = today.getMonth()+1;
		$.ajax({
		  	type: "GET",
		  	url: "/checkins/index/"+today.getFullYear()+'/'+month,
		  	success: function(result){
		  		console.log(result);
		  		content.html(result);
		  	}
      	});

	})

    $('#user_information_avatar').on('change', function(event) {
   	    var files = event.target.files;
   	    var image = files[0];
   	    var reader = new FileReader();
   	    reader.onload = function(file) {
   	    	var img = new Image();
   	    	console.log(file);
   	    	img.src = file.target.result;
   	    	$('.target').html(img);
   	    }
   	    reader.readAsDataURL(image);
   	    console.log(files);
   	});

})
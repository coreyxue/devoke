jQuery(function($) {   
	var postBut = $("#postBut");
	var calBut = $("#calBut");
	var feedBut = $("#feedBut");
	var content = $(".content");
	var bar = $(".bar");
	var popup = $("#popup");
	var closePopup = $("#popup .closeImg");
	var post_contents = $("#popup .post-contents");
	var remembered_date = new Date();

	popup.hide();

	feedBut.on("click", function(){
		$.ajax({
		  	type: "GET",
		  	url: "/changelogs/index/0/50",
		  	success: function(result){
		  		content.html(result);
		  	}
      	});
	})

	postBut.on("click", function(){
		popup.fadeIn(300);
		$.ajax({
		  	type: "GET",
		  	url: "/posts",
		  	success: function(result){
		  		console.log(result);
		  		post_contents.html(result);
		  	}
      	});
	})

	closePopup.on("click", function(){
		popup.hide();
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
   	    	$('.preview').html(img);
   	    }
   	    reader.readAsDataURL(image);
   	    console.log(files);
   	});

})
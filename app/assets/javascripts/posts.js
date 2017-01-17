jQuery(function($) {  
  $(document).ajaxComplete(function(){
    var radio_images = [$('#radio_image_1'),$('#radio_image_2'),$('#radio_image_3'),$('#radio_image_4'),$('#radio_image_5'),$('#radio_image_6')];
    var radios = [$('#radio1'),$('#radio2'),$('#radio3'),$('#radio4'),$('#radio5'),$('#radio6')];
    var sub_but = $('#submit-but');
    var mood1sPath = "<%= asset_path('mood1s.png') %>";
    var text_input = $('.text-input textarea');
    var popup = $("#popup");

    var radio = 1;

    sub_but.on("click", function(){
      console.log(radio);
      console.log(text_input.val());
      $.ajax({
        type: "POST",
        url: "/posts",
        data: {post:{mood:radio, message:text_input.val()}},
        success: function(result){
          console.log(result);
          popup.hide();
        }
        });
    })

    radio_images[0].on("click", function() {
      radios[0].prop("checked", true);
      //TODO: find a better way to do this!!!
      //radio_images[0].html("<%= image_tag 'mood1s.png' %>");
      //radio_images[0].attr('src', mood1sPath);
      radio_images[0].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood1s.png');
      radio_images[1].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood2.png');
      radio_images[2].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood3.png');
      radio_images[3].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood4.png');
      radio_images[4].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood5.png');
      radio_images[5].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood6.png');
    })
    radio_images[1].on("click", function() {
      radios[1].prop("checked", true);
      radio = 2;
      radio_images[0].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood1.png');
      radio_images[1].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood2s.png');
      radio_images[2].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood3.png');
      radio_images[3].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood4.png');
      radio_images[4].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood5.png');
      radio_images[5].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood6.png');
    })
    radio_images[2].on("click", function() {
      radios[2].prop("checked", true);
      radio = 3;
      radio_images[0].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood1.png');
      radio_images[1].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood2.png');
      radio_images[2].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood3s.png');
      radio_images[3].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood4.png');
      radio_images[4].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood5.png');
      radio_images[5].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood6.png');
    })
    radio_images[3].on("click", function() {
      radios[3].prop("checked", true);
      radio = 4;
      radio_images[0].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood1.png');
      radio_images[1].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood2.png');
      radio_images[2].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood3.png');
      radio_images[3].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood4s.png');
      radio_images[4].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood5.png');
      radio_images[5].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood6.png');
    })
    radio_images[4].on("click", function() {
      radios[4].prop("checked", true);
      radio = 5;
      radio_images[0].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood1.png');
      radio_images[1].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood2.png');
      radio_images[2].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood3.png');
      radio_images[3].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood4.png');
      radio_images[4].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood5s.png');
      radio_images[5].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood6.png');
    })
    radio_images[5].on("click", function() {
      radios[5].prop("checked", true);
      radio = 6;
      radio_images[0].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood1.png');
      radio_images[1].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood2.png');
      radio_images[2].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood3.png');
      radio_images[3].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood4.png');
      radio_images[4].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood5.png');
      radio_images[5].attr('src', 'https://app.member.virginpulse.com/img/moodicons/mood6s.png');
    })
  });
})
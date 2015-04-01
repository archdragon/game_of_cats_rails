function change_setting(setting_name, by, limit) {
  var current_value = parseInt($(".selected-"+setting_name).val());
  current_value += by;
  if(current_value < 0) {
    current_value = limit;
  } else if(current_value > limit) {
    current_value = 0;
  }

  $(".setting-image-"+setting_name).attr("src", "/public_images/appearance/"+setting_name+"/"+current_value+".png");

  $(".selected-"+setting_name).val(current_value);
}

$(document).ready(function(){
  $(".setting-eyes .btn-left").click(function(){
    change_setting("eyes", -1, 9);
  });
  $(".setting-eyes .btn-right").click(function(){
    change_setting("eyes", 1, 9);
  });
  $(".setting-fur .btn-left").click(function(){
    change_setting("fur", -1, 9);
  });
  $(".setting-fur .btn-right").click(function(){
    change_setting("fur", 1, 9);
  });
  $(".setting-face .btn-left").click(function(){
    change_setting("face", -1, 2);
  });
  $(".setting-face .btn-right").click(function(){
    change_setting("face", 1, 2);
  });
});

$(document).ready(function(){
  $("#continue-button").click(function(){
    $("#continue-button").hide();
    $("#hidden-fields").slideDown();
    $("#hidden-form-button").fadeIn();
  });

  $("#cat-name-reload").click(function(){
    $.get("/cats/generate_name.html", function(data) {
      $("#cat-name").val(data);
    });
  });
})

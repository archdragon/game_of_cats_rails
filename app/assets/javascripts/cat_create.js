function change_setting(setting_name, by) {
  var current_value = parseInt($(".selected-"+setting_name).val());
  current_value += by;
  if(current_value < 0) {
    current_value = 9;
  } else if(current_value > 9) {
    current_value = 0;
  }

  $(".setting-image-"+setting_name).attr("src", "/public_images/appearance/"+setting_name+"/"+current_value+".png");

  $(".selected-"+setting_name).val(current_value);

  alert(current_value);
}

$(document).ready(function(){
  $(".setting-eyes .btn-left").click(function(){
    change_setting("eyes", -1);
  });
  $(".setting-eyes .btn-right").click(function(){
    change_setting("eyes", 1);
  });
  $(".setting-fur .btn-left").click(function(){
    change_setting("fur", -1);
  });
  $(".setting-fur .btn-right").click(function(){
    change_setting("fur", 1);
  });
});

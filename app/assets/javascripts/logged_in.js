function play_video(selector){
  selector.get(0).play();
}

function pause_video(selector){
  selector.get(0).pause();
}

$(document).ready(function(){
  $(".header-video-activator").hover(function(){
    play_video($("#header-video"));
  }, function(){
    pause_video($("#header-video"));
  });
});
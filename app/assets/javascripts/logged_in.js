function play_video(selector){
  selector.get(0).play();
}

function pause_video(selector){
  selector.get(0).pause();
}

$(document).ready(function(){
  $(".header-video-activator").on({
    mouseenter: function(){
      alert("c");
      play_video($("#header-video"));
    },
    mouseleave: function(){
      pause_video($("#header-video"));
    }
  });
});
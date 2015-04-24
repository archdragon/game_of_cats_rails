Cat.Videoplayable = Ember.Mixin.create({
  actions: {
    start: function(startingId) {
      var _this = this;
      $.ajax({
        type: "POST",
        url: "/"+_this.resourceName+"/"+startingId+"/start",
        success: function(data) {
          _this.set("flashData", data);
        }
      });
    },
    playVideo: function() {
      $("#header-video").get(0).play();
    },
    pauseVideo: function() {
      $("#header-video").get(0).pause();
    }
  }
});
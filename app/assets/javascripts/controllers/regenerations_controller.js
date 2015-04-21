Cat.RegenerationsController = Ember.ArrayController.extend({
  actions: {
    start: function(regeneration_id) {
      var _this = this;
      $.ajax({
        type: "POST",
        url: "/regenerations/"+regeneration_id+"/start",
        success: function(data) {
          _this.set("flashData", data);
        }
      });
    }
  }
});
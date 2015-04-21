Cat.FlashView = Ember.View.extend({
  templateName: "flash",
  success: false,
  message: "",
  isVisible: false,
  init: function() {
    this._super();
    this.get('controller.flashData');
  },
  updateMessage: function() {
    message = this.get('controller.flashData.message');
    success = this.get('controller.flashData.success');
    if(success == "true") {
      success = true;
    }
    this.set("message", message);
    this.set("success", success);
    this.set("isVisible", true);
  }.observes('controller.flashData')
});
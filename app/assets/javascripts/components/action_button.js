Cat.ActionButtonComponent = Ember.Component.extend({
  click: function() {
    this.sendAction('action', 1);
  }
});
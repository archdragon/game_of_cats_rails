Cat.ActionButtonComponent = Ember.Component.extend({
  click: function() {
    this.sendAction('submit', this.get('actionId'));
  },
  mouseEnter: function() {
    this.sendAction('on');
  },
  mouseLeave: function() {
    this.sendAction('off');
  }
});
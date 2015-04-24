Cat.IndexRoute = Ember.Route.extend({
  beforeModel: function() {
    this.transitionTo('cat');
  }
});
Cat.TrainingsRoute = Ember.Route.extend({
  model: function() {
    return this.store.find('training');
  }
});
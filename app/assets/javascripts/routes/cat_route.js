Cat.CatRoute = Ember.Route.extend({
  model: function() {
    return this.store.find('cat', 1);
  }
});
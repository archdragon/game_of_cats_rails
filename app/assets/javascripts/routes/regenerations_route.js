Cat.RegenerationsRoute = Ember.Route.extend({
  model: function() {
    return this.store.find('regeneration');
  },
  setupController: function(controller, model) {
    this.controller.set('model', model);
  }
});
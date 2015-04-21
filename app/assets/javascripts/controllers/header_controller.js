Cat.HeaderController = Ember.ObjectController.extend({
  needs: ['currentUser', 'application', 'regenerations'],
  gold: 0,
  cat_energy: 0,
  preload: function() {
    this.refresh();
  }.on('init'),
  refresh: function() {
    alert('Refreshing header');
    self = this;
    currentUser = this.store.find('currentUser', 1).then(function (user) {
      self.set('gold', user.get('gold'));
      self.set('cat_energy', user.get('cat_energy'));
    });
  }.observes('controllers.application.currentPath', 'controllers.regenerations.flashData')

});
Cat.HeaderController = Ember.ObjectController.extend({
  needs: ['currentUser', 'application', 'regenerations', 'missions', 'trainings'],
  gold: 0,
  cat_energy: 0,
  preload: function() {
    this.refresh();
  }.on('init'),
  refresh: function() {
    self = this;
    currentUser = this.store.fetchById('currentUser', 1).then(function (user) {
      self.set('gold', user.get('gold'));
      self.set('cat_energy', user.get('cat_energy'));
      //alert('Update gold and energy: ' + self.get('gold') + ' ' + self.get('cat_energy'));
    });
  }.observes('controllers.application.currentPath',
    'controllers.regenerations.flashData.message',
    'controllers.missions.flashData.message',
    'controllers.trainings.flashData.message')

});
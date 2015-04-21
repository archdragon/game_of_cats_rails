Cat.Router.map(function() {
  this.resource('about');
  this.resource('currentUser');
  this.resource('cat');
  this.resource('trainings');
  this.resource('missions');
  this.resource('regenerations', function() {
    this.route('start');
  });
});

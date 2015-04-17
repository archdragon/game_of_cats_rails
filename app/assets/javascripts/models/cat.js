Cat.Cat  = DS.Model.extend({
  name: DS.attr('string'),
  energy: DS.attr('number'),
  fur_image: DS.attr('string'),
  face_image: DS.attr('string'),
  eyes_image: DS.attr('string'),
  energy_bar_width_style: DS.attr('string'),
  attributes: DS.attr(),
  interests: DS.attr()
});

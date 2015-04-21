Cat.Training  = DS.Model.extend({
  name: DS.attr('string'),
  translated_name: DS.attr('string'),
  translated_description: DS.attr('string'),
  cost: DS.attr('number')
});

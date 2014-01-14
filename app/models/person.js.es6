export default DS.Model.extend({
  firstname: DS.attr('string'),
  lastname: DS.attr('string'),
  city: DS.attr('string'),
  state: DS.attr('string'),
  email: DS.attr('string'),
  company: DS.belongsTo('company'),

  fullName: function(){
    return this.get('firstname') + ' ' + this.get('lastname');
  }.property('firstname','lastname'),

  location: function(){
    var location = this.get('city');
    var state = this.get('state');
    if (state && state.trim().length > 0){
      location+= ', ' + state;
    }
    return location;
  }.property('city', 'state')
});

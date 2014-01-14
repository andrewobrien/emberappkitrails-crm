export default DS.Model.extend({
  subject: DS.attr('string'),
  // taskable: DS.belongsTo('taskable', {polymorphic: true})
});

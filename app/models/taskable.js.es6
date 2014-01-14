export default DS.Model.extend({
  tasks: DS.hasMany('task', {async: true})
});

export default Ember.Route.extend({
  model: function() {
    return this.store.createRecord('task');
  },
  deactivate: function() {
    var model = this.get('controller.model');
    if (model.get('isNew')) {
      model.deleteRecord();
    }
  },
  actions: {
    save: function() {
      var model = this.get('controller.model');
      var _this = this;
      model.save().then(function() {
        _this.transitionTo('tasks.show', model);
      });
    },
    cancel: function() {
      this.transitionTo('tasks.index');
    }
  }
});

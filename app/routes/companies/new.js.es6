export default Ember.Route.extend({
  model: function() {
    return this.store.createRecord('company');
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
        _this.transitionTo('companies.show', model);
      });
    },
    cancel: function() {
      this.transitionTo('companies.index');
    }
  }
});

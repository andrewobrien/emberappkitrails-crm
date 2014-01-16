import Index from 'app/routes/companies/index'

export default Ember.Route.extend({
  model: function(params) {
    return this.store.find('company', params.company_id);
  },

  actions: {
    destroyRecord: function() {
      var model = this.get('controller.model');
      var _this = this;
      model.destroyRecord().then(function() {
        _this.transitionTo('companies.index');
      });
    }
  }
});

var Router = Ember.Router.extend({
  location: 'history'
});

Router.map(function() {
  this.resource('tasks', function() {
    this.route('new');
    this.route('show', {path: ':task_id'});
    this.route('edit', {path: ':task_id/edit'});
  });
  this.resource('taskables', function() {
    this.route('new');
    this.route('show', {path: ':taskable_id'});
    this.route('edit', {path: ':taskable_id/edit'});
  });
  this.resource('companies', function() {
    this.route('new');
    this.route('show', {path: ':company_id'});
    this.route('edit', {path: ':company_id/edit'});
  });
  this.resource('people', function() {
    this.route('new');
    this.route('show', {path: ':person_id'});
    this.route('edit', {path: ':person_id/edit'});
  });
});

export default Router;

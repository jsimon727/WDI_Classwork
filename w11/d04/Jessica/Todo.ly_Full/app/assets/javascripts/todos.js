var ul;

var Todo = Backbone.Model.extend({ 
  urlRoot: "/todos"
});

var TodoCollection = Backbone.Collection.extend({
  model: Todo,
  url: "/todos"
});

var TodoView = Backbone.View.extend({
  tagName: "li",

  initialize: function() {
    this.listenTo(this.model, "change", this.render);
    this.render();
  },

  events: {
    "change input[type='checkbox']": "toggleDone",
    "click span": "destroy"
  },

  toggleDone: function(e) {
    var checked = $(e.target).is(":checked");
    this.model.set('done', checked);
    this.model.save();
  },

  destroy: function() {
    this.model.destroy();
    this.remove();
  },

  render: function() {
    var template = $("script.template").html();
    var rendered = _.template(template, { todo: this.model });
    this.$el.html(rendered);
  }
});

var FormView = Backbone.View.extend({
  el: "form",

  events: {
    "submit": "createTodo"
  },

  createTodo: function(e) {
    e.preventDefault();
    var task = this.el.elements["task"].value;
    // var todo = new Todo({task: task});
    // todo.save();
    // this.collection.add(todo);
    this.collection.create({task: task});
    this.el.reset();
  }
});

var todos = new TodoCollection();

var ListView = Backbone.View.extend({
  el: "ul",

  initialize: function() {
    this.listenTo(this.collection, "reset", this.addAll);
  },

  addAll: function() {
    this.collection.each(function(todo) {
      var view = new TodoView({model: todo});
      this.$el.append(li);
    });
  }
});

todos.on("reset", function() {
  render();
});

function render() {
  ul.empty();

  todos.each(function(todo) {
    var view = new TodoView({model: todo});
    var li = view.el;
    ul.append(li);
  });
};

$(document).ready(function(){
  ul = $("ul");

  todos.fetch({ reset: true });

  var formView = new FormView({collection: todos});
});
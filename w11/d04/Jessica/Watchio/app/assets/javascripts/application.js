// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require underscore
//= require backbone
//= require_tree .

var Movie = Backbone.Model.extend({
  urlRoot: "/movies"  
})

var MovieCollection = Backbone.Collection.extend({
  model: Movie,
  url: "/movies"
})

var MovieView = Backbone.View.extend({
  tagName: "li",

  initialize: function(){
    this.listenTo(this.model, "change", this.render);
    this.render;
  },

  events: {
    "change input[type='checkbox']": "toggleDone",
    "click span": "destroy"
  },

  toggleDone: function(e){
    var checked = $(e.target).is(":checked");
    this.model.set('done', checked);
    this.model.save();
  },

  destroy: function(){
    this.model.destroy();
    this.remove();
  },

  render: function(){
    var template = $("script.template").html();
    var rendered = _.template(template, { movie: this.model });
    this.$el.html(rendered)
  }
});

var FormView = Backbone.View.extend({
  el: "form",

  events: {
    "submit": "createMovie"
  },

  createMovie: function(e){
    e.preventDefault();
    var title = this.el.elements["title"].value;
    this.collection.create({title: title});
    this.el.reset();
  }
});

  var ListView = Backbone.View.extend({
    el: "ul",

    initialize: function(){
      this.listenTo(this.collection, "add", this.addOne);
    },

    addOne: function(movie){
        var view = new MovieView({model: movie});
        this.$el.append(view.el)
      }
    });

// movies.on("reset", function(){
//   render();
// });

// function render(){
//   ul.empty();

//   movies.each(function(movie) {
//     var view = new MovieView( {model: movie} );
//     var li = view.el;
//     ul.append(li);
//   });
// };

$(document).ready(function(){
  var movies = new MovieCollection();
  var listView = new ListView({collection: movies})
  var formView = new FormView({collection: movies})
  movies.fetch();
});



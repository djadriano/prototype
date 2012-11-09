//= require "_vendors/core/jquery"
//= require "_vendors/core/underscore"
//= require "_vendors/core/json2"
//= require "_vendors/core/backbone"

//= require "_vendors/shared/mixins"

//= require "_app/views/index"

//= require "_app/routers/app"

//= require_self

$(function() {
  new PROTOTYPE.IndexView;
  new PROTOTYPE.Routes;
  Backbone.history.start();
});
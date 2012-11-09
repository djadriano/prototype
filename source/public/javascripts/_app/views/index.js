//= require _app/templates/teste

PROTOTYPE.IndexView = Backbone.View.extend({

  template: JST[ '_app/templates/teste' ],

  initialize : function() {
    $( 'body' ).append( this.template( { name : 'Adriano' } ) );
  }

});
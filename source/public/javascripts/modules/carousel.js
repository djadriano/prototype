//= require "_vendors/core/jquery"
//= require "_vendors/shared/enquire.min"
//= require "_vendors/shared/carousel"

//= require_self

$(function() {

  enquire.register("screen and (max-width:599px)", {

    match : function() {
      $('.m-carousel').carousel({
          dragRadius: 10
        , moveRadius: 20
        , classPrefix: undefined
        , classNames: {
            outer: "carousel"
          , inner: "carousel-inner"
          , item: "item"
          , center: "center"
          , touch: null
          , dragging: null
          , active: "active"
        }
      });
    }

  }).register("screen and (min-width:600px)", {

    match : function() {
      $('.m-carousel').carousel();
    }

  }).listen();

});
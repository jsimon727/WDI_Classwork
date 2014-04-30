$(window).on('scroll', function() {
  var scroll = $(window).scrollTop();
  $('img').css('top', (scroll * -.8 ) +'px')
  $('.bg').css('top', (scroll * -.2) + 'px')
})


$(window).on('scroll',function() {
  s = $(window).scrollTop();
  $(".bg").css("-webkit-transform","translateY("+ (-s*2) + "px)")
  $(".top-center").css("-webkit-transform","translateY("+ (s*2) + "px)")
  $(".top-right").css("-webkit-transform","rotateY("+ (-s*5) + "deg)")
  $(".bottom-left").css("-webkit-transform","translateY("+ (s*7) + "px)")
  $(".top-left").css("-webkit-transform","rotateZ("+ (-s*2) + "deg)")
  $(".bottom-center").css('transition', 'skewY(' + (s *.2) + 'deg)')
});



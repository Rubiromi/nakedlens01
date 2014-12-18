//= require jquery
//= require jquery_ujs
//= require bootstrap

$(document).ready(function(){
  $('h1').on('mouseenter', function() {
    $('h1').css({'color': 'red'}, 300);
  });
  $('#photo01').fadeIn(3000);
});

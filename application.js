$(document).ready(function(){

  $('#intro').on('mouseover', function() {
    $('#intro').css({'color': '#8FE8F2'}, 4000);
    // $('#intro').animate({'color': '#8FE8F2'}, 'slow');
  });

  $('#intro-jp').on('mouseover', function() {
    $('#intro-jp').css({'color': '#8FE8F2'}, 4000);
  });

  $('#intro-jp2').on('mouseover', function() {
    $('#intro-jp2').css({'color': '#F5FCA7'}, 4000);
  });

  $('#intro-jp3').on('mouseover', function() {
    $('#intro-jp3').css({'color': '#8FE8F2'}, 4000);
  });

  $('#contact').on('click', function () {
    $('#footer-border').animate({
                     'font-size': '25px',
                     }, 600)
           .css({'color': '#8FE8F2'});
  });

  $('#contact').on('mouseleave', function () {
    $('#footer-border').animate({'position': 'fixed',
                     'left': '34%',
                     'font-weight': 300,
                     'font-size': '15px',
                     'margin': '5px'}, 600)
           .css({'color': 'white'});
  });

  $('#photo01').fadeIn(1800);
  $('#photo01').on('mouseover', function() {
    $(this).fadeOut(1800);
    $('#photo02').fadeIn(1800);
  });
});

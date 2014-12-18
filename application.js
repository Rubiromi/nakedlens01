$(document).ready(function(){
  $('#intro').on('mouseover', function() {
    $('#intro').css({'color': '#8FE8F2'}, 4000);
    // $('#intro').animate({'color': '#8FE8F2'}, 'slow');
  });

  $('#footer-border').on('mouseover', 'p', function () {
    $(this).animate({'color': '#8FE8F2', 'font-size': '25px', 'margin': '-35px', 'left': '25%'}, 600);
  });

  $('#footer-border').on('mouseleave', 'p', function () {
    $(this).css({'position': 'fixed', 'left': '34%', 'color': 'white',
    'font-weight': 300, 'font-size': '15px'});
  });

  $('#photo01').fadeIn(3400);
});

$(document).ready(function(){
  $('#intro').on('mouseover', function() {
    $('#intro').css({'color': '#8FE8F2'}, 4000);
    // $('#intro').animate({'color': '#8FE8F2'}, 'slow');
  });
  
  $('#intro-jp').on('mouseover', function() {
    $('#intro-jp').css({'color': '#8FE8F2'}, 4000);
  });

  $('#footer-border').on('mouseenter', 'p', function () {
    $(this).animate({'font-size': '25px',
                     'margin': '-35px',
                     'left': '25%'}, 600)
           .css({'color': '#8FE8F2'});
  });

  $('#footer-border').on('mouseleave', 'p', function () {
    $(this).animate({'position': 'fixed',
                     'left': '34%',
                     'font-weight': 300,
                     'font-size': '15px',
                     'margin': '5px'}, 600)
           .css({'color': 'white'});
  });

  $('#photo01').fadeIn(3400);
});

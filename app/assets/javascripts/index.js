$( ".tint.img-circle" ).mouseover(
  function() {
    $( this ).show().animate({opacity: 0.0 }, 200);
 }).mouseout(function() {
    $( this ).show().animate({opacity: 1 }, 200);
});

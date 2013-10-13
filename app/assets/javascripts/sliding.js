$(function() {
  $('#open_settings').on('click', function() {
    $('#settings').animate({right: '0'}, 1000, function() {

    });
  });

  $('#close_settings').on('click', function() {
    $('#settings').animate({right: '-300'}, 1000, function() {

    });
  });
});

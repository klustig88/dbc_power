function menu_slide() {
  $('#open_settings').on('click', function() {
    $('#settings').animate({right: '0'}, 1000, function() {

    });
  });

  $('#close_settings').on('click', function() {
    $('#settings').animate({right: '-300'}, 1000, function() {

    });
  });
}


// $(function() {
//   $('#open_settings').on('click', function() {
//     $('#settings').animate({right: '0'}, 1000, function() {

//     });
//   });

//   $('#close_settings').on('click', function() {
//     $('#settings').animate({right: '-300'}, 1000, function() {

//     });
//   });
// });

$(function() {
  initPage();
});
$(window).bind('page:change', function() {
  initPage();
});
function initPage() {
    menu_slide();
}

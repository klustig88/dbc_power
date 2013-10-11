$(document).ready(function() {
  $("#up_vote_button").on('click', function(e){
    e.preventDefault();

    var url = $(this).attr('href')

    $.get(url, function(r) {
      console.log(r);
    });
  });
});

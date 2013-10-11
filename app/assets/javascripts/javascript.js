$(document).ready(function() {
  $('#student').hide();
  $("#up_vote_button").on('click', function(e){
    e.preventDefault();
    $('#student').show();
  });
});

$(document).ready(function() {
  $('#student').hide();
  $("#up_vote_button").on('click', function(e){
    e.preventDefault();
    $('#student').show();
    $('#student').on('submit',function(e){
      e.preventDefault();
        
      var url = $(this).attr('action')
      var data = $(this).serialize();
      console.log(data)
      $.post(url,data,function(response){
        $('.comment').append("<li>"+ response.comment  +"</li>");
      });
      console.log
    

    });
  });
});

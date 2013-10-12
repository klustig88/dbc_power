// $(document).ready(function() {

  // $('#student').hide();
  // $("#up_vote_button").on('click', function(e){
  //   e.preventDefault();
  //   $('#student').show();
  //   $('#student').on('submit',function(e){
  //     e.preventDefault();
        
  //     var url = $(this).attr('action')
  //     var data = $(this).serialize();
  //     console.log(data)
  //     $.post(url,data,function(response){
  //       $('.comment').append("<li>"+ response.comment  +"</li>");
  //       $('#student').hide();
  //     });

    

  //   });
  // });
// });

$(function() {
  initPage();
});
$(window).bind('page:change', function() {
  initPage();
});
function initPage() {
    $('#student').hide();
    $("#up_vote_button").on('click', function(e){
    e.preventDefault();
    $('#student').show();
    $('#student').on('submit',function(e){
      e.preventDefault();
      $('.comment').show(); 
      $('.bigger').remove()  
      var url = $(this).attr('action')
      var data = $(this).serialize();
      console.log(data)
      $.post(url,data,function(response){
        if(response.comment == "Make it bigger!"){
          $('.comment').hide();         
          $('ul').append("<li class=\"bigger\"  >"+ response.comment  +"</li>");
        }  
        else if(response.comment == "Dude buy some votes!"){  
          $('.comment').hide();  
          $('#student').hide();     
          $('ul').append("<li class=\"bigger\"  >"+ response.comment  +"</li>");
        }else{
          $('.comment').append("<li class=\"addition\"  >"+ response.comment  +"</li>");
        }  
      });

    

    });
  });

}

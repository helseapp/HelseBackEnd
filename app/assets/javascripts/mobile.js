

$(document).ready(function(){
    // Show/hide menu
    $('.patients_to_visit').click(function(){
        id = $(this).attr('id')

        if($('#menu'+ id).css('display') === "none"){
            $('#menu' + id).slideDown("slow");
        }
        else{
            $('#menu' + id).slideUp("slow");
        }
    }),
    
    // Show/hide more info about the patient
    $('#more_info').click(function(){
        if($('#more_info').attr('src') === "/assets/more.png"){
            $('#more_info').attr("src","/assets/less.png");
            $('#extended_info').slideDown("slow");
        }
        else{
            $('#more_info').attr('src', '/assets/more.png');
            $('#extended_info').stop().slideUp("slow");
        }   
    }),
    
    // Show/hide task descriptions
    $('.tasks').click(function(){
        id = $(this).attr('id');

        if($('#task_description' + id).css('display') === "none"){
            $('#task_description' + id).slideDown('slow');
        }
        else{
            $('#task_description'+id).stop().slideUp('slow');
        }
    }),
    
    // Show/hide comments
    $('#more_comments').click(function(){
        if($('#more_comments').attr('src') === "/assets/more.png"){
            $('#more_comments').attr("src","/assets/less.png");
            $('.hidden_comments').stop().slideDown("slow");
        }
        else{
            $('#more_comments').attr('src', '/assets/more.png');
            $('.hidden_comments').stop().slideUp("slow");
        }   
    
    }),

    //Character counter
    $('#comment_text').keyup(function(){
        var limit = 140;
        var warning = 10;
        var enteredText = $(this).val().length; 
        var remaining = limit - enteredText;
        
        if(remaining > warning){
            $('#character_counter').html(remaining +'');
        }
        
        if(remaining <= warning && remaining >= 0){
            $('#character_counter').html(remaining +'').css('color','red');
            
        }
        
    }),
    
    // Scroll up and down
    $('#up').click(function(){
        scroll = $('.screen').scrollTop();
        $('.screen').stop().animate({'scrollTop': scroll-150}, 500);
    }),
    
    $('#down').click(function(){
        scroll = $('.screen').scrollTop();
        $('.screen').stop().animate({'scrollTop': scroll+150}, 500);
    
    })

});

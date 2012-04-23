// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready(function(){
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
    
    // Scroll up and down
    $('#up').click(function(){
        scroll = $('.screen').scrollTop();
        $('.screen').animate({'scrollTop': scroll-100}, 1000);
    }),
    
    $('#down').click(function(){
        scroll = $('.screen').scrollTop();
        $('.screen').animate({'scrollTop': scroll+100}, 1000);
    
    })
    
    
});
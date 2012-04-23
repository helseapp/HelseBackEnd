

$(document).ready(function(){
    $('#more_info').click(function(){
        if($('#more_info').attr('src') === "/assets/more.png"){
            $('#more_info').attr("src","/assets/less.png");
            $('#extended_info').show("slow");
        }
        else{
            $('#more_info').attr('src', '/assets/more.png');
            $('#extended_info').stop().hide("slow");
        }   
    }),
    
    $('.tasks').click(function(){
        id = $(this).attr('id');

        if($('#task_description' + id).css('display') === "none"){
            $('#task_description' + id).show('slow');
        }
        else{
            $('#task_description'+id).stop().hide('slow');
        }
    })
});

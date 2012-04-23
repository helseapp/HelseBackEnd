
$(document).ready(function(){
    $('#more_img').click(function(){
        if($('#more_img').attr('src') === "/assets/more.png"){
            $('#more_img').attr("src","/assets/less.png");
            $('#extended_info').show("slow");
        }
        else{
            $('#more_img').attr('src', '/assets/more.png');
            $('#extended_info').hide("fast");
        }
        
        
    });
    
    $('.tasks').click(function(){
        id = $(this).attr('id');

        if($('#task_description' + id).css('display') === "none")
            $('#task_description' + id).show("slow");
        else
            $('#task_description' + id).hide("fast");
        
    });

});

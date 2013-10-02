jQuery(document).ready(function($){

    IMAGES = {},
    counter = 0;
    $('#photoimg').on('change', function(){

        $("#cropimage").ajaxForm({target: '#preview',
            beforeSubmit: function(e){
             $("#imageloadstatus").show();
             $("#imageloadbutton").hide();
            },
            success: function(xhr, status, response){
             IMAGES[counter++] =  response.responseText;
             var $img = $("<img/>").attr('src', response.responseText);
             $("#preview").append($img);
             $("#imageloadstatus").hide();
             $("#imageloadbutton").show();
            },
            error:function(e){
                $("#imageloadstatus").hide();
                $("#imageloadbutton").show();
            }}).submit();

    });
});
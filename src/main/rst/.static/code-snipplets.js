$(document).ready(function() {
    //Hide the introductory text (which is useful in the pdf version)
    $(".toggled p").hide();
    //Hide the code and insert a button before it with the value equals to the class of the code
    $(".toggled > div").each(function(i){
        $(this).hide().before("<input type='button' class='toggler' value='"+$(this).attr("class").substring(10)+"'/>");
    });
    //Make the button toggle the code display
    $(".toggler").bind("click", function(){
        $(this).next().slideToggle();
    }).css({"padding":"3px"});
});


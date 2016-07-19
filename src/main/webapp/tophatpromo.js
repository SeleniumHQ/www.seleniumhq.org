$(document).ready(function(){
    $("#promo").slideDown("slow");
    $("body").addClass("push");
    $("#close").click(function(){
        $("#promo").remove();
        $("body").removeClass("push");
    });
});

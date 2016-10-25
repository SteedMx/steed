// Landing parallax
(function(){

  $(window).scroll(function(){
    $("section div").each(function(){
    $(this).css('margin-top',$(window).scrollTop()-$(this).parent().position().top);
        console.log();
    });
});

})()

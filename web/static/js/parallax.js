// Landing parallax
(function(){

  var textParallax1 = document.querySelectorAll(".text-parallax-1")
  var textParallax2 = document.querySelectorAll(".text-parallax-2")
  var textParallax3 = document.querySelectorAll(".text-parallax-3")
  var viewport = 800

  window.onscroll = function(){
    [].slice.call(textParallax1).forEach(function(element,i){
      var scrollAmountPerSection = window.scrollY
      var elementPosition = 120 - (scrollAmountPerSection / 8) + "vh"
      element.style.bottom = elementPosition
    })

    ;[].slice.call(textParallax2).forEach(function(element,i){
      var scrollAmountPerSection = window.scrollY - viewport
      var elementPosition = 120 - (scrollAmountPerSection / 8) + "vh"
      element.style.bottom = elementPosition
    })

    ;[].slice.call(textParallax3).forEach(function(element,i){
      var scrollAmountPerSection = window.scrollY - (viewport * 2)
      var elementPosition = 120 - (scrollAmountPerSection / 8) + "vh"
      element.style.bottom = elementPosition
    })
  }

})()

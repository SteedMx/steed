// Text parallax
(function(){

  var textParallax = document.querySelectorAll(".text-parallax")
  var speed = 0.009

  window.onscroll = function(){
    [].slice.call(textParallax).forEach(function(element,i){

      var scrollAmountPerSection = (window.scrollY % 1600)
      var elementPosition = (12 - (scrollAmountPerSection / 100)) + "em"

      console.log("SCROLL", scrollAmountPerSection)
      console.log("ELEMENT POSITION", elementPosition)

      element.style.bottom = elementPosition

    })
  }

})()

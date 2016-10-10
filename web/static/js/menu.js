// Open and close menu
$('#menu-trigger').click(function() {
  $(this).toggleClass('menu-open menu-close')
  $('#menu').toggleClass('menu-hidden menu-visible')
})

// Open and close Solutions submenu
$('#solutions-menu').click(function() {
  $('.menu-sub-item').toggleClass('menu-hidden menu-visible')
})

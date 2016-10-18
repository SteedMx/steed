// Open and close menu
$('#menu-trigger').click(function() {
  $(this).toggleClass('menu-open menu-close')
  $('#menu').toggleClass('menu-hidden menu-visible')
  if ($('#be-quoted').hasClass('be-quoted-close')) {
    $('#be-quoted').toggleClass('be-quoted-open be-quoted-close')
    $('#be-quoted-section').toggleClass('be-quoted-hidden be-quoted-visible')
  }
})

// Open and close Solutions submenu
$('#solutions-menu').click(function() {
  $('.menu-sub-item').toggleClass('menu-hidden menu-visible')
})

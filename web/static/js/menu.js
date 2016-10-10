// Open menu
$("#menu-trigger-open").click(function() {
  $(this).switchClass("menu-trigger-open", "menu-trigger-close")
  $("#menu-hidden").switchClass("menu-hidden", "menu-visible")
})

// Close menu
$("#menu-trigger-close").click(function() {
  $(this).switchClass("menu-trigger-close", "menu-trigger-open")
  $("#menu-visible").switchClass("menu-visible", "menu-hidden")
})

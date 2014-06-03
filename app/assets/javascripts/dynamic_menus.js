function menuSelected() {
  menu_id = $('menu_id').getValue();
}

document.observe('dom:loaded', function() {
  menuSelected();
  $('menu_id').observe('change', menuSelected);
})
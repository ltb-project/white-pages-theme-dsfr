$(document).ready(function(){

  // Change CSS classes of + and - buttons
  $('button[data-action=add]').on("click", function (event) {
    $('button[data-action=del]').removeClass('btn-danger').removeClass('fr-icon-add-circle-line').addClass('fr-btn--secondary').addClass('fr-icon-delete-line');
  });

  // Catch valid / invalid state
  $('.fr-input').bind('change', function (event) {
    if ( $(event.target).is(':invalid') ) {
      $(this).closest('.fr-input-group').addClass('fr-input-group--error');
    } else {
      $(this).closest('.fr-input-group').removeClass('fr-input-group--error');
    }
  });

});

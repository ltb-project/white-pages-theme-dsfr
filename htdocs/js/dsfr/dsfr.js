$(document).ready(function(){

  // Change CSS classes of + and - buttons
  $('button[data-action=add]').on("click", function (event) {
      $('button[data-action=del]').removeClass('btn-danger').removeClass('fr-icon-add-circle-line').addClass('fr-btn--secondary').addClass('fr-icon-delete-line');
  });

});

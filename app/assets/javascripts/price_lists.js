$(document).ready(function () {
  $("#ingredient-table__delete-button").click(() => {
    var ingredientId = $('#ingredient_id').val();
    $.ajax({
      type: 'DELETE',
      url: '/ingredients/' + ingredientId,
      success: function (response) {
        $('tr[data-id=' + ingredientId +']').remove();
      }
    });
  });

  $("#ingredient-table__update-price-button").click(function () {
    var ingredientId = $(this).closest('tr').data('id');
    var providerId = $('h1').data('provider-id');
    var price = $('#ingredient_last_price').val();
    $.ajax({
      type: 'POST',
      url: '/price_lists',
      data: {
        ingredient_id: ingredientId,
        provider_id: providerId,
        price: price
      }
    });
  });
});

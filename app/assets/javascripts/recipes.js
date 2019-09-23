$(document).ready(function () {
  $("#recipe-item__delete-button").click(function () {
    var recipeItem = $(this).closest('.recipe-item')
    var recipeItemId = recipeItem.data('recipeItemId');
    $.ajax({
      type: 'DELETE',
      url: '/recipe_items/' + recipeItemId,
      success: function (response) {
        recipeItem.remove();
      }
    });
  });
});

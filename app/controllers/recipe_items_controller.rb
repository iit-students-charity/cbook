class RecipeItemsController < ApplicationController
  before_action :recipe_item

  def update
    recipe_item.update(recipe_item_attributes)
  end

  def destroy
    recipe_item.destroy
  end

  private

  def recipe_item
    @recipe_item ||= RecipeItem.find(id_from_params)
  end

  def recipe_item_attributes
    params.require(:recipe_item).permit(:preparation_method, :gram_per_kilogram_of_dish, :colories_per_gram)
  end
end

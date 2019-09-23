class RecipeItemsController < ApplicationController
  before_action :recipe_item, except: [:new, :create]

  def new
    @recipe_id = params[:recipe_id]
  end

  def create
    recipe_item = RecipeItem.create(recipe_item_attributes)
    redirect_to edit_recipe_path(recipe_item.recipe)
  end

  def update
    recipe_item.update(recipe_item_attributes)
  end

  def destroy
    recipe = recipe_item.recipe
    recipe_item.destroy
    redirect_to edit_recipe_path(recipe)
  end

  private

  def recipe_item
    @recipe_item ||= RecipeItem.find(params[:id])
  end

  def recipe_item_attributes
    params.require(:recipe_item).permit(:preparation_method, :gram_per_kilogram_of_dish, :colories_per_gram, :ingredient_id, :recipe_id)
  end
end

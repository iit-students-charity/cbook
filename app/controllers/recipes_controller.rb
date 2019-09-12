class RecipesController < ApplicationController
  before_action :recipe, except: [:new, :create]

  def show
  end

  def edit
  end

  def new
    @dish = Dish.find(params.permit(:dish_id)[:dish_id])
  end

  def create
    recipe = Recipe.create(recipe_attributes)
    redirect_to recipe_path(id: recipe.id)
  end

  def update
    recipe.update(recipe_attributes)
    redirect_to recipe_path(recipe)
  end

  def destroy
    dish = recipe.dish
    recipe.destroy
    redirect_to dish_path(dish)
  end

  private

  def recipe_attributes
    params.require(:recipe).permit(:name, :description, :author_id, :dish_id)
  end

  def recipe
    @recipe ||= Recipe.find(params.permit(:id)[:id])
  end
end

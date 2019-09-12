class IngredientsController < ApplicationController
  before_action :ingredient

  def update
    ingredient.update(ingredient_attributes)
  end

  private

  def ingredient
    @ingredient ||= Ingredient.find(id_from_params)
  end

  def ingredient_attributes
    params.require(:ingredient).permit(:name)
  end
end

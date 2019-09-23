class IngredientsController < ApplicationController
  before_action :ingredient, except: [:new, :create]

  def new
    @provider_id = params[:provider_id]
  end

  def create
    ingredient = Ingredient.create(ingredient_attributes)
    PriceList.create(ingredient: ingredient, provider: ingredient.provider, price: params[:ingredient][:price] || 0)
    redirect_to edit_provider_path(ingredient.provider)
  end

  def update
    ingredient.update(ingredient_attributes)
  end

  def destroy
    provider = ingredient.provider
    ingredient.destroy
    redirect_to edit_provider_path(provider)
  end

  private

  def ingredient
    @ingredient ||= Ingredient.find(params[:id])
  end

  def ingredient_attributes
    params.require(:ingredient).permit(:name, :provider_id)
  end
end

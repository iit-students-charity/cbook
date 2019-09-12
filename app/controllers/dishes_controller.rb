class DishesController < ApplicationController
  before_action :dish, except: [:index]

  def index
    @dishes = Dish.all
  end

  def show
    @recipes = dish.recipes
  end

  def edit

  end

  def destroy
    dish.destroy
    redirect_to dishes_path
  end

  def update
    dish.update(dish_attributes)
    redirect_to dish_path(dish)
  end

  private

  def dish_attributes
    params.require(:dish).permit(:name)
  end

  def dish
    @dish ||= Dish.find(params.permit(:id)[:id])
  end
end

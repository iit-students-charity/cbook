class DishesController < ApplicationController
  before_action :dish, except: [:index, :new, :create]

  def index
    @dishes = Dish.all
  end

  def show
    @recipes = dish.recipes.sort_by(&:colories)
  end

  def create
    new_dish = Dish.create(dish_attributes)
    redirect_to dish_path(new_dish)
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
    params.require(:dish).permit(:name, :group_id)
  end

  def dish
    @dish ||= Dish.find(params[:id])
  end
end

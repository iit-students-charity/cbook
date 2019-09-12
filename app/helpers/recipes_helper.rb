module RecipesHelper
  def colories(recipe)
    recipe.recipe_items.map(&:colories).inject(:+)
  end
end

Rails.application.routes.draw do
  resources :dishes
  resources :recipes
  resources :recipe_items
  resources :providers
  resources :ingredients
  resources :price_lists
end

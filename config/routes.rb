Rails.application.routes.draw do
  resources :dishes
  resources :recipes
  resources :recipe_items
end

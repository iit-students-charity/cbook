Rails.application.routes.draw do
  root to: "dishes#index"

  resources :dishes
  resources :ingredients, only: [:new, :create, :update, :destroy]
  resources :price_lists, only: [:index, :new, :create]
  resources :providers
  resources :recipe_items, only: [:update, :destroy]
  resources :recipes, except: :index
end

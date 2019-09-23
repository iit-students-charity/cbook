Rails.application.routes.draw do
  root to: "dishes#index"

  resources :dishes
  resources :ingredients, only: [:new, :create, :update, :destroy]
  resources :price_lists, only: [:index, :create]
  resources :providers
  resources :recipe_items, only: [:update, :destroy, :new, :create]
  resources :recipes, except: :index
end

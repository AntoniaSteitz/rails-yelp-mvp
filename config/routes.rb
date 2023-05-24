Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "restaurants", to: "restaurants#index"

  get "restaurants/new", to: "restaurants#new"
  post "restaurants", to: "restaurants#create"

  get "restaurants/:id", to: "restaurants#show"

  # # GET "restaurants/38/reviews/new"
  # resources :restaurants do
  #   resources :reviews, only: [:new]
  # end

  # # POST "restaurants/38/reviews"
  # resources :restaurants do
  #   resources :reviews, only: [:new, :create]
  # end
end

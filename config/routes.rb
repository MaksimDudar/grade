Rails.application.routes.draw do
  get 'home/index'
  root "home#index"

  resources :cards
  resources :mastercars
  resources :masters
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end

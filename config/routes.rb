Rails.application.routes.draw do
  get 'users/controler'
  get 'users/show'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:show]
  resources :books
  resources :bookings, only: [:create, :delete]
  get "/users/:id/shop", to: "users#shop", as: "shop"
  get "/users/:id/basket", to: "users#basket", as: "basket"
  delete "bookings/:id", to: "bookings#destroy", as: "remove_booking"
end

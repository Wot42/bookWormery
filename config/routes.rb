Rails.application.routes.draw do
  get 'users/controler'
  get 'users/show'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:show] do
    resources :books, only: [:show, :new, :create, :destroy, :edit, :update]
  end
  resources :books, only: [:index]
end

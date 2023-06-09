Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "movies#index"

  resources :movies do
    resources :comments, only: [:edit, :update, :new, :create]
  end
  resources :users, only: [:edit, :update]
end

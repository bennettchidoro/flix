Rails.application.routes.draw do
  # verb "url" => "name_of_controller#name_of_action"
  root 'movies#index'
  get "/signup" => "users#new"
  get "/signin" => "sessions#new"

  resources :movies do
    resources :reviews
  end

  resources :users

  resource :session, only: [:new, :create, :destroy]
end

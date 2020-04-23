Rails.application.routes.draw do
  resources :users
  # verb "url" => "name_of_controller#name_of_action"
  root 'movies#index'

  resources :movies do
    resources :reviews
  end
end

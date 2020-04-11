Rails.application.routes.draw do
  resources :reviews
  # verb "url" => "name_of_controller#name_of_action"
  root 'movies#index'
  resources :movies
end

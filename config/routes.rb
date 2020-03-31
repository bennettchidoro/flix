Rails.application.routes.draw do
  # verb "url" => "name_of_controller#name_of_action"
  root 'movies#index'
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show", as: "movie"
  get "/movies/:id/edit" => "movies#edit", as: "edit_movie"
  patch "movies/:id" => "movies#update"
end

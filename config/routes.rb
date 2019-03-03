Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get '/movies' => 'movies#index'
    get '/movies/:id' => 'movies#show'
    get 'movies/:title' => 'movies#show_title'
    post 'movies/' => 'movies#create'
    #:id takes custominput from the user and shows the user
  end
end

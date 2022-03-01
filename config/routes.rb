Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #users
  post "/users" => "users#create"
  get "/users/:id" => "users#show"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"

  #tattoos
  post "/tattoos" => "tattoos#create"
  get "/tattoos/:id" => "tattoos#show"
  patch "/tattoos/:id" => "tattoos#update"
  delete "/tattoos/:id" => "tattoos#destroy"

  #images
  post "/images" => "images#create"
  get "/images/:id" => "images#show"
  delete "/images/:id" => "images#destroy"

  #relationships
  post "/relationships" => "relationships#create"

  #sessions
  post "/sessions" => "sessions#create"
  
end

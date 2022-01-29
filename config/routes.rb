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
  # get "/users/:id" => "users#show"
  # patch "/users/:id" => "users#update"
  # delete "/users/:id" => "users#destroy"
end

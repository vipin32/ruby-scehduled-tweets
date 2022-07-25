Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "main#index"

  get "/about", to: "about#index"

  get "/sign_up", to: "registration#new"
  post "/sign_up", to: "registration#create"

  get "/sign_in", to: "session#new"
  post "/sign_in", to: "session#create"

  delete "/logout", to: "session#logout"


end

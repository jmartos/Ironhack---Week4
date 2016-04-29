Rails.application.routes.draw do
  get "/", to: "site#home"
  get "/movies", to: "movie#index"
  post "/movies", to: "movie#find"
  get "/movies/:id/show", to: "movie#show"
  get "/movies/:id/show/new", to: "movie#new", as: "posts"
  post "/movies/:id/show/new", to: "movie#create"
end

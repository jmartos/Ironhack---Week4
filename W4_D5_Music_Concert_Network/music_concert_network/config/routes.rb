Rails.application.routes.draw do
 get "/", to: "site#home", as: "root"
 get "/contact", to: "site#contact"
 get "/concerts", to: "concerts#index"
 get "/concerts/new", to: "concerts#new"
 post "/concerts", to: "concerts#create"
 get "/concerts/all", to: "concerts#all"
 get "/concerts/:id", to: "concerts#show"

 get "/concerts/:concert_id/posts", to: "posts#index"
 get "/concerts/:concert_id/posts/new", to: "posts#new"
 post "/concerts/:concert_id/posts", to: "posts#create", as: "concert_posts"

 # resources :concerts, except: [:update,:destroy]
end

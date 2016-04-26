Rails.application.routes.draw do
  get "/", to: "site#home"
  get "/text_inspections/new", to: "inspector#new"
  post "/text_inspections", to: "inspector#create"
  get "/asciis/new", to: "asciis#new"
  post "/asciis", to: "asciis#create"
  get "/ipsum/new", to: "ipsum#new"
  post "/ipsum", to: "ipsum#create"
end

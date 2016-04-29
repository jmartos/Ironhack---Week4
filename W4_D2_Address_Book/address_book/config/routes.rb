Rails.application.routes.draw do
  get'/', to: 'site#home'
  get'/contacts', to: 'contact#index'
  get'/contacts/new', to: 'contact#new'
  post'/contacts', to: 'contact#create'
  get'/contacts/:id', to: 'contact#show'
  post'/contacts/:id', to: 'contact#favorite'

end

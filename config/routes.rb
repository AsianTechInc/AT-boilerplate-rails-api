# == Route Map
#
# Prefix Verb   URI Pattern          Controller#Action
#  users GET    /users(.:format)     users#index
#        POST   /users(.:format)     users#create
#   user GET    /users/:id(.:format) users#show
#        PATCH  /users/:id(.:format) users#update
#        PUT    /users/:id(.:format) users#update
#        DELETE /users/:id(.:format) users#destroy
# 

Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

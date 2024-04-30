Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "admin/dashboard#index"

  # Defines the resources route for the investments controller
  resources :investments

  # Defines the resources route for the users controller
  resources :users

  # Defines the resources route for the issuances controller
  resources :issuances
end

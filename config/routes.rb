Rails.application.routes.draw do
  get 'lists/index'
  get 'lists/new'
  get 'lists/create'
  get 'lists/show'
  get 'list/index'
  get 'list/new'
  get 'list/create'
  get 'list/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  root 'lists#index'
  resources :lists, only: [:index, :new, :create, :show]
end

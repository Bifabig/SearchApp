Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :foos
  root "queries#new"

  resources :queries, only: [:create, :index, :new, :show] do
    resources :comments, module: :queries, only: [:create]
  end

  resource :search_histories, only: [:destroy]
end

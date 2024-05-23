Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :foos
  root "queries#new"

  resource :search_histories, only: [:destroy]

  resources :queries, only: [:create, :index, :new, :show] do
    resources module: :queries, only: [:create]
  end

  # delete '/search_histories', to: 'search_histories#destroy'
end

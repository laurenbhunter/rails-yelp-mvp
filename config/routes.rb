Rails.application.routes.draw do
  get 'reviews/rating:integer'
  get 'reviews/content:string'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/new', to: 'restaurants#new'
  post 'restaurants', to: 'restaurants#create'
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  get 'reviews/new', to: 'reviews#new'
  post 'reviews', to: 'reviews#create',  as: :review

  get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit
  patch 'restaurants', to: 'restaurants#update'
end

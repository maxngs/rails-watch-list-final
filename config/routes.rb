Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # User can see all the lists
  get "lists", to: "lists#index"

  # User can create a movie
  get "lists/new", to: "lists#new"
  post "lists", to: "lists#create"

  # User can see the details of a movie
  get "lists/:id", to: "lists#show", as: :list

  # BOOKMARKS
  get "lists/:id/bookmarks/new", to: "bookmarks#new", as: :new_list_bookmark
  post "lists/:id/bookmarks", to: "bookmarks#create", as: :list_bookmark

  delete "bookmarks/:id", to: "bookmarks#destroy", as: :bookmark
end

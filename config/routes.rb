Rails.application.routes.draw do
  get 'books/new'
  get '/top' => 'homes#top'

  resources :books
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

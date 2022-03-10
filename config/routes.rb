Rails.application.routes.draw do
  namespace :api do
    resources :users
    post '/users/login', to: 'users#login' 
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

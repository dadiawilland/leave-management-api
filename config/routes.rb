Rails.application.routes.draw do
  namespace :api do
    resources :users, only: [:show, :update, :destroy, :index]
    resources :access_tokens, only: [:create, :index, :destroy]
    post '/login', to: 'access_tokens#create', as: 'login'
    post '/logout', to: 'access_tokens#destroy', as: 'logout'
    post '/sign_up', to: 'users#create', as: 'sign_up'
    resources :leave_credits
    post '/users/login', to: 'users#login' 
    resources :leave_applications
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

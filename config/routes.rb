Rails.application.routes.draw do
  resources :annonces
  devise_for :users

as :user do
  get '/users/sign_out', to: 'devise/sessions#destroy'
end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

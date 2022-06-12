Rails.application.routes.draw do
  resources :data
  resources :response_apis
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "response_apis#index"
end

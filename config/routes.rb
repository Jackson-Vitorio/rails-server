Rails.application.routes.draw do
  resources :magia
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/php', to: redirect('http://localhost/phpmyadmin')
  # Defines the root path route ("/")
  # root "articles#index"
end

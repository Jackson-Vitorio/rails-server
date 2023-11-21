Rails.application.routes.draw do
  resources :magia
  resources :monstros
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'inicio#inicio'
  get '/php', to: redirect('http://localhost/phpmyadmin')
  get 'monstros' => 'monstros#index'
  get '/rotas', to: redirect('http://localhost:3000/rails/info/routes')
  # Defines the root path route ("/")
  # root "articles#index"
end

Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users
  get '/profile', to: 'users#show'

  resources :studios

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

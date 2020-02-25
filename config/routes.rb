Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users
  get '/profile', to: 'users#show'

  resources :studios, only: [:new, :create] do
    resources :bookings, only: [:new, :create]
  end

end

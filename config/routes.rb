Rails.application.routes.draw do
  root to: 'studios#index'

  devise_for :users
  get '/profile', to: 'users#show'

  resources :studios do
    resources :bookings, only: [:new, :create]
  end

  resources :users, only: [] do
   resources :bookings, except: [:new, :create]
  end
end

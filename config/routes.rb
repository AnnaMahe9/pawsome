Rails.application.routes.draw do
  #both
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resource :profile, only: [:show]

  #renter
  resources :pets, only: [:index, :show] do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:index]

  #owner
  namespace :owner do
    resources :pets, only: [:new, :create, :edit]
    resources :bookings, only: [] do
      member do
        patch :accept
        patch :decline
      end
    end
  end
end

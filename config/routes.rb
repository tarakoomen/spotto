Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "my_spaces", to: "pages#my_spaces"

  resources :spaces do
    resources :bookings, only: [:new, :create]
    # resources :favourites, only: [:index, :new, :create]
  end

  resources :bookings do
    resources :reviews, only: [:new, :create, :edit, :update]
  end

  resources :reviews, only: [:destroy]
  # resources :favourites, only: [:destroy]

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

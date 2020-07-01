Rails.application.routes.draw do
  devise_for :users,controllers: {omniauth_callbacks: 'users/omniauth'}
  root to: "tweets#index"
  resources :users,only: [:index,:show]
  resources :tweets
  resources :tags,only: [:index,:show]
  get 'userdups/verify',to: "userdups#show",as: "verify"
  post "userdups/verify"
  post "userdups/resend"
  # get 'userdups/new_otp'
  post 'userdups/new_otp'
  resources :userdups, only: [:index,:show,:new]
  get "home/index" => "homes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

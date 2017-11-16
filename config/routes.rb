Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "questions#index"

  devise_for :players, path: 'players', controllers: { sessions: "players/sessions", registrations: "players/registrations" }, defaults: { format: :json}
  devise_for :coaches, path: 'coaches', controllers: { sessions: "coaches/sessions", registrations: "coaches/registrations" }, defaults: { format: :json}
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions", registrations: "users/registrations" }, defaults: { format: :json}

  post '/multiple_answers', to: 'multiple_answers#create_multiple'

  post 'tokens' => "tokens#create"
  get 'tokens' => "tokens#index"
  
  post 'notify' => "notify#create"


  # post 'twilio' => "twilio#create"
  
  resources :leaderboard
  resources :channels
  resources :members
  resources :messages
  resources :s3
  resources :bindings

  # resources :coaches_players
  resources :players 
  resources :users
  resources :answers
  resources :coaches
  resources :questions
  resources :notifications
end

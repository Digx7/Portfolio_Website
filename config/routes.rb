Rails.application.routes.draw do
  root 'navigation#home'

  get "admin", to: 'admin#manage_posts'
  get "admin/manage_posts"
  get "admin/manage_users"
  
  get "/sign up", to: 'account#sign_up'
  get "/log in", to: 'account#log_in'
  get "/forgot password", to: 'account#forgot_password'
  get "/new password", to: 'account#new_password'
  get "/info", to: 'account#info'
  
  get "/home", to: 'navigation#home'
  get "/projects", to: 'navigation#projects'
  get "/articles", to: 'navigation#articles'

  resources :reply_reactions
  resources :comment_reactions
  resources :replies
  resources :comments
  resources :users
  resources :posts

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end

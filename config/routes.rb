Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  post "login/login" => "login#login", as: :login_login
  get "/dashboard" => "dashboard#index", as: :dashboard
  post '/add_reimbursement' => 'bills#new_bill', as: :add_reimbursement
  post '/bills/:id/approve' => 'dashboard#approve', as: :approve_bill
  post '/bills/:id/reject' => 'dashboard#reject', as: :reject_bill
  resources :users
  get '/create_user' => 'users#new', as: :create_user
  get '/logout' => 'login#logout', as: :logout
  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "login#index"
end

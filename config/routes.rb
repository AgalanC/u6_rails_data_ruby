# Rails.application.routes.draw do
#   get 'trophies/index'
#   get 'teams/index'
#   get 'players/index'
#   get 'welcome/index'
#   # Add a route for the About page
#   get 'static_pages/about', to: 'static_pages#about', as: 'about'

#   # Devise routes for ActiveAdmin
#   devise_for :admin_users, ActiveAdmin::Devise.config
#   ActiveAdmin.routes(self)
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#   # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
#   # Can be used by load balancers and uptime monitors to verify that the app is live.
#   get "up" => "rails/health#show", as: :rails_health_check

#   # Defines the root path route ("/")
#   # root "posts#index"
# end

# Rails.application.routes.draw do
#   get 'trophies/index'
#   get 'teams/index'
#   get 'welcome/index'
#   # Add a route for the About page
#   get 'static_pages/about', to: 'static_pages#about', as: 'about'

#   # Devise routes for ActiveAdmin
#   devise_for :admin_users, ActiveAdmin::Devise.config
#   ActiveAdmin.routes(self)

#   # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
#   # Can be used by load balancers and uptime monitors to verify that the app is live.
#   get "up" => "rails/health#show", as: :rails_health_check

#   # Define the root path route ("/")
#   root "welcome#index"
# end

# Rails.application.routes.draw do
#   get 'welcome/index'

#   # Add a route for the About page
#   get 'static_pages/about', to: 'static_pages#about', as: 'about'

#   # Routes for the index actions
#   resources :players, only: [:index]
#   resources :teams, only: [:index]
#   resources :trophies, only: [:index]

#   # Devise routes for ActiveAdmin
#   devise_for :admin_users, ActiveAdmin::Devise.config
#   ActiveAdmin.routes(self)

#   # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
#   # Can be used by load balancers and uptime monitors to verify that the app is live.
#   get "up" => "rails/health#show", as: :rails_health_check

#   # Define the root path route ("/")
#   root "welcome#index"
# end

Rails.application.routes.draw do
  get 'welcome/index'

  # Add a route for the About page
  get 'static_pages/about', to: 'static_pages#about', as: 'about'

  # Routes for the index actions
  resources :players, only: [:index, :show]
  resources :teams, only: [:index, :show]
  resources :trophies, only: [:index, :show]

  # Devise routes for ActiveAdmin
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Define the root path route ("/")
  root "welcome#index"
end

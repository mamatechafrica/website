Rails.application.routes.draw do
  resources :job_boards
  resources :mentorship
  resources :development
  resources :projects, only: [ :index, :show ]
  resources :teams, only: [ :index, :show, :edit, :update ] do
    resources :team_members, only: [ :edit, :update ]
  end

  root "pages#home"

  get "teams", to: "teams#index"
  get "job_boards", to: "job_boards#show"
  get "mentorship", to: "pages#mentorship"
  get "development", to: "pages#development"
  get "projects", to: "projects#index"
  get "avo-community", to: "projects#index", as: "avo_community"
  get "/.well-known/funding-manifest-urls", to: "well_known#funding_manifest_urls"



  # Route for the contact form submission
  # get '/contact', to: 'pages#new_contact', as: 'new_contact'
  post "/contact", to: "pages#submit_contact"

  # Health status for uptime monitors
  get "up" => "rails/health#show", as: :rails_health_check

  # PWA service worker and manifest
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end

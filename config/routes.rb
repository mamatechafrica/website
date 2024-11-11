Rails.application.routes.draw do
  resources :job_boards
  root "pages#home"

  get "job_boards", to: "job_boards#show"

  # Route for the contact form submission
  # get '/contact', to: 'pages#new_contact', as: 'new_contact'
  post "/contact", to: "pages#submit_contact"

  # Health status for uptime monitors
  get "up" => "rails/health#show", as: :rails_health_check

  # PWA service worker and manifest
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end

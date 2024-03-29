 # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
Rails.application.routes.draw do
  get 'registration/new'
 
  get "up" => "rails/health#show", as: :rails_health_check

  root "main#index"

  # get "about-us", to: "about#index", as: :about
  get "about" => "about#index", as: :about

  get "sign_up" => "registration#new"
  post "sign_up" => "registration#create"
end

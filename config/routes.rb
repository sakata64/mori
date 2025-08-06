Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root 'top#index'

  get 'how_to_go', to: 'how_to_go#index'
  # Defines the root path route ("/")
  # root "posts#index"
  if Rails.env.production?
    require 'rake'
    Rails.application.load_tasks
  
    get "/migrate", to: proc {
      Rake::Task["db:migrate"].reenable
      Rake::Task["db:migrate"].invoke
      [200, {}, ["Migration complete!"]]
    }
  end
end

Rails.application.routes.draw do
  root to: 'pages#home'

  resources :audiences

  namespace :api, defaults: { format: :json } do 
    namespace :v1 do
      # We are going to list our resources here
    end
  end
end

Rails.application.routes.draw do
  root to: 'pages#home'

  resources :audiences

  namespace :api, defaults: { format: :json } do 
  
  end
end

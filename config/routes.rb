Rails.application.routes.draw do
  root to: 'pages#home'

  resources :audiences

  namespace :api, defaults: { format: :json } do 
    namespace :v1 do
      resources :users, only: %i[show create update destroy]
      resources :tokens, only: [:create]
    end
  end
end

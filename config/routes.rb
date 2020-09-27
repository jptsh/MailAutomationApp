Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :audiences

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      # We are going to list our resources here
      resources :audiences, only: %i[show index]
    end
  end
end

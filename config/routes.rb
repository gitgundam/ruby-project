Rails.application.routes.draw do
  resources :apidocs, only: [:index]

  namespace :api do
    namespace :v1 do
      #/api/v1
      resources :validation_codes, only: [:create]
      resources :session, only: [:create, :destroy]
      resources :me, only: [:show]
      resources :items
      resources :tags, :format => false
    end
  end
end

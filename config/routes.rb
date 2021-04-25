Rails.application.routes.draw do
  resources :users
  namespace :admin do
      resources :users
      resources :documents
      

      root to: "documents#index"
    end
  resources :documents
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

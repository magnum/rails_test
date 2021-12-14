Rails.application.routes.draw do
  resources :actions
  concern :apiable do
    resources :documents, only: [:index]
  end

  scope "(:locale)", locale: /en|it/ do
    namespace :api do
      concerns :apiable
      namespace :v1 do
        concerns :apiable
      end
    end
  end

  resources :users
  namespace :admin do
      resources :users
      resources :documents
    
      root to: "documents#index"
    end
  resources :documents
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'test/bootstrap', to: "test#bootstrap"
  get 'test/turbolinks(/:page_id)', to: "test#turbolinks", as: "test_turbolinks"
end

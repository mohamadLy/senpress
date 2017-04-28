Rails.application.routes.draw do
  get 'bundle/update'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  resources :users do
    resource :profile
  end
end

Rails.application.routes.draw do
  get 'bundle/update'

  devise_for :users, controller: {
    invitations: "invitations"
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get "histoire", to: "pages#histoire"
  get "signup", to: "pages#signup"

  resources :users do
    resource :profile
  end
end

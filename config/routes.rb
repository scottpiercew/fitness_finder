Rails.application.routes.draw do
  root to: 'landing#show'

  resources :companies do
    resources :events
  end

  resources :events

  resources :landing, except: [:new, :create, :index, :edit, :update, :destroy]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

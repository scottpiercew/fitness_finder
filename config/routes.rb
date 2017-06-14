Rails.application.routes.draw do
  root to: 'pages#landing'

  resources :companies do
    resources :events
  end

  resources :events

  resources :landing, except: [:new, :create, :index, :edit, :update, :destroy]

  resources :contacts

end

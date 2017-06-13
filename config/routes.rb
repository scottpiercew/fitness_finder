Rails.application.routes.draw do
  root to: 'companies#home'

  resources :companies do
    resources :events
  end

  resources :events
  get 'companies/home'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

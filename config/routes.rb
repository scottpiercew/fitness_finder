Rails.application.routes.draw do
  get 'events/new'

  get 'events/create'

  get 'events/update'

  get 'events/edit'

  get 'events/destroy'

  get 'events/index'

  get 'events/show'

  get 'companies/new'

  get 'companies/create'

  get 'companies/update'

  get 'companies/edit'

  get 'companies/destroy'

  get 'companies/index'

  get 'companies/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

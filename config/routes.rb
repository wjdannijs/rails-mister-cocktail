Rails.application.routes.draw do
  get 'doses/new'

  get 'doses/create'

  get 'doses/delete'

  get 'ingredients/index'

  get 'ingredients/show'

  get 'cocktails/index'

  get 'cocktails/new'

  get 'cocktails/create'

  get 'cocktails/edit'

  get 'cocktails/show'

  get 'cocktails/update'

  get 'cocktails/delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root 'home#index'

  get 'notes/index'
  get 'notes/new'
  get 'notes/update'
  get 'notes/show'
  get 'notes/destroy'
  post 'notes/create'

  get 'plans/index'
  get 'plans/new'
  post 'plans/create'
end

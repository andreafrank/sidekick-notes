Rails.application.routes.draw do
  root 'home#index'

  get 'notes/index'
  get 'notes/new'
  get 'notes/update'
  get 'notes/show'
  get 'notes/destroy'
  post 'notes/create'

  get 'sessions/index'
  get 'sessions/new'
  post 'sessions/create'
end

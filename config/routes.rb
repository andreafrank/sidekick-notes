Rails.application.routes.draw do
  root 'home#index'

  get 'notes/index'
  get 'notes/new'
  get 'notes/create'
  get 'notes/edit'
  get 'notes/update'
  get 'notes/show'
  get 'notes/destroy'
end

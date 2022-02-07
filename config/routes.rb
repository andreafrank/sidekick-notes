Rails.application.routes.draw do
  get 'notes/index'
  get 'notes/new'
  get 'notes/create'
  get 'notes/edit'
  get 'notes/update'
  get 'notes/show'
  get 'notes/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

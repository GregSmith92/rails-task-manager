Rails.application.routes.draw do
  # READ
  get 'tasks', to: 'tasks#index'
  get 'tasks/new', to: 'tasks#new'
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  delete 'tasks/:id', to: 'tasks#destroy'
  # CREATE
  # Request to GET the form
  # Request to SUBMIT the form
  post 'tasks', to: 'tasks#create'

  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update'


  # resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

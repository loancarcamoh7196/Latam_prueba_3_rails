Rails.application.routes.draw do
  #ruta list
  get '/todos/list', to: 'todos#list', as: 'list_todo'

  get '/todos', to: 'todos#index'
  get 'todos/new', to: 'todos#new'
  post '/todos', to: 'todos#create'
  get '/todos/:id', to: 'todos#show', as: 'todo'
  get '/todos/:id/edit', to: 'todos#edit', as: 'edit_todo'
  patch '/todos/:id', to:'todos#update'
  delete 'todos/:id',to: 'todos#destroy', as: 'destroy_todo' 
  #Rutas personalizadas
  patch '/todos/:id/complete', to: 'todos#complete', as: 'complete_todo'
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

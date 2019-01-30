Rails.application.routes.draw do
  get '/todos', to: 'todos#index'
  get 'todos/new', to: 'todos#new', as: 'todo'
  post '/todos', to: 'todos#create'
  get '/todos/:id', to: 'todos#show'
  get '/todos/:id/edit', to: 'todos#edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Display all tasks
  get "tasks", to: "tasks#index"

  # Create a new task and save it to db
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  # View specific task
  get "tasks/:id", to: "tasks#show", as: "task"

  # Edit a task
  get "tasks/:id/edit", to: "tasks#edit", as: "task/edit"
  patch "tasks/:id", to: "tasks#update"

  # Delete a task
  delete "tasks/:id", to: "tasks#destroy", as: "task/delete"

end

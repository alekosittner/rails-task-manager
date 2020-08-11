Rails.application.routes.draw do
  get "/tasks", to: 'tasks#index'
  get "tasks/new", to: "tasks#new"
  get "tasks/:id", to: "tasks#show", as: :task
  get "tasks/:id/edit", to: "tasks#edit"
  patch "tasks/:id", to: "tasks#update"
  delete "tasks/:id", to: "tasks#destroy", as: :destroy
  post "tasks", to: "tasks#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

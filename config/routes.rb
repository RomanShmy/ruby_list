Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tasks
  resources :lists

  root "task#index"
  get 'list', to: "list#list"
  get 'list/:id', to: "list#listById"
  patch '/task/:id', to: "task#changeDone"
end

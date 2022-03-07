Rails.application.routes.draw do
  root to: 'tasks#index'
  
  resources :tasks
  resources :users, only: [:new]

  get 'login', to: 'sessions#new'
  get 'signup', to: 'users#new'
  
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'


  
  
end
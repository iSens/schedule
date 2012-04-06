Schedule::Application.routes.draw do

  resources :captixes
  
  get 'main', to: 'pages', as: 'main'
  get 'about', to: 'pages', as: 'about'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'  
  get 'logout', to: 'sessions#destroy', as: 'logout'  

  resources :users
  resources :sessions  

  root :to => 'pages#main'
  resources :email_schedules
    
end

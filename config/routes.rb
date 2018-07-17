Rails.application.routes.draw do
  
  get 'tasklists/create'

  get 'tasklists/destroy'

  root to: 'toppages#index'
 
  get 'login', to: 'sessions#new'

  post 'login', to:'sessions#create'


  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  

  resources :users, only: [:index, :show, :new, :create]
  resources :tasklists, only: [:create,:destroy]

end

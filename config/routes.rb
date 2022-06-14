Rails.application.routes.draw do
  root    'static_pages#home' 
  # get 'password_resets/new'
  # get 'password_resets/edit'
  # get 'account_activations/edit'
  # get 'sessions/new'


  get    '/help'    => 'static_pages#help'
  get    '/about'   => 'static_pages#about'
  get    '/contact' => 'static_pages#contact'
  get    '/signup'  => 'users#new'
  get    '/login'   => 'sessions#new'
  post   '/login'   => 'sessions#create'
  delete '/logout'  => 'sessions#destroy'

  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  
end

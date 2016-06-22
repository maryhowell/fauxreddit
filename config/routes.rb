# Rails.application.routes.draw do
#   get 'users/new'
#
#   root                 'static_pages#home'
#   get 'board' =>      'static_pages#board'
#   get 'messages' =>   'static_pages#messages'
#   get    'signup'  => 'users#new'
#   get    'login'   => 'sessions#new'
#   post   'login'   => 'sessions#create'
#   resources :users
# end


Rails.application.routes.draw do
  root                'static_pages#home'
  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]
end

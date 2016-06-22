Rails.application.routes.draw do
  get 'users/new'

  root                 'static_pages#home'
  get 'board' =>    'static_pages#board'
  get 'messages' => 'static_pages#messages'
  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
end

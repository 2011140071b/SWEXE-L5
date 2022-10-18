Rails.application.routes.draw do
  get 'likes/create'
  get 'likes/destroy'
  resources :users
  resources :tweets
  resources :likes
  get 'tops/main'
  post 'tops/login'
  get 'tops/logout'
  root 'tweets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Blog::Application.routes.draw do
  root "posts#index"

  resources :posts
  resources :comments

  get '/signup', to: 'users#new'
  delete '/signout', to: 'sessions#destroy'
  get '/signin', to: 'sessions#new'
end

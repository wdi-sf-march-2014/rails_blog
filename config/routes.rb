Blog::Application.routes.draw do
  root "posts#index"

  resources :posts
  resources :comments
  resources :users
end

Blog::Application.routes.draw do
	resources :users, :comments, :posts

  root 'posts#index'

  get '/signup', to: 'users#new'

end

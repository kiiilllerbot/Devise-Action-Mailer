Rails.application.routes.draw do
	  devise_for :users
	  root 'posts#index'
	  devise_scope :user do
		  get '/users', to: 'devise/registrations#new'
		  get '/users/password', to: 'devise/passwords#new'
		end
	resources :posts
end

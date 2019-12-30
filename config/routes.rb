Rails.application.routes.draw do
	ActiveAdmin.routes(self)
	devise_for :users

	as :user do
		get 'signin' => 'devise/sessions#new'
		delete 'signout' => 'devise/sessions#destroy'
		get 'signup' => 'devise/registrations#new'
	end
	
	# SAME AS BELOW
	# get 'users/:username' => 'users#show', as: 'user'
	resources :users, only: :show, param: :username do
		member do
			post 'follow' => 'follows#create'
			delete 'unfollow' => 'follows#destroy'
		end
	end

	get 'feed' => 'feed#show'

	resources :posts
	resources :tweets
	

	root 'pages#home'
	get 'about' => 'pages#about'
	get 'contact' => 'pages#contact'
	# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

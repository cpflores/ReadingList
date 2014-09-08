Rails.application.routes.draw do
  namespace :api do
  	resources :books
  	resources :finished_books
  	resources :genres
	end

	with_options except: [:create, :update, :destroy] do [read_only]
		read_only.resources :authors
		read_only.resources :genres
	end

	root to: 'home#show'
end
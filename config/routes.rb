Rails.application.routes.draw do
	
	devise_for :users
	resources :movies do
		collection do
			get 'search'
    end
		delete 'remove_favourite' => 'favourites#remove_favourite'
    resources :favourites, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  	resources :reviews, except: [:show, :index]
	end

  resources :favourites

root 'movies#index'

end

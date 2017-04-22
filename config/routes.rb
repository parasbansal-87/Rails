Rails.application.routes.draw do
	
	devise_for :users
	resources :movies do
		collection do
			get 'search'
		end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :reviews, except: [:show, :index]
end

root 'movies#index'

end

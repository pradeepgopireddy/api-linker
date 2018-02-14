Rails.application.routes.draw do
	namespace :api, format: 'json' do 
		namespace :v1 do
			resources :categories
			resources :locations
			resources :restaurants
		end
	end
  devise_for :users
end

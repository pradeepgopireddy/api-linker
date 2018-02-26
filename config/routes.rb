Rails.application.routes.draw do
	namespace :api, format: 'json' do 
		namespace :v1 do
			resources :categories
			resources :locations
			resources :cities
			resources :restaurants do
				resources :reviews
			end
		end
	end
	namespace :api do
		namespace :v2 do
			resources :categories
			resources :locations
			resources :restaurants do 
				resources :reviews
			end
		end
	end
  devise_for :users
end

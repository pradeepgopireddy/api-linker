class Api::V1::RestaurantsController < Api::V1::ApiController

	#localhost:3000/restaurants - GET
	def index
		@restaurants = Restaurant.all
		render json: @restaurants
	end
end
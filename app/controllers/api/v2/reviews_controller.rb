class Api::V2::ReviewsController < Api::V2::ApiController
	def index
		@restaurant = Restaurant.find(params[:restaurant_id])
		@reviews = @restaurant.reviews
	end
end
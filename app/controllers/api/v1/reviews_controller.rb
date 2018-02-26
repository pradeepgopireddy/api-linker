class Api::V1::ReviewsController < Api::V1::ApiController

	#localhost:3000/api/v1/restaurants/restaurant.id/reviews
	def index
		@restaurant = Restaurant.find(params[:restaurant_id])
		@reviews = @restaurant.reviews
		render json: Review.extract_reviews(@reviews)
	end
end
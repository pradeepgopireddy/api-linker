class Api::V2::RestaurantsController < Api::V2::ApiController
	def show
		@restaurant = Restaurant.find(params[:id])
	end
end
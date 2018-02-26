class Api::V1::RestaurantsController < Api::V1::ApiController

	#localhost:3000/restaurants - GET
	def index
		@restaurants = Restaurant.all
		render json: @restaurants
	end
	#localhost:3000/restaurants/1
	def show
		@restaurant = Restaurant.find(params[:id])
		render json: @restaurant.extract_restaurant
	end

	private
	def restaurnat_params
		params[:restaurant].permit(:name, :address, :locality_id, :city_id, :is_featured)
	end
end
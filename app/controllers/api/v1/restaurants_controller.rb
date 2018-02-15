class Api::V1::RestaurantsController < Api::V1::ApiController

	#localhost:3000/restaurants - GET
	def index
		@restaurants = Restaurant.all
		render json: @restaurants
	end
	#localhost:3000/restaurants/1
	def show
		@restaurant = Restaurant.find(params[:id])
		new_fields = {"location_name" => @restaurant.location.name,
			"city_name" => @restaurant.city.name,
			"reviews_count" => @restaurant.reviews.length
		}
		@restaurant = JSON::parse(@restaurant.to_json).merge(new_fields)
		render json: @restaurant
	end

	private
	def restaurnat_params
		params[:restaurant].permit(:name, :address, :locality_id, :city_id, :is_featured)
	end
end
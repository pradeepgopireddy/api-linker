class Api::V2::RestaurantsController < Api::V2::ApiController
	def show
		@restaurant = Restaurant.find(params[:id])
		render '/restaurants/show.json.jbuilder'
	end
end
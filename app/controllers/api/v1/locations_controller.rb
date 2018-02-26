class Api::V1::LocationsController < Api::V1::ApiController

	#localhost/3000/api/v1/locations - GET
	def index
		@locations = Location.all
		
		render json: Location.extract_locations(@locations)
	end
end
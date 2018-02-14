class Api::V1::LocationsController < Api::V1::ApiController

	#localhost/3000/api/v1/locations - GET
	def index
		@locations = Location.all
		@locations_data = []
		@locations.each do |location|
			extra_field = {"city_name" => location.city.name}
			location = JSON::parse(location.to_json).merge(extra_field)
			@locations_data.push(location)
		end
		render json: @locations_data
	end
end
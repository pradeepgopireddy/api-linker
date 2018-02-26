class Api::V2::LocationsController < Api::V2::ApiController
	def index
		@locations = Location.all
		render '/locations/index.json.jbuilder'
	end
end
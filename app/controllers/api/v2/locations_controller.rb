class Api::V2::LocationsController < Api::V2::ApiController
	def index
		@locations = Location.all
	end
end
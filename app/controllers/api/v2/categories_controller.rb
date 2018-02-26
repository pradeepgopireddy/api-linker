class Api::V2::CategoriesController < Api::V2::ApiController

	def index
		@categories = Category.all
		#render '/categories/index.json.jbuilder'
	end
end
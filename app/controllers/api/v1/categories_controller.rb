class Api::V1::CategoriesController < Api::V1::ApiController

	#localhost:3000/api/v1/categories - GET
	def index
		@categories = Category.all
        render json: Category.extractor(@categories)
	end
end
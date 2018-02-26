class Category < ApplicationRecord
	
  def self.extractor(categories)
  	categories_data = []
  	categories.each do |category|
  		categories_data.push({id: category.id, name: category.name})
  	end
  	return categories_data
  end
end

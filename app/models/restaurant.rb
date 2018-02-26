class Restaurant < ApplicationRecord
	belongs_to :location, foreign_key: 'locality_id'
	belongs_to :city
	has_many :reviews
	has_many :restaurnat_cuisines
	has_many :cuisines, through: :restaurnat_cuisines

	def extract_restaurant
		new_fields = {"location_name" => self.location.name,
					"city_name" => self.city.name,
					"reviews_count" => self.reviews.length
					}
		restaurant = self.attributes.extract!("id", "name", "locality_id", "city_id").merge(new_fields)
		
		restaurant_data = []
		self.reviews.each do |review|
			new_data = {"id" => review.restaurant.id}.merge(review.user.profile.attributes.extract!("user_id", "app_handle", "foodie_level"))
			restaurant_data.push(new_data)
		end
		return restaurant.merge("review" => restaurant_data)
	end
end

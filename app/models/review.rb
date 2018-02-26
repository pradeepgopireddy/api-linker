class Review < ApplicationRecord
	belongs_to :restaurant
	belongs_to :user
	
	def self.extract_reviews(reviews)
		reviews_data = []
		reviews.each do |review|
			new_data = {"id" => review.restaurant.id}.merge(review.user.profile.attributes.except!("id", "created_at", "updated_at"))
			reviews_data.push(new_data)
		end
		return reviews_data
	end
end

json.extract! @restaurant, :id, :name, :locality_id
json.location_name @restaurant.location.name
json.city_id @restaurant.city_id
json.city_name @restaurant.city.name
json.review_count @restaurant.reviews.length
json.review @restaurant.reviews do |review|
	json.id review.restaurant.id
	json.extract! review.user.profile, :user_id, :app_handle, :foodie_level
end
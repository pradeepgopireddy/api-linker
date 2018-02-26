json.array! @reviews do |review|
	json.extract! review.restaurant, :id
	json.extract! review.user.profile, :user_id, :app_handle, :foodie_level
end
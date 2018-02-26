json.array! @locations do |location|
	json.extract! location, :id, :name
	json.city_id location.city.id
	json.city_name location.city.name
end
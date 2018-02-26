class Location < ApplicationRecord
	belongs_to :city
	has_many :restaurants

	def self.extract_locations(locations)
		locations_data = []
		locations.each do |location|
			new_data = location.attributes.extract!("id", "name", "city_id").merge({"city_name" => location.city.name})
			locations_data.push(new_data)
		end
		return locations_data
	end
end

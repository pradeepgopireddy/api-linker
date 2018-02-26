class City < ApplicationRecord
	has_many :locations
	has_many :restaurants
end

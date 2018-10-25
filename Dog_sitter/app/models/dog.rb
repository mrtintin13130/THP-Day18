class Dog < ApplicationRecord
	has_many :dogsitters, through: :stroll
	has_one :city
end

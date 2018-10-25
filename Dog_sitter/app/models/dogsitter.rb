class Dogsitter < ApplicationRecord
	has_many :strolls
	has_many :dogs, through: :stroll
	has_one :city
	
end

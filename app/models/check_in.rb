class CheckIn < ApplicationRecord

	belongs_to :rider
	belongs_to :battery
	belongs_to :charger
	belongs_to :section
	
end

class Charger < ApplicationRecord

	belongs_to :rider
	belongs_to :charger_type
	has_many :logs
	has_one :check_in
	
end

class Battery < ApplicationRecord

    belongs_to :rider
    belongs_to :battery_type
    has_many :logs
    has_one :check_in

end

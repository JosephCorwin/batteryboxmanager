class Rider < ApplicationRecord

    has_many :batteries
    has_many :chargers
    has_many :logs
    has_many :check_ins
    
end

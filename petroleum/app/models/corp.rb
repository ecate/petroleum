class Corp < ActiveRecord::Base
	has_many :ranks
	has_many :rankslists
    has_many :soldiers, :through => :rankslists
end

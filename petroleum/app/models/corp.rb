class Corp < ActiveRecord::Base
	has_many :ranks
    has_many :soldiers, :through => :rankslist
end

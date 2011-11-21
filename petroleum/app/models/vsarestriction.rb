class Vsarestriction < ActiveRecord::Base
	has_many :vsarestrictionslists
	has_many :vsalists , :through => :vsarestrictionslists
end

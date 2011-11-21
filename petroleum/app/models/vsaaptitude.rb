class Vsaaptitude < ActiveRecord::Base
	has_many :vsaaptitudeslists
	has_many :vsalists , :through => :vsaaptitudeslists
end

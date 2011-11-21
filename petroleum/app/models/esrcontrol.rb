class Esrcontrol < ActiveRecord::Base
	belongs_to :esrlist
	has_one :soldier, :through => :esrlists
end

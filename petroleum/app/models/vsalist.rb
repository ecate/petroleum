class Vsalist < ActiveRecord::Base
	belongs_to :soldier
	has_one :vsaconclusion
	has_many :vsarestrictionslists, :dependent => :destroy
	has_many :vsaaptitudeslists, :dependent => :destroy

	has_many :vsaaptitudes, :through => :vsaaptitudeslists
	has_many :vsarestrictions, :through => :vsarestrictionslists

	scope :courantes, where("vsalists.iscurrent IS true")
	COURANTES = "Courantes"

def conclu
	Vsaconclusion.find(self.vsaconclusion_id).name
end

end

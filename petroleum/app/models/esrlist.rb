class Esrlist < ActiveRecord::Base
	belongs_to :soldier
	has_one :esrcontrol, :dependent => :destroy
	
	validates :signaturedate, :enddate, :presence => {:message => "Donnees obligatoires"}
end

class Soldier < ActiveRecord::Base
	has_one :rankslist, :dependent => :destroy
	has_one :rank, :through => :rankslist
    has_one :corp, :through => :rank
    
    has_many :vsalists, :dependent => :destroy
    has_many :vsarestrictionslists, :dependent => :destroy
    has_many :vsaaptitudeslists, :dependent => :destroy
    
    has_many :vsaconclusions, :through => :vsalists
    has_many :vsarestrictions, :through => :vsarestrictionslists
    has_many :vsaaptitudes, :through => :vsaaptitudeslists
    

    has_many :esrlists, :dependent => :destroy
    has_many :esrcontrols, :through => :erslists

    email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    
    validates :ismale, :active, :name, :firstname, :birthdate, :presence => {:message => "Donnees obligatoires"}
    validates :concertoid, :ssid, :uniqueness => {:message => "Numero deja present dans la base" }, :allow_blank => true
    validates :persoemail, :profemail , :preferedemail, :format => { :with => email_regex }, :allow_blank => true

    def getcorp
    	self.rank.corp.name
    end

    def getrank
    	self.rank.name
    end

    def dateLimiteAge
        Date.new(self.birthdate.year+self.rank.agelimit,self.birthdate.month, self.birthdate.day)-1
    end

    def vsa
        Vsalist.all.find(:iscurrent => true, :soldier_id => self.id).first
    end

    def esr
        Esrlist.all.find(:iscurrent => true, :soldier_id => self.id).first
    end

    def petitnom
        self.firstname
    end
end

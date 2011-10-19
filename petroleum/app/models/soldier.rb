class Soldier < ActiveRecord::Base
	has_one :rank, :through => :rankslist
    has_one :corp, :through => :rank
    
    email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    
    validates :ismale, :active, :familyname, :firstname, :birthdate, :presence => {:message => "Donnees obligatoires"}
    validates :concertoid, :ssid, :uniqueness => {:message => "Numero deja present dans la base" }, :allow_blank => true
    validates :persoemail, :profemail , :preferedemail, :format => { :with => email_regex }, :allow_blank => true
end

class Rank < ActiveRecord::Base
	has_many :rankslists
	has_many :soldiers, :through => :rankslists
    belongs_to :corp

    validates :name, :corp_id, :presence => {:message => "Donnees obligatoires"}
end

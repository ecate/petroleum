class Rank < ActiveRecord::Base
	has_many :soldiers, :through => :rankslist
    belongs_to :corp

    validates :name, :corp_id, :presence => {:message => "Donnees obligatoires"}
end

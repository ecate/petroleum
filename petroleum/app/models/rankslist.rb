class Rankslist < ActiveRecord::Base
	belongs_to :soldier
    belongs_to :rank

    validates :beginrankdate, :begincorpdate, :soldier_id, :rank_id, :presence => {:message => "Donnees obligatoires"}
end

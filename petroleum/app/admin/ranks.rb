ActiveAdmin.register Rank, :as => "Grade" do
	menu :priority => 3
	menu :parent => "Affectation"
  	index do
	column "Grade", :name
	column "Age limite", :agelimit do |rank|
      link_to rank.agelimit, edit_admin_grade_path(rank)
    end
end
end

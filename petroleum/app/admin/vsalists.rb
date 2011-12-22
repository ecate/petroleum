ActiveAdmin.register Vsalist, :as => "VSA Personnels" do
menu :parent => "VSA"
#scope :courantes, :default => true

filter :soldier, :label => 'Personnel'
filter :examdate, :label => 'Date examen'
filter :iscurrent,:label => 'Derniere VSA', :as => :select, :collection => [ ["Non", false], ["Oui", true] ]  
filter :isapteESR, :label => 'Apte ESR', :as => :select, :collection => [ ["Non", false], ["Oui", true] ]
filter :isapteService, :label => 'Apte Service', :as => :select, :collection => [ ["Non", false], ["Oui", true] ]
filter :isapteTir, :label => 'Apte TIR', :as => :select, :collection => [ ["Non", false], ["Oui", true] ]
filter :hasrestriction, :label => 'VSA avec restrictions', :as => :select, :collection => [ ["Non", false], ["Oui", true] ]
filter :hastirrestriction, :label => 'VSA avec restrictions TIR', :as => :select, :collection => [ ["Non", false], ["Oui", true] ]

index do
	column "Grade" do |vl| vl.soldier.rank.name end
	column "Personnel" do |vl| link_to vl.soldier.name, edit_admin_personnel_path(vl.soldier) end
	column "Derniere VSA" do |vl| auto_link vl.iscurrent end
	column "Date Examen" do |vl| auto_link vl.examdate end
	column "Apte ESR" do |vl| auto_link vl.isapteESR end
	column "Conclusion" do |vl| auto_link vl.conclu end
	column "Restr. Tir" do |vl| auto_link vl.hastirrestriction end
	default_actions
end


show :title => "VSA" do |vl|
    attributes_table do
    	row("Grade") do vl.soldier.rank.name end
    	row("Personnel") do link_to vl.soldier.name, edit_admin_personnel_path(vl.soldier) end
    	row("Libelle") do vl.name end
    	row("Derniere VSA") do vl.iscurrent end
    	row("Date Examen") do vl.examdate end
    	row("Conclusion") do vl.conclubis end
    	row("Apte ESR") do vl.isapteESR end
    	row("Apte Service") do vl.isapteService end
    	row("Apte Tir") do vl.isapteTir end 
    	row("VSA avec restrictions") do vl.hasrestriction end
    	row("VSA avec restrictions Tir") do vl.hastirrestriction end
    	row("Commentaires Docteur/Doctoresse") do vl.doctorcomment end	
    end
end

sidebar "Liste Aptitudes", :only => :show do
end

sidebar "Liste Restrictions", :only => show do
end
  
end

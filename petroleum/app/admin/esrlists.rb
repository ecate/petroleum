ActiveAdmin.register Esrlist, :as => "ESR Personnels" do
	menu :label => "ESR Personnels"
	menu :parent => "ESR"

filter :iscurrent, :label => 'ESR en cours', :as => :select, :collection => [ ["Non", false], ["Oui", true] ]
filter :soldier, :label => 'Personnel', :as => :select, :collection => proc { Soldier.all } 


index do
  column "Libelle", :name 
  column "Personnel" do |esrlist| esrlist.soldier.name end
  column "Dernier ESR signe", :iscurrent
  column "Date signature", :signaturedate
  column "Date echeance", :enddate
  column "Commentaires", :comment
  column "Controle associe" do |esrlist| link_to(esrlist.esrcontrol.name, admin_esrcontrol_path(esrlist.esrcontrol)) end
  default_actions
end

show :title => :name do |esrlist|
    attributes_table do
    	row ("Libelle") do esrlist.name end
    	row("Personnel") do esrlist.soldier.name end
    	row("Dernier ESR signe") do esrlist.iscurrent end
    	row("Date signature") do esrlist.signaturedate end
    	row("Date echeance") do esrlist.enddate end
    	row("Commentaires") do esrlist.comment end
    	row("Controle") do link_to(esrlist.esrcontrol.name, admin_esrcontrol_path(esrlist.esrcontrol)) end
    		
    end
end

form do |f|
      f.inputs "Details ESR" do
        f.input :name, :label => "Libelle"
        f.input :soldier, :label => "Personnel" 
        f.input :iscurrent, :label => "Dernier ESR signe", :as => :radio
		f.input :signaturedate, :label => "Date signature", :as => :date, :start_year => Time.now.year - 5, :end_year => Time.now.year
        f.input :enddate, :label => "Date echeance", :as => :date, :start_year => Time.now.year, :end_year => Time.now.year + 5
        f.input :comment, :label => "Commentaires"
      end
    f.buttons
end

  
end

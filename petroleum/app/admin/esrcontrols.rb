ActiveAdmin.register Esrcontrol do
	menu :label => "Controles ESR"
	menu :parent => "ESR"

index do
  column "Libelle", :name 
  column "Personnel" do |control| control.esrlist.soldier.name end
  column "ID ESR", do |control| link_to(control.esrlist.name, admin_esr_personnels_path(control.esrlist)) end 
  column "Commentaires", :comment
  default_actions
end

show :title => "Controle ESR" do |control|
    attributes_table do
    	row ("Libelle") do control.name end
    	row("Personnel") do control.esrlist.soldier.name end
    	row("ID ESR") do control.esrlist.id end
    	row("Commentaires") do control.comment end
    end
end

form do |f|
      f.inputs "Details Controle ESR" do
        f.input :name, :label => "Libelle"
        f.input :esrlist, :label => "ID ESR"
        f.input :comment, :label => "Commentaires"
      end
    f.buttons
end

end

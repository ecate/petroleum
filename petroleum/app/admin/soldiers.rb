ActiveAdmin.register Soldier, :as => "Personnel" do
  menu :priority => 1
  menu :label => "Liste Personnels"

 # scope :actifs, :default => true do
 # 	soldiers.where("isactive IS true")
 # end
 # scope :all, :as => "Tous" 

 filter :active, :label => 'En activite', :as => :select, :collection => [ ["Non", false], ["Oui", true] ]
 filter :corp, :label => 'Categorie', :as => :check_boxes, :collection => proc { Corp.all } 
  
index do
  column "Grade", :soldier do |soldier| soldier.getrank end
  column "Nom", :name
  default_actions
end

show :title => :name do |perso|
    attributes_table do
    	row("Nom de naissance") do perso.name end
    	row("Nom usage") do perso.usagename end
    	row("Date de naissance") do perso.birthdate end
    	row("Genre") do perso.ismale end
		row("Actif") do perso.active end
		row("Num Livret") do perso.payid end
		row("Num Concerto") do perso.concertoid end
		row("Num Securite sociale ") do perso.ssid end
		row("SMA") do perso.issma end
		row("VSL") do perso.isvsl end
		row("GCT") do perso.isgct end
    	row("Fonctionnaire") do perso.iscivilservant end
		row("Administration") do perso.publicoffice end
		row("Employeur") do perso.employername end
		row("Fonction") do perso.jobname end
		row("Boite au lettre / Escalier / Porte") do perso.l2_balescetageporte end
		row("Residence / Batiment") do perso.l3_resbat end
		row("Numero et voie") do perso.l4_numvoie end
		row("Boite postale/ TSA / Bureau") do perso.l5_bptsabureau end
    	row("Commune") do perso.l6_commune end
		row("Code Postal") do perso.l7_codepostal end
		row("Pays") do perso.l8_pays end
		row("Email personnel") do perso.persoemail end
		row("Email professionnel") do perso.profemail end
		row("Email prefere") do perso.preferedemail end
		row("Telephone fixe personnel") do perso.persolandphone end
		row("Telephone fixe professionnel") do perso.proflandphone end
		row("Portable personnel") do perso.persomobilephone end
		row("Portable professionnel") do perso.profmobilephone end
		row("Telephone prefere") do perso.preferedphone end

      end
end



form do |f|
      f.inputs "Profil" do
        f.input :name, :label => "Nom de naissance"
        f.input :usagename, :label => "Nom usage"
        f.input :firstname, :label => "Prenom"
		f.input :birthdate, :label => "Date de naissance", :as => :date, :start_year => Time.now.year - 65, :end_year => Time.now.year - 17
        f.input :ismale, :label => "Masculin", :as => :radio
        f.input :active, :label => "Actif", :as => :radio
      end
      f.inputs "Administratif" do
        f.input :payid,:label => "Num Livret"
        f.input :concertoid, :label => "Num Concerto"
        f.input :ssid, :label => "Num Securite sociale "
        f.input :issma, :as => :radio,:label => "SMA"
        f.input :isvsl, :as => :radio, :label => "VSL"
        f.input :isgct, :as => :radio, :label => "GCT"
      end
     
     f.inputs "Emploi" do
        f.input :iscivilservant, :as => :radio, :label => "Fonctionnaire"
        f.input :publicoffice, :label => "Administration"
        f.input :employername, :label => "Employeur"
        f.input :jobname, :label => "Fonction"
      end
  
      f.inputs "Contacts" do
        f.inputs "Adresse" do
        f.input :l2_balescetageporte, :label => "Boite au lettre / Escalier / Porte"
        f.input :l3_resbat, :label => "Residence / Batiment"
        f.input :l4_numvoie, :label => "Numero et voie"
        f.input :l5_bptsabureau, :label => "Boite postale/ TSA / Bureau"
        f.input :l6_commune, :label => "Commune"
        f.input :l7_codepostal, :label => "Code Postal"
        f.input :l8_pays, :label => "Pays", :input_html => {:value => "France" }
      end
      f.inputs "Telephones et emails" do
        f.input :persoemail,:label => "Email personnel"
        f.input :profemail,:label => "Email professionnel"
        f.input :preferedemail,:label => "Email prefere"
        f.input :persolandphone,:label => "Telephone fixe personnel"
        f.input :proflandphone,:label => "Telephone fixe professionnel"
        f.input :persomobilephone,:label => "Portable personnel"
        f.input :profmobilephone,:label => "Portable professionnel"
        f.input :preferedphone,:label => "Telephone prefere"
      end  
    end
      f.buttons
   end
end

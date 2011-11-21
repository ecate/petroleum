ActiveAdmin.register Rankslist, :as => "Promotion" do
   menu :priority => 2
	menu :parent => "Affectation"

index do
  	column "Personnel", :soldier do |promo| link_to(promo.soldier.name, admin_promotion_path(promo)) end
  	column "Grade", :rank do |promo| promo.rank.name end
  	column "Date Prise de rang", :beginrankdate, :as => :date, :start_year => Time.now.year - 20, :end_year => Time.now.year
  	column "Date Entree Categorie", :begincorpdate, :as => :date, :start_year => Time.now.year - 20, :end_year => Time.now.year
	default_actions
end

show :title => "Grade" do |promo|
    attributes_table do 
	    row("Personnel") {promo.soldier}
	    row("Grade") {promo.rank}
	    row("Date Prise de rang") {promo.beginrankdate}
	    row("Date Entree Categorie") {promo.begincorpdate} 
	end
end

form do |f|
      f.inputs "Promotion" do
        f.input :soldier, :label => "Personnel" 
        f.input :rank, :label => "Grade"
		f.input :beginrankdate,:label => "Date Prise de rang", :as => :date, :start_year => Time.now.year - 20, :end_year => Time.now.year
        f.input :begincorpdate, :label => "Date Entree Categorie", :as => :date, :start_year => Time.now.year - 20, :end_year => Time.now.year
      end
    f.buttons
end


  
end

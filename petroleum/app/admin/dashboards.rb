ActiveAdmin::Dashboards.build do

section "Personnels 53eme compagnie", :priority => 1 do
  table_for Soldier.all do
    column ("Grade") {|soldier| auto_link soldier.getrank}  
    column ("Nom") {|soldier| link_to(soldier.name, admin_personnel_path(soldier))}
    column ("id") {|soldier| auto_link soldier.petitnom }
    column ("Echeance limite d'age") {|soldier| auto_link soldier.dateLimiteAge }
    column ("Echeance VSA") {|soldier| auto_link (soldier.vsa.examdate + 1.year)}
    column ("Echeance ESR") {|soldier| auto_link soldier.esr.enddate }
  end
end

end

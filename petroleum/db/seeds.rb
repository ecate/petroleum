# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#AdminUser.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')
Corp.create([{ name: "Militaire du rang"},{name: "Sous Officier"},{name: "Officier"}])
Rank.create([{name: 'Sapeur de 2eme classe',agelimit: 39, corp_id: 1 }, {name: 'Sapeur de 1ere classe', agelimit: 39, corp_id: 1}, {name: 'Caporal', agelimit: 39, corp_id: 1}, {name: 'Caporal-Chef', agelimit: 39, corp_id: 1}, {name: 'Sergent', agelimit: 45, corp_id: 2}, {name: 'Sergent-Chef', agelimit: 46, corp_id: 2},{name: 'Adjudant', agelimit: 49, corp_id: 2},{name: 'Adjudant-Chef', agelimit: 50, corp_id: 2},{name: 'Aspirant', agelimit: 50, corp_id: 3},{name: 'Sous-Lieutenant', agelimit: 52, corp_id: 3},{name: 'Lieutenant', agelimit: 54, corp_id: 3},{name: 'Capitaine', agelimit: 55, corp_id: 3}])

sold1 = Soldier.create(
	name: "Quinet",
	active: true,
	ismale: true,
	firstname: "Edgar",
	birthdate: Date.today - 35.years,
	payid: 5676453,
	concertoid: 87643003039,
	ssid: 1780940940490490,
	iscivilservant: true,
	publicoffice: "Territorial",
	employername: "Mairie de Paris",
	jobname: "Responsable des affaires culturelles",
	persoemail: "edgar.quinet@free.fr",
	profemail:"edgar.quinet@paris.fr",
	persolandphone: '0165656565',
	proflandphone: '0145980810',
	persomobilephone: '0607060607',
	profmobilephone: '0685746204',
	preferedemail:"edgar.quinet@free.fr",
	preferedphone: '0685746204',
	issma: false,
	isvsl: true,
	isgct: false,
    l4_numvoie: "35 boulevard Edgard Quinet",
    l6_commune: "Paris",
    l7_codepostal: '75006',
    l8_pays: "France"
	)

sold2 = Soldier.create(
	name: "Champagne",
	active: true,
	ismale: true,
	firstname: "Lucas",
	birthdate: Date.today - (28.years + 2.months + 15.days),
	payid: 56556453,
	concertoid: 123503039,
	ssid: 18304458693,
	iscivilservant: false,
	employername: "Pariseau",
	jobname: "Controleur assurances",
	persoemail: "LucasChampagne@free.com",
	profemail:"Lucas.Champagne@pariseau.com",
	persolandphone: '0165144778',
	proflandphone: '0145981510',
	persomobilephone: '0608521445',
	profmobilephone: '0685478569',
	preferedemail:"Lucas.Champagne@pariseau.com",
	preferedphone: '0685478569',
	issma: false,
	isvsl: false,
	isgct: false,
	l2_balescetageporte: "2eme etage",
	l3_resbat: "Batiment 31",
    l4_numvoie: "67, boulevard Bryas",
    l6_commune: "Courbevoie",
    l7_codepostal: '92400',
    l8_pays: "France"
	).id

sold3 = Soldier.create(
	name: "Le Coustillier",
	active: true,
	ismale: true,
	firstname: "Jacques",
	birthdate: Date.today - (42.years - 3.months),
	payid: 123456,
	concertoid: 2587412369,
	ssid: 145125489322,
	iscivilservant: false,
	employername: "Tafanel",
	jobname: "Superviseur logistique",
	persoemail: "jacquessuper@free.fr",
	profemail:"jacques.lecoustillier@tafanel.fr",
	persolandphone: '0112232323',
	proflandphone: '014547852369',
	persomobilephone: '060236608',
	profmobilephone: '0685744526',
	preferedemail:"jacques.lecoustillier@tafanel.fr",
	preferedphone: '0685744526',
	issma: false,
	isvsl: false,
	isgct: true,
    l4_numvoie: "67, rue Ernest Renan",
    l6_commune: "CHOISY-LE-ROI",
    l7_codepostal: '94600',
    l8_pays: "France"
	).id

Rankslist.create([{soldier_id: sold1, rank_id: 3,beginrankdate: Date.today - (3.years+2.months+3.days),begincorpdate:Date.today - (1.year+1.months+3.days)},
{soldier_id: sold2, rank_id: 6,beginrankdate: Date.today - (1.year+5.months),begincorpdate:Date.today - (3.years+1.months+7.days) },
{soldier_id: sold3, rank_id: 11,beginrankdate: Date.today - (6.months+18.days),begincorpdate:Date.today - (1.year+4.months+9.days) }])


res1 = Vsarestriction.create(name:"Emploi sedentaire strict",details:"a preciser")
res2 = Vsarestriction.create(name:"Emploi sedentaire metropole",details:"a preciser")
res3 = Vsarestriction.create(name:"Protection sonore",details:"a preciser")
res4 = Vsarestriction.create(name:"Restriction d'emploi",details:"a preciser")
res5 = Vsarestriction.create(name:"Tir double protection",details:"Pour instruction ISTC et manoeuvres")
res6 = Vsarestriction.create(name:"Inapte OPEX")
res7 = Vsarestriction.create(name:"Sous reserve vaccination",details:"a preciser")

a1 = Vsaaptitude.create(name:"aptitude")
a2 = Vsaaptitude.create(name:"aptitude generale au service")
a3 = Vsaaptitude.create(name:"aptitude aux operations exterieures et missions de courte duree OM",details: "absence de contre indication a l'exposition aux rayonnements electromagetiques")
a4 = Vsaaptitude.create(name:"aptitude a une affectation outre-mer")
a5 = Vsaaptitude.create(name:"aptitude TIR")
a6 = Vsaaptitude.create(name:"aptitude a l'emploi de conducteur VL")
a7 = Vsaaptitude.create(name:"aptitude a l'emploi de conducteur PL,SPL")
a8 = Vsaaptitude.create(name:"aptitude a l'emploi de conducteur TC")
a9 = Vsaaptitude.create(name:"aptitude pilote d'engin blinde")
a10 = Vsaaptitude.create(name:"aptitude CCPM",details:"categorie medico-physiologique : 1 2 3")
a11 = Vsaaptitude.create(name:"aptitude au renouvellement du contrat")
a12 = Vsaaptitude.create(name:"aptitude a la specialite NEDEX")
a13 = Vsaaptitude.create(name:"aptitude a la specialite TAP")
a14 = Vsaaptitude.create(name:"aptitude a l'emploi de bouche")
a15 = Vsaaptitude.create(name:"aptitude SOC")

concl1 = Vsaconclusion.create(name:"Apte a servir et a faire campagne en tous lieux et sans restrictions")
concl2 = Vsaconclusion.create(name:"Apte a servir avec restrictions d'emploi")
concl3 = Vsaconclusion.create(name:"Apte a servir par derogation", details:"reference/date a preciser")
concl4 = Vsaconclusion.create(name:"Inapte definitif a servir")

item1 = Esrlist.create(soldier_id: sold1, iscurrent: true, signaturedate: Date.today, enddate: (Date.today + 1.year + 1.month + 5.days), comment: 'premier esr')
item2 = Esrlist.create(soldier_id: sold2, iscurrent: true, signaturedate: Date.today - 7.month, enddate: (Date.today + 1.year + 2.months), comment: 'signe a besancon')
item3 = Esrlist.create(soldier_id: sold3, iscurrent: true, signaturedate: Date.today, enddate: (Date.today + 2.years))

Esrcontrol.create(esrlist_id: item1, name: "Controle gendarmerie",comment: "controle effectue apres relance")
Esrcontrol.create(esrlist_id:item2, name: "Confidentiel defense",comment: "valide")
Esrcontrol.create(esrlist_id: item3 ,name: "Agrement ministere de la defense")

vsal1 = Vsalist.create(soldier_id: sold1,vsaconclusion_id: concl1,name: "VSA",examdate: (Date.today - 10.days), iscurrent: true,isapteESR:true,isapteService: true,isapteTir: true,hasrestriction: true,hastirrestriction: true,doctorcomment: "Tir double protection")
vsal2 = Vsalist.create(soldier_id: sold2,vsaconclusion_id: concl1,name: "VSA",examdate: (Date.today - 2.months), iscurrent: true,isapteESR:true,isapteService: true,isapteTir: true,hasrestriction: true,hastirrestriction: true,doctorcomment: "Tir double protection")
vsal3 = Vsalist.create(soldier_id: sold3,vsaconclusion_id: concl2,name: "VSA",examdate: (Date.today - 3.months), iscurrent: true,isapteESR:true,isapteService: true,isapteTir: true,hasrestriction: true,hastirrestriction: true,doctorcomment: "Tir double protection")

Vsarestrictionslist.create(vsarestriction_id: res5,vsalist_id: vsal1, name: "Protection sonore", details: "pour le tir")
Vsarestrictionslist.create(vsarestriction_id: res3,vsalist_id: vsal1, name: "Protection sonore", details: "pour le tir")
Vsarestrictionslist.create(vsarestriction_id: res5,vsalist_id: vsal2, name: "Protection sonore", details: "pour le tir")
Vsarestrictionslist.create(vsarestriction_id: res5,vsalist_id: vsal2, name: "Protection sonore", details: "pour le tir")
Vsarestrictionslist.create(vsarestriction_id: res1,vsalist_id: vsal3, name: "Emploi sedentaire",  details: "affectation interieure")
Vsarestrictionslist.create(vsarestriction_id: res4,vsalist_id: vsal3, name: "Emploi sedentaire", details: "endurance a son rythme")

Vsaaptitudeslist.create(vsaaptitude_id: a1,vsalist_id: vsal1, name:"aptitude" ,details: "standard")
Vsaaptitudeslist.create(vsaaptitude_id: a2,vsalist_id: vsal1, name:"aptitude generale" ,details: "standard")
Vsaaptitudeslist.create(vsaaptitude_id: a5,vsalist_id: vsal1, name:"aptitude tir" ,details: "standard")
Vsaaptitudeslist.create(vsaaptitude_id: a1,vsalist_id: vsal2, name:"aptitude" ,details: "standard")
Vsaaptitudeslist.create(vsaaptitude_id: a7,vsalist_id: vsal2, name:"aptitude conducteur" ,details: "standard")
Vsaaptitudeslist.create(vsaaptitude_id: a8,vsalist_id: vsal2, name:"aptitude conducteur" ,details: "standard")
Vsaaptitudeslist.create(vsaaptitude_id: a1,vsalist_id: vsal3, name:"aptitude" ,details: "standard")
Vsaaptitudeslist.create(vsaaptitude_id: a2,vsalist_id: vsal3, name:"aptitude generale" ,details: "standard")

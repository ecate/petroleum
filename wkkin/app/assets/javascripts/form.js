$(document).ready(function(){


    vev = $("#user_vousetes").val();

    if(vev == "homme" || vev == "femme" || vev == "trans" || vev == "travesti"){
        document.getElementById("partenaire0").style.display="none";
        document.getElementById("partenaire1").style.display="none";
        document.getElementById("partenaire2").style.display="none";
        document.getElementById("partenaire3").style.display="none";
        document.getElementById("partenaire4").style.display="none";
        document.getElementById("partenaire5").style.display="none";
        }
  });

function mon_alerte(elem)
{
    var e = elem.value;
    if (e == 'couplehetero' || e == 'coupletransetfemme' || e == 'coupletransethomme' || e == 'couplehomme' || e == 'couplefemme') {
        document.getElementById("partenaire0").style.display="";
        document.getElementById("partenaire1").style.display="";
        document.getElementById("partenaire2").style.display="";
        document.getElementById("partenaire3").style.display="";
        document.getElementById("partenaire4").style.display="";
        document.getElementById("partenaire5").style.display="";
    }else {
        document.getElementById("partenaire0").style.display="none";
        document.getElementById("partenaire1").style.display="none";
        document.getElementById("partenaire2").style.display="none";
        document.getElementById("partenaire3").style.display="none";
        document.getElementById("partenaire4").style.display="none";
        document.getElementById("partenaire5").style.display="none";


    }

function affiche_image_profil(elem){
    document.getElementbyId("avatar_profil").style.backgroundImage.url(elem);
}


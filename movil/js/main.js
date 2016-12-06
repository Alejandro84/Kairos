if ( getCookie('lastLogin') )
{
   console.log('hay cookie');
   finalStateIntro();

} else {

   document.cookie = 'lastLogin=now';
   console.log('ejecutar intro');
   intro();
}

function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i = 0; i <ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) === 0) {
            return c.substring(name.length,c.length);
        }
    }
    return "";
}

function intro()
{
   $('.logo').toggleClass('mostrarLogo');

   setTimeout(function(){
      $('.fondo').toggleClass('mostrarFondo');
      $('.logoEnap').addClass('mostrarEnap');
      $('.logo').toggleClass('moverLogo');
   },1300);

   setTimeout(function(){
      $('.prepararViajeContainer').addClass('mostrarPrepararViaje');
   }, 1500);
}

function finalStateIntro()
{
   $('.fondo').css('transition','none');
   $('.logo').css('transition','none');
   $('.logoEnap').css('transition','none');
   $('.prepararViajeContainer').css('transition','none');

   $('.fondo').toggleClass('fondoFinal');
   $('.logoEnap').addClass('enapFinal');
   $('.logo').toggleClass('logoFinal');
   $('.prepararViajeContainer').toggleClass('prepararViajeFinal');
}

function getSectores()
{
   var url = 'http://localhost:56160/api/sector';
   $.get(url, function(data){

   }).done(function(data){
      $.each(data, function(x,i){
         console.log(x);
      });
   }).fail(function(){
      alert('no se pueden obtener los sectores');
   });
}

getSectores();

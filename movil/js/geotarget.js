var latitudActual;
var longitudActual;
var tiempoActualizacion = 5000;
var ruta;
var weatherIcons = '/kairos/movil/js/icons.json';


function getLocation()
{
   if ( navigator.geolocation )
   {
      navigator.geolocation.getCurrentPosition(showPosition);
   } else {

   }
}

function showPosition(position)
{
   console.log('obtener posicion');

   latitudActual = position.coords.latitude;
   longitudActual = position.coords.longitude;
   getWeather();
   //var dist = distancia(latitudActual, longitudActual, latitudDestino, longitudDestino );

}

function distancia( lat1, lon1, lat2, lon2 )
{
   console.log('calcular distancia');

   var radioTierra = 6371;
   var latitudEnGrados = aGrados( lat2 - lat1);
   var longitudEnGrados = aGrados( lon2 - lon1 );

   var senoLatitud = Math.sin( latitudEnGrados / 2 );
   var senoLongitud = Math.sin( longitudEnGrados / 2);

   var a = Math.pow( senoLatitud , 2 ) + Math.pow( senoLongitud, 2 ) * Math.cos( aGrados(lat1) ) * Math.cos( aGrados(lat2) );
   var c = 2 * Math.atan2( Math.sqrt(a), Math.sqrt( 1 - a) );
   var distancia = radioTierra * c;
   return distancia;
}
function aGrados( numero )
{
   var grados = ( numero * Math.PI / 180 );
   return grados;
}

getLocation();

if ( ruta )
{
   getLocation();
   setInterval(function(){
      getLocation();
   }, tiempoActualizacion );
}

function getWeather()
{
   console.log('obtener clima');

   var apiKey = '5841802339b387f11b7868c3e4e28b89';
   var url = 'http://api.openweathermap.org/data/2.5/weather?lat='+latitudActual+'&lon='+longitudActual+'&appid='+apiKey+'&lang=es&units=metric';

   $.get(url, function(data){

   }).done(function(data){
      weather = data.weather[0];
      temperatura = data.main.temp;
      viento = data.wind.speed;
      code = weather.id;
      descripcion = weather.description;
      $('.temperatura').html(temperatura+'º Actualmente');
      $('.descripcion').html(descripcion);
      $('.viento').html('Viento: '+viento+' Km/h');
      mostrarIcono(code);

   }).fail(function(){
      console.log('no funciono :X');
   });
}

function mostrarIcono( codigo )
{
   console.log('mostrar icono');
   $.get(weatherIcons, function(data){

   }).done(function(data){
      var code = codigo;
      var iconos = data;
      var icono = iconos[code].icon;
      var prefix = 'wi wi-';
      console.log(code);

      if (!(code > 699 && code < 800) && !(code > 899 && code < 1000)) {
         icono = 'day-' + icono;
      }
      icon = prefix + icono;

      $('.icono-clima').html('<i class="'+icon+'"></i>');
      
   });

}

var url = 'http://localhost/radiotaxicofrima/web'; // esto se cambia en produccion

function cargarNumeros()
{
   $.get(url+'/api/clientes', function(data){

      console.log('Url fetcheada');

   }).done(function(data){

      var objeto = data;
      var numeros = [];

      $.each( objeto.content, function (x,i){
         numeros.push(i.numero_cliente);
      });
      console.log(numeros);
      var numeroInput = document.getElementById('numero_cliente');
      new Awesomplete( numeroInput, { list: numeros } );

   }).fail(function(data){

   });
}

$('#numero_cliente').bind("enterKey",function(e){

   var num = $(this).val();

   $.get(url+'/api/cliente/'+num, function(data){

   }).done(function(data){

      var cliente = data.content[0];
      var nombre_completo = cliente.nombre_cliente.trim()+' '+cliente.apellido_cliente.trim();
      var numero_cliente = cliente.numero_cliente.trim();
      var direccion_cliente = cliente.calle_cliente.trim()+' '+cliente.numero_casa.trim();

      $('#nombre_cliente').val(nombre_completo);
      $('#direccion').val(direccion_cliente);

   }).fail(function(){

   });

});

$('#numero_cliente').keyup(function(e){
    if(e.keyCode == 13 || e.keyCode == 1)
    {
        $(this).trigger("enterKey");
    }
});

cargarNumeros();

Object tenis {

   var property cantidadDeHinchas = 5

   method presupuesto() {
      return 200 + 3 * cantidadDeHinchas
   }
}

Object judo {

   var property cantidadDeMedallas = 3
   
   method presupuesto() {
      return 160 * cantidadDeMedallas 
   }
   method sumarUnaMedalla() {
      cantidadDeMedallas = cantidadDeMedallas + 1
   }
}

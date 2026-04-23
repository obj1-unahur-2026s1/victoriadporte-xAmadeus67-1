import atletas.*

Object trajeDeJudo {
   method presupuesto(atleta) {
      return 50 * atleta.altura() 
   }
}

Object raqueta {
   method presupuesto(atleta){
      return (100 * atleta.edad()).min(3000)
   }
}

Object paloDeHockey {
   method presupuesto(atleta) {
      return 200 
   }
}

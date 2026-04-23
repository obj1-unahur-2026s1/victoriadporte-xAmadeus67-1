import disciplinas.*
import elementos.*

Object victoria {

   var edad = 22
   var property altura = 160
   var property disciplina = tenis
   var property elemento = raqueta 
   var property cantidadDeEntrenadores = 2
   
   method presupuesto() {
      return self.presupuestoPropio() + disciplina.presupuesto()
   }
   method edad() {
      return edad
   }
   method cumplirAños() {
      edad = edad + 1
   }

   /* Al usar la herramienta property genera estos 2  
   method altura() { este es el getter (responde el)
      return altura
   }
   method altura(valor) { este es el setter (cambia el)
      altura = valor 
   }
   */

   method presupuestoPropio() {
      return cantidadDeEntrenadores * (comite.presupuestoEntrenador() + elemento.presupuesto(self))
   }
} 



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

Object comite {

   var property presupuestoEntrenador = 10

}


Object paloDeHockey {

   method presupuesto(atleta) {
      return 200 
   }

}



TESTEO 

import atletas.*
import disciplinas.*
Import elementos.*

describe "metodos polimorficos de las disciplinas" {
   
   test "el presupuesto incial de tenis es 215" {
     assert.equals(215,tenis.presupuesto())
   }
}

describe "pruebas de victoria" {
   test "Victoria se quiere parece a pareto práctica judo, por lo tanto necesita un traje de judo ademas tiene 4 entrenadores su presupuesto es: 8020" {

     victoria.altura(150)
     victoria.elemento(trajeDeJudo)
     victoria.disciplina(judo)
     victoria.cantidadDeEntrenadores(4)
     
     assert.equals(8020, victoria.presupuesto())
   }
}

describe "prueba de victoria 2" {
   test "Victoria ahora se quiere parecer a Delpo y empieza a practicar tenis. Elonga con intensidad hasta llegar a los dos metros diez, necesita una raqueta y tiene dos entrenadores." {

     victoria.altura(210)
     victoria.elemento(raqueta)
     victoria.disciplina(tenis)
     victoria.cantidadDeEntrenadores(2)
     
     assert.equals(2455, victoria.presupuesto())
   }
}

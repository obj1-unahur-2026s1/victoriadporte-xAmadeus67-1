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


Object comite {
   var property presupuestoEntrenador = 10
}


import nave.*

object neo {
  var energia = 100

  method esElElegido() = true
  method vitalidad() = energia / 10
  method saltar() { energia *= 0.5}
}

object morfeo { 
  var property vitalidad = 8
  var estaCansado = false 
  
  method vitalidad() = vitalidad
  method saltar () {estaCansado = !estaCansado; vitalidad -= 1}
}

object trinity { 
  var property vitalidad = 0

  method esElElegido() = false 
  method saltar () {}
}

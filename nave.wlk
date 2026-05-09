import matrix.*

object nave {
  const property pasajeros = []
  
  method cantidadDePasajeros() = pasajeros.size()
  method pasajeroDeMayorVitalidad() = pasajeros.max({ p => p.vitalidad() })
  method pasajeroDeMenorVitalidad() = pasajeros.min({ p => p.vitalidad() })
  method estaEquilibrada() = self.pasajeroDeMayorVitalidad().vitalidad() <= self.pasajeroDeMenorVitalidad().vitalidad()
  method elElegidoEstaEnLaNave() = pasajeros.any({ p => p.esElElegido() })
  method pasajerosNoElegidos() = pasajeros.filter({p => not p.esElElegido()})
  method chocar() {
    pasajeros.forEach({ p => p.saltar() })
    pasajeros.clear()
  }

  method acelerar() {
    pasajeros.filter({ p => !p.esElElegido() }).forEach({ p => p.saltar() })
  }

  method subirPasajero(pasajero) { pasajeros.add(pasajero)}
  method bajarPasajero(pasajero) {pasajeros.remove(pasajero)}
  method subirPasajeros(listaDePasajeros) {pasajeros.addAll(listaDePasajeros)}
  
  method pasajerosValiosos() = pasajeros.filter({ p => p.vitalidad() > 5 })
  method hayPasajerosAlHorno() = pasajeros.any({ p => p.vitalidad() == 0 })
  method todosPuedenEnfrentarAgente() = pasajeros.all({ p => p.vitalidad() > 2 })
  
  method vitalidadPromedio() = pasajeros.sum({ p => p.vitalidad() }) / self.cantidadDePasajeros()
  method cantidadConVitalidadPar() = pasajeros.count({ p => p.vitalidad().even() })
  method realizarSimulacro() {
    pasajeros.forEach({ p =>  p.saltar(); p.saltar(); p.saltar()})
  }

  method vitalidades() = pasajeros.map({ p => p.vitalidad() })
  method ordenarPasajerosDeMayorAMenor() {
    pasajeros.sortBy({ p1, p2 => p1.vitalidad() > p2.vitalidad() })
  }

  method pasajeroAlAzar() = pasajeros.anyOne()
  method cantidadDeElegidos() = pasajeros.count({ p => p.esElElegido() })
  method potenciaVital() = pasajeros.flod(1, { acumulador, p => p.vitalidad() * acumulador })
}
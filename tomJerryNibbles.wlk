object tom {
    var energia = 50
    var ultimoRatonComido = jerry
    var distanciaRecorrida = 0

    method comer(unRaton){
        energia = energia + 12 + unRaton.peso()
        ultimoRatonComido = unRaton
    }

    method correr(metros){
        energia = energia - metros * 0.5
        distanciaRecorrida = distanciaRecorrida + metros
    }

    method velocidadMaxima(){
        return 5 + energia / 10
    }
    method energia (){return energia}

    method puedeCazar(distancia){
        return distancia >= distancia / 2
    }
    method cazar(unRaton, unaDistancia) {
        if(self.puedeCazar(unaDistancia)){
            self.correr(unaDistancia)
            self.comer(unRaton)
        }
    }
}

object jerry {
  var edad = 2

  method cumplirAnios(){
    edad = edad + 1
  }
  method peso() { return edad * 20 }
}

object nibbles {
  method peso() {return 35}
}

// Inventar otro ratón=

object jorgito {
    var peso = 30
    method peso(){
        return peso
  }
  method peso(nuevoPeso) {
    peso = nuevoPeso
  }
}
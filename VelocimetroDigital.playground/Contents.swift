//: Playground - noun: a place where people can play

import UIKit


enum Velocidades: Int{
   
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
    
}


class Auto{
    var velocidad: Velocidades
    
    init(){
        self.velocidad = Velocidades.Apagado
    }
    
    func cambioDeVelocidad(actual : Int, velocidadEnCadena: String)->(Int,String) {
        var cambioVelocidad: (Int,String) = (0,"")
        
        switch self.velocidad {
            
        case Velocidades.Apagado:
            self.velocidad = Velocidades.VelocidadBaja
            cambioVelocidad = (Velocidades.Apagado.rawValue,"Apagado")
        
        case Velocidades.VelocidadBaja:
            self.velocidad = Velocidades.VelocidadMedia
            cambioVelocidad = (Velocidades.VelocidadBaja.rawValue,"Velocidad baja")
        
        case Velocidades.VelocidadMedia:
            self.velocidad = Velocidades.VelocidadAlta
            cambioVelocidad = (Velocidades.VelocidadMedia.rawValue,"Velocidad media")
            
        case Velocidades.VelocidadAlta:
            self.velocidad = Velocidades.VelocidadMedia
            cambioVelocidad = (Velocidades.VelocidadAlta.rawValue,"Velocidad alta")
            
        default:
            self.velocidad = Velocidades.VelocidadBaja
            cambioVelocidad = (Velocidades.VelocidadBaja.rawValue,"Opción no aceptable, se regresará a velocidad baja")
        }
        
        return cambioVelocidad
    }
}


var auto = Auto()
var velocidadAuto: (Int,String) = (0,"")

for i in 1...20{
    velocidadAuto = auto.cambioDeVelocidad(0, velocidadEnCadena: "")
    print( "\(velocidadAuto.0), " + velocidadAuto.1 )
}






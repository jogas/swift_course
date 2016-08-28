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
        self.velocidad = Velocidades( velocidadInicial: .Apagado )
    }
    
    func cambioDeVelocidad()->(actual : Int, velocidadEnCadena: String) {
        var cambioVelocidad: (Int,String) = (0,"")
        
        switch self.velocidad {
            
        case .Apagado:
            self.velocidad = .VelocidadBaja
            cambioVelocidad = (Velocidades.Apagado.rawValue,"Apagado")
        
        case .VelocidadBaja:
            self.velocidad = .VelocidadMedia
            cambioVelocidad = (Velocidades.VelocidadBaja.rawValue,"Velocidad baja")
        
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
            cambioVelocidad = (Velocidades.VelocidadMedia.rawValue,"Velocidad media")
            
        case .VelocidadAlta:
            self.velocidad = .VelocidadMedia
            cambioVelocidad = (Velocidades.VelocidadAlta.rawValue,"Velocidad alta")
            
        default:
            self.velocidad = .VelocidadBaja
            cambioVelocidad = (Velocidades.VelocidadBaja.rawValue,"Opción no aceptable, se regresará a velocidad baja")
        }
        
        return cambioVelocidad
    }
}


var auto = Auto()
var velocidadAuto: (Int,String) = (0,"")

for i in 1...20{
    velocidadAuto = auto.cambioDeVelocidad()
    print( "\(velocidadAuto.0), " + velocidadAuto.1 )
}






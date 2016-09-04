//
//  Datos.swift
//  HamburguesasMundo
//
//  Created by José Manuel Gaytán on 03/09/16.
//  Copyright © 2016 José Manuel Gaytán. All rights reserved.
//

import Foundation
import UIKit


struct Colores{
    let colores = [ UIColor(red:210/255.0, green: 90/255.0, blue: 45/255.0, alpha: 1),
                    
                    UIColor(red:40/255.0, green: 170/255.0, blue: 45/255.0, alpha: 1),
                    
                    UIColor(red:3/255.0, green: 180/255.0, blue: 90/255.0, alpha: 1),
                    
                    UIColor(red:210/255.0, green: 190/255.0, blue: 5/255.0, alpha: 1),
                    
                    UIColor(red:120/255.0, green: 120/255.0, blue: 50/255.0, alpha: 1),
                    
                    UIColor(red:130/255.0, green: 80/255.0, blue: 90/255.0, alpha: 1),
                    
                    UIColor(red:130/255.0, green: 130/255.0, blue: 130/255.0, alpha: 1),
                    
                    UIColor(red:3/255.0, green: 50/255.0, blue: 90/255.0, alpha: 1)]
    
    func regresaColorAleatorio()->UIColor{
        let posicion = Int(arc4random()) % colores.count
        return colores[posicion]
    }
}



class ColeccionDePaises{
    let paises: [String] = ["Mexico","España","Venezuela","Nicaragua","Costa Rica",
                          "Brazil","Argentina","Paraguay","Grecia","Italia",
                          "Alemania","Japon","China","India","Iraq",
                          "Iran","Rusia","Inglaterra","Francia","Paises bajos"]
    
    func obtenPais( )->String{
        return self.paises[Int(arc4random()) % self.paises.count]
    }
}


class ColeccionDeHamburguesa{
    let hamburguesas: [String] = ["mexicana","paella","diabla","peperoni","Sirloin",
                                  "Vegetariana","Queso","Arrachera","ligera","Salami",
                                  "Salchichon","Pescado","vivora","Hongos","Pollo",
                                  "Cabra","Doble res","Bisteck","Salchicha","Mariscos"]
    
    func obtenHamburguesa( )->String{
        return self.hamburguesas[Int(arc4random()) % self.hamburguesas.count]
    }
}
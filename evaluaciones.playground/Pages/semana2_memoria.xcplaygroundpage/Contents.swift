//: Playground - noun: a place where people can play

import UIKit

let numeros = 1...100

var div5 = ""
var par = ""
var impar = ""
var range = ""

for i in numeros{
    
    div5 = i % 5 == 0 ? "Bingo!!!" : ""
    
    par = i % 2 == 0 ? "par!!!" : ""
    
    impar = i % 2 == 1 ? "impar!!!" : ""
    
    range = i > 30 && i < 40 ? "Viva Swift!!!" : ""
    
    print("# \(i) \(div5) \(par) \(impar) \(range)")
    
}

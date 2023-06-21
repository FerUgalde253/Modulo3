import UIKit

var lasVariablesSeUsaranAsi = "no usar otra forma solo camelcase"

/*
 Tenenmos tres tipos de operadores
 
 1.- unitario
    ej: -a
 2.- binaria
    ej: a+b
 3.- ternario
    ej: a+b=c
 */

//Declaracion de variables
var a : Int = -5                    //Unitarias
var b : Int = 10 * 4                //Binarias
var c : Int = a + b                 //Ternario
print("El resultado es: \(c)")      //Impreción de variables con interpolación

let dias : Int = 365
let horas : Int = 24
let seg : Int = 3600

var segDelAño : Int = dias * horas * seg

print("Los degundos del año son: \(segDelAño)")

let edadKitty : Int = 11
let factorMulti : Int = 3
let edadTotal : Int = edadKitty * factorMulti

print("La edad de Kitty en humanos es : \(edadTotal)")

let edadJessy : Int = 17
let edadMinima : Int = 18

if edadJessy >= edadMinima {                                            //Comparacion de edad minima
    print("Perfecto tienes \(edadJessy) años puedes beber alcohol")     //imprecion si se cumple
}else{                                                                  //si no se cumple
    print("lo siento no superas la edad de \(edadMinima) asi que no puedes tomar")      //imprecion si no
}                                                                       //fin de la comparacion

var startFuelLevel : Int = 40
var endFuelLevel : Int = 15




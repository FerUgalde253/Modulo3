import UIKit

let myName : String = "Fernando"
let apellido : String = "Ugalde"
let age : Int = 27
let vivo : Bool = true
var ubicacion : Float = 4315234.52652424
var direccionDeMiCasa : String = "Guadalajara Mexico"
var miNombreCompleto : String = myName + " " + apellido
print(miNombreCompleto)
var nombreCompletoEdad : String = miNombreCompleto + " " + String(age)
print(nombreCompletoEdad)
var nombre2 : String
var apellido2 : String? = "Martinez"
nombre2 = "Fernando"
var newUser = nombre2 + " " + apellido2! //Force the unwrap var
print(newUser)


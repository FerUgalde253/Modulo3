import UIKit

class Programmer {
    let name: String
    let language: String
    let  age : Int
    let secondName: String?
    
    init(name: String, language: String, age: Int, secondName: String?){
        self.name = name
        self.language = language
        self.age = age
        self.secondName = secondName
    }
    
    func coding(){
        print("Let me alone... I'm programming")
    }
    
}

let miguel = Programmer(name: "Mike", language: "LUA", age: 19, secondName: nil)
miguel.age
miguel.secondName

// Optional management

//optional binding


//If let

if let secondName  = miguel.secondName{
    print("Este es mi apellido: \(secondName)")
}else{
    print("Second Name was not added")
}

//Guard let

func checkSecondName(secondName: String?){
    guard let secondName = secondName else{
        print("you have no second name")
        return
    }
    print("Yesss you have a second name \(secondName)")
}
checkSecondName(secondName: miguel.secondName)

//Nil Coalescing operator

let secondName = miguel.secondName ?? "No second name" // si valor existe lo asigna a la variable si no asigna el texto despues de los signos de interrogacion
print(secondName)


//Forece ungrape

/*
let secondNameForced = miguel.secondName! // NO usar, utilizar otros metodos
*/

//opcional chain

var gioOptional : Programmer?
gioOptional = Programmer(name: "Gio", language: "swift", age: 17, secondName: nil)

let secondName4 = gioOptional?.secondName ?? "No second name in"

print(secondName4)


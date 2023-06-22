import UIKit

class Animal {
    var name: String
    var description: String
    var color: String
    var age: Int
    
    init(name: String, description: String, color: String, age: Int){
        self.name = name
        self.description = description
        self.color = color
        self.age = age
    }
    
    func eat() -> String {
        return ""
    }
    
    func makeNoise() -> String {
        return ""
    }
    
    func move() -> String {
        return ""
    }
    
    func animalData(){
        print("Name: \(name)")
        print("Description: \(description)")
        print("Color: \(color)")
        print("Age: \(age)")
    }
    
}
/*var tiger: Animal = Animal(name: "Toño", description: "is a bengal tiger", color: "Orange", age: 4)
tiger.animalData()*/

class Carnivore: Animal{
    var hasFang: Bool
    
    init(name: String, description: String, color: String, age: Int, hasFang: Bool) {
        self.hasFang = hasFang
        super.init(name: name, description: description, color: color, age: age)
    }
    
    override func eat() -> String {
        return "Meat"
    }
    
}

class Tiger : Carnivore{
    var animalSize: Float
    
    init(name: String, description: String, color: String, age: Int, hasFang: Bool, animalSize: Float) {
        self.animalSize = animalSize
        super.init(name: name, description: description, color: color, age: age, hasFang: hasFang)
    }
    
    override func makeNoise() -> String {
        return "Roar"
    }
    
    override func move() -> String {
        return "Fast"
    }
}

let tiger = Tiger(name: "Toño", description: "Bengal tiger", color: "Orange", age: 3, hasFang: true, animalSize: 15.5)
print("------------------------------------")
tiger.animalData()
print("This animal eats \(tiger.eat()), and makes a sound like \(tiger.makeNoise()), and it moves so \(tiger.move())")

class Herbivore : Animal{
    var eatVegetables : Bool
    init(name: String, description: String, color: String, age: Int, eatVegetables: Bool) {
        self.eatVegetables = eatVegetables
        super.init(name: name, description: description, color: color, age: age)
    }
    
    override func eat() -> String {
        return "Vegetables"
    }
    
}

class Cow : Herbivore {
    var animalSize : Float
    init(name: String, description: String, color: String, age: Int, eatVegetables: Bool, animalSize: Float) {
        self.animalSize = animalSize
        super.init(name: name, description: description, color: color, age: age, eatVegetables:  eatVegetables)
    }
    
    override func makeNoise() -> String {
        return "Muuuuuu"
    }
    
    override func move() -> String {
        return "Standar"
    }
}

let cow = Cow(name: "Lola", description: "Cattle", color: "Black & White", age: 6, eatVegetables: true, animalSize: 35.6)
print("------------------------------------")
cow.animalData()
print("This animal eats \(cow.eat()), and makes a sound like \(cow.makeNoise()), and it moves so \(cow.move())")

class Omnivore : Animal {
    var canFly: Bool
    init(name: String, description: String, color: String, age: Int, canFly: Bool) {
        self.canFly = canFly
        super.init(name: name, description: description, color: color, age: age)
    }
    
    override func eat() -> String {
        return "Vegetables & Meat"
    }
}

class Duck: Omnivore{
    var animalSize: Float
    init(name: String, description: String, color: String, age: Int, canFly: Bool, animalSize: Float) {
        self.animalSize = animalSize
        super.init(name: name, description: description, color: color, age: age, canFly: canFly)
    }
    
    override func makeNoise() -> String {
        return "Cuack cuack"
    }
    
    override func move() -> String {
        return "Agresive"
    }
}
let duck = Duck(name: "Donals", description: "Anatidae", color: "White", age: 12, canFly: true, animalSize: 4)
print("------------------------------------")
duck.animalData()
print("This animal eats \(duck.eat()), and makes a sound like \(duck.makeNoise()), and it moves so \(duck.move())")

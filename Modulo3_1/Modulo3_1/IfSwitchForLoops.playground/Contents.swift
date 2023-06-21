import UIKit

let enoughtAge : Bool = false
if enoughtAge {
    print("You have enought age so you can drink")
}else{
    print("You have no enought age to drink")
}

let age : Int = 17

if age > 18 {
    print("Welcome to the party")
}else{
    print("You are so young, go home kid")
}

let numSubs : Int = 6_000

if numSubs >= 10_000{
    print("Congrats you won a price for your \(numSubs) subs")
}else if numSubs < 5_000 {
    print("Keep goin you're in the half of the road")
}else{
    print("keep Trying")
}
 
let dayOfTheWeek : String = "Sunday"

switch dayOfTheWeek {
case "Monday":
    print("Happy start of the week")
case "Tuesday":
    print("One more day")
case "Sunday":
    print("Yeah enjoy your free day")
default:
    print("Were do you live?")
}

let myAge : Int = 27

if myAge == 30{
    print("Welcome to the thirties")
}else if myAge < 30{
    print("Enjoy your last \(30-myAge) years")
}else{
    print("Are you lying about your age?")
}

let currentMonth : String = "November"

switch currentMonth {
case "March","April","May":
    print("We're in Spring")
case "June","July","August":
    print("We're in Summer")
case "September","October","November":
    print("We're in Autumn")
case "Dicember","January","February":
    print("We're in Winter")
default:
    print("That Month doesn't exist")
}
//////////////////////////////////////////////////////////////////

//FUNC

//Basic func
func sayHello(){
    print("Hello :D")
}
sayHello()

//func with requsition parameter
let myName : String = "Luis"

func sayMyName(name: String){
    print("Your name is \(name)")
}
sayMyName(name: myName)
//Func with multiple parameters
let myLastName : String = "Ugalde"
func fullName(name: String, lastName: String){
    print("Your full name is: \(name) \(lastName)")
}
fullName(name: myName, lastName: myLastName)

//Only return
func superGretting() -> String{
    let gretting : String = "Supper Hello :DDDDD"
    return gretting
}
print(superGretting())

//Recive and return

func yourAgeIs(name: String, lastName: String) -> Int{
    var age : Int
    switch name + " " + lastName{
    case "Luis Ugalde":
        age = 27
    case "Fernando Ugalde":
        age = 23
    default:
        age = 0
    }
    return age
}
print("Your age is: \(yourAgeIs(name: myName, lastName: myLastName))")

//Func calling a func

func fullInfo(){
    print("Your full name is: \(fullName(name: myName, lastName: myLastName)) and your age is: \(yourAgeIs(name: myName, lastName: myLastName))")
}
fullInfo()

import UIKit

let myNumber : Int = 4

var myArray : Array<Int> = [23,54,98,31]
var mySecondArray : Array<Int> = [32,45,89,13]
/*
for i: Int in myArray{
    if i % 2 == 0{
        print("\(i) is even number")
    }else {
        print("\(i) is odd number")
    }
}*/

//Function to detect if even or Odd
func evenOrOddNumber(numbers: Array<Int>){
    for i: Int in numbers{
        if i % 2 == 0{
            print("\(i) is even number")
        }else {
            print("\(i) is odd number")
        }
    }
}
//Function to detect with ternary
func evenOrOddNumberTernary(numbers: Array<Int>){
    for i: Int in numbers{
        print(i % 2 == 0 ? "\(i) is even number" : "\(i) is odd number" )
    }
}

evenOrOddNumber(numbers: myArray)
print("")
evenOrOddNumber(numbers: mySecondArray)

import UIKit

let grade: Int = 70

func letterAssing(grade: Int){
    switch grade{
    case 0...59:
        print("Your Grade is: F- GPA 0.0")
    case 60...69:
        print("Your Grade is: D - GPA 1.0")
    case 70...79:
        print("Your Grade is: C - GPA 2.0")
    case 80...89:
        print("Your Grade is: B - GPA 3.0")
    case 90...100:
        print("Your Grade is: A - GPA 4.0")
    default:
        print("Out of range")
    }
}
letterAssing(grade: grade)

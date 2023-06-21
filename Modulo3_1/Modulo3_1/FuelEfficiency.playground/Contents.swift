import UIKit
//
print("This program calculates the efficiency of the vehicles")
let firstOdometer : Float = 30462
let seconOdometer : Float = 30810

//printing the values
print("This is the first odometer val: \(firstOdometer), the second odometer val is: \(seconOdometer)")

let totalGallons : Float = 11.2
print("The amount of gallons is \(totalGallons)")

var mpg : Float = (seconOdometer-firstOdometer)/totalGallons
print("The efficiency of the car is \(mpg) milles per gallon")

var lp100K : Float = 235.215/mpg
print("the amount of lt per 100 km is: \(lp100K)")

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



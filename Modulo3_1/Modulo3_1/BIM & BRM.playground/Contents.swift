import UIKit

//Initial information
let femaleAge : Float = 19
let femaleWeightLb : Float = 125
let femaleHeightIn : Float = 54

let manAge : Float = 17
let manWeightLb : Float = 145
let manHeightIn : Float = 58

//Convertion factors
let lbToKg : Float = 0.45359237
let inToCm : Float = 2.54

//BMI factor
let bmiW : Float = (10_000 * (femaleWeightLb * lbToKg))/pow((femaleHeightIn * inToCm),2.0)
let bmiM : Float = (10_000 * (manWeightLb * lbToKg))/pow((manHeightIn * inToCm),2.0)

print("The BMI for Woman is: \((bmiW*100).rounded()/100)")
print("The BMI for Man is: \((bmiM*100).rounded()/100)")

//BMR Factor
let convertionFemaleWeightRate : Float = 9.247 * (femaleWeightLb * lbToKg)
let convertionFemaleHeightRate : Float = 3.098 * (femaleHeightIn * inToCm)
let femaleAgeRate : Float = 4.33 * femaleAge

let convertionMaleWeightRate : Float = 13.397 * (manWeightLb * lbToKg)
let convertionMaleHeightRate : Float = 4.799 * (manHeightIn * inToCm)
let MaleAgeRate : Float = 5.677 * manAge

let bmrW : Float = (447.593 + convertionFemaleWeightRate + convertionFemaleHeightRate - femaleAgeRate)
let bmrM : Float = (88.362 + convertionMaleWeightRate + convertionMaleHeightRate - MaleAgeRate)

print("The BMR for Woman is: \((bmrW*100).rounded()/100)")
print("The BMR for Man is: \((bmrM*100).rounded()/100)")

import UIKit

//Initial information
let gender : String = "Female"

let femaleAge : Float = 19
let femaleWeightLb : Float = 125
let femaleHeightIn : Float = 54

let maleAge : Float = 17
let maleWeightLb : Float = 145
let maleHeightIn : Float = 58

func convertionWeight(weight: Float) -> Float{
    let lbToKg : Float = 0.45359237
    var weightKg : Float = weight * lbToKg
    return weightKg
}

func convertionHeight(height: Float) -> Float{
    let inToCm : Float = 2.54
    var heightCm : Float = height * inToCm
    return heightCm
}

func data(age: Float, weight: Float, height: Float){
    print("Hello")
    print("Your age is: \(age)")
    print("Your weight is: \(convertionWeight(weight: weight)) kg")
    print("Your height is: \(convertionHeight(height: height)) cm")
}
if gender == "Female"{
    data(age: femaleAge, weight: femaleWeightLb, height: femaleHeightIn)
}else{
    data(age: maleAge, weight: maleWeightLb, height: maleHeightIn)
}


func bmiCalc(gender: String) -> Float{
    var weightKg : Float
    var heightCm : Float
    if gender == "Female"{
        weightKg = convertionWeight(weight:femaleWeightLb )
        heightCm = convertionHeight(height: femaleHeightIn)
    }else{
        weightKg = convertionWeight(weight: maleWeightLb )
        heightCm = convertionHeight(height: maleHeightIn)
    }
    let bmi : Float = (10_000 * weightKg)/pow(heightCm,2.0)
    return (bmi*100).rounded()/100
}
print("The BMI is: \(bmiCalc(gender: gender))")

//BMR Factor
func brmFactor(gender: String) -> Float {
    var bmr : Float
    if gender == "Female"{
        var weightKg : Float = convertionWeight(weight:femaleWeightLb )
        var heightCm : Float = convertionHeight(height: femaleHeightIn)
        let convertionFemaleWeightRate : Float = 9.247 * weightKg
        let convertionFemaleHeightRate : Float = 3.098 * heightCm
        let femaleAgeRate : Float = 4.33 * femaleAge
        bmr = (447.593 + convertionFemaleWeightRate + convertionFemaleHeightRate - femaleAgeRate)
    }else{
        var weightKg : Float = convertionWeight(weight:maleWeightLb )
        var heightCm : Float = convertionHeight(height: maleHeightIn)
        let convertionMaleWeightRate : Float = 13.397 * weightKg
        let convertionMaleHeightRate : Float = 4.799 * heightCm
        let MaleAgeRate : Float = 5.677 * maleAge
        bmr = (88.362 + convertionMaleWeightRate + convertionMaleHeightRate - MaleAgeRate)
    }
    return bmr
}
print("The BMR is: \(brmFactor(gender: gender))")

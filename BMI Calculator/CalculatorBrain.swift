//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Fernando Estevez on 11/4/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let calcBMI = weight / (height * height)
        
        if calcBMI < 18.5 {
            bmi = BMI(value: calcBMI, message: "eat more", color: UIColor.blue)
        } else if calcBMI > 18.5 && calcBMI < 24.9 {
            bmi = BMI(value: calcBMI, message: "You are fit", color: UIColor.green)
        } else{
            bmi = BMI(value: calcBMI, message: "You are fat AF!", color: UIColor.red)
        }
    }
    
    func bmiToString() -> String {
        return String(format:"%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String? {
        return bmi?.message ?? "No Advice"
    }
    
    func getColor() -> UIColor? {
        return bmi?.color ?? UIColor.white
    }
}

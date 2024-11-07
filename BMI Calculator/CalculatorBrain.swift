//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Fernando Estevez on 11/4/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float = 0.0
    
    mutating func calculateBMI(height: Float, weight: Float){
        bmi = weight / (height * height)
    }
    
    func bmiToString() -> String {
        return String(format:"%.1f", bmi)
    }
}

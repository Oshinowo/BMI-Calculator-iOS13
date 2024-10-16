//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Big Field Digital on 15/10/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBmi(height: Float, weight: Float) {
        let bmiValue = weight/(height * height)
        
        switch bmiValue {
        case let bmiValue where bmiValue < 18.5:
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: .blue)
        case let bmiValue where bmiValue < 24.9:
            bmi = BMI(value: bmiValue, advice: "Normal weight", color: .green)
        default:
            bmi = BMI(value: bmiValue, advice: "Exercise daily", color: .red)
        }
        
    }
    
    func getBmiValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getBmiAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getBmiBackgroundColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}

//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Singgih Aji Sasongko on 16/10/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as Fiddle", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: UIColor.red)
        }
    }
    
    func getBMIColor() -> UIColor? {
        return bmi?.color
    }
    
    func getBMIAdvice() -> String? {
        return bmi?.advice
    }
}

//
//  CalculateBrain.swift
//  BMI
//
//  Created by Bim on 6/8/20.
//  Copyright © 2020 Jiradet Amornpimonkul. All rights reserved.
//

import Foundation

struct CalculateBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(weight: Float, height: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat More")
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Good")
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat Less")
        }
        
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Error"
    }
    
}


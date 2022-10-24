//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by advanc3d on 24.10.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calcBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        createBMIStruct(bmiValue: bmiValue)
    }
    
    func getBMI() -> BMI {
        return bmi ?? BMI(value: 0.0, advice: "No advice", color: .white)
    }
    
    private mutating func createBMIStruct(bmiValue: Float) {
        var advice: String = ""
        var color: UIColor = .white
        
        if bmiValue < 18.5 {
            advice = "Eat more pies!"
            color = .systemBlue
        } else if bmiValue < 24.9 {
            advice = "Fit as a fiddle!"
            color = .systemGreen
        } else {
            advice = "Eat less pies!"
            color = .systemRed
        }
        
        bmi = BMI(value: bmiValue, advice: advice, color: color)
    }
}




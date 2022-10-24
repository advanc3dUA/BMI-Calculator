//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by advanc3d on 24.10.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmi: BMI?

    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let safeBMI = bmi else { return }
        bmiLabel.text = String(format: "%.1f", safeBMI.value)
        adviceLabel.text = safeBMI.advice
        self.view.backgroundColor = safeBMI.color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}

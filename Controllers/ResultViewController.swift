//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Singgih Aji Sasongko on 14/10/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//
import UIKit

import Foundation
class ResultViewController: UIViewController {
    @IBOutlet weak var suggestLabel: UILabel!
    var bmiResult: String?
    @IBOutlet weak var resultValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultValue.text = bmiResult
    }
    
    @IBAction func recalculateAction(_ sender: UIButton) {
        
    }
}

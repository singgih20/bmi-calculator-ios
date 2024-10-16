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
    var bmiResult: String?
    var color: UIColor?
    var advice: String?
    @IBOutlet var viewParent: UIView!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var resultValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultValue.text = bmiResult
        viewParent.backgroundColor = color
        adviceLabel.text = advice
    }
    
    @IBAction func recalculateAction(_ sender: UIButton) {
        dismiss(animated: true)
    }
}

//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    var bmiValue = "0.0"
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var heightValue: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onHeightChange(_ sender: UISlider) {
        heightValue.text = String(format: "%.2f", sender.value) + "m"
        
    }
    
    
    @IBAction func onWeightChange(_ sender: UISlider) {
        let intValue = Int(sender.value) // Konversi nilai slider ke Int
          let stringValue = String(intValue) // Ubah nilai Int menjadi String
          weightValue.text = stringValue + "Kg"
    }
    
    @IBAction func onCalculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmi = weight / (height * height)
                print(bmi)
        bmiValue = String(format: "%.1f", bmi)
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiResult = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getBMIAdvice()
            destinationVC.color = calculatorBrain.getBMIColor()
        }
    }
}


//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
    
}


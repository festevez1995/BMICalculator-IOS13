//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func HeightSliderTriggered(_ sender: UISlider) {
        heightLabel.text = String(format: "%0.2f", sender.value) + "m"
        
       // print(String(format: "%0.2f", sender.value))
    }
    
    @IBAction func WeightSliderTriggered(_ sender: UISlider) {
        weightLabel.text = String(Int(sender.value)) + "Kg"
       // print(Int(sender.value))

    }
    
    @IBAction func calculationPressed(_ sender: Any) {
        let inputHeight = heightSlider.value
        let inputWeight = weightSlider.value
        
        let bmi = calculateBMI(height: inputHeight, weight: inputWeight)
        
        print(bmi)
    }
    
    func calculateBMI(height: Float, weight: Float) -> Float {
        let bmi = weight / (height * height)
        return bmi
    }
}


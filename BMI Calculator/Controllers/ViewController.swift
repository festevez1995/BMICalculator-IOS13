//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var calcBrain = CalculatorBrain()

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func HeightSliderTriggered(_ sender: UISlider) {
        heightLabel.text = String(format: "%0.2f", sender.value) + "m"
    }
    
    @IBAction func WeightSliderTriggered(_ sender: UISlider) {
        weightLabel.text = String(Int(sender.value)) + "Kg"
    }
    
    @IBAction func calculationPressed(_ sender: Any) {
        let inputHeight = heightSlider.value
        let inputWeight = weightSlider.value
        
        calcBrain.calculateBMI(height: inputHeight, weight: inputWeight)
        
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue = calcBrain.bmiToString()
        }
        // Pass the selected object to the new view controller.
    }
}


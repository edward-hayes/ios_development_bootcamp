//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Edward Hayes on 9/8/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var BMILabel: UILabel!
    
    @IBOutlet weak var AdviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        BMILabel.text = bmiValue ?? "0.0"
        self.view.backgroundColor = color ?? #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
        AdviceLabel.text = advice ?? "Exercise and nutrion are the key to happiness"
    }
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

}

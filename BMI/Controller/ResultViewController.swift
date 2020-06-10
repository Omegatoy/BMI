//
//  ResultViewController.swift
//  BMI
//
//  Created by Bim on 6/8/20.
//  Copyright © 2020 Jiradet Amornpimonkul. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String!
    var advice: String!

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        
    }
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    

}

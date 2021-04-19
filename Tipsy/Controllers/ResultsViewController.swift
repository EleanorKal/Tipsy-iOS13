//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Eleanor Kalu on 18.04.21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var totalAmount: Double?
    var tipPercentage: String?
    var diners: String?
    
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        totalLabel.text = String(format: "%.2f", totalAmount!)
        settingsLabel.text = "Split between \(diners ?? "2") people, with \(tipPercentage ?? "0%") tip."
        
    }
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        
    }
    
    

}

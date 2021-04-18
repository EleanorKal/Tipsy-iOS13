//
//  ViewController.swift
//  Tipsy
//
//  Created by Eleanor Kalu 18/04/2021.
//  Copyright © 2021 Blarnyä. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet weak var stepperValueStepper: UIStepper!
    
    
    var amount : UITextField?
    let tenPC : Double = 10.00
    let twentyPC : Double = 20.00
    let zeroPC : Double = 0.00
    var tipAmount = 0.0

    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
       
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        
    }
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        stepperValueStepper.maximumValue = 50
        stepperValueStepper.minimumValue = 2
        splitNumberLabel.text = String(format: "%.0f", stepperValueStepper.value)
    }
    
    
    @IBAction func calculatorPressed(_ sender: UIButton) {
        
        // Show percentage
        if zeroPctButton.isSelected {
            print(0.0)
            tipAmount = 0.0
        } else if tenPctButton.isSelected {
            print(0.1)
            tipAmount = 0.10
        } else {
            print (0.2)
            tipAmount = 0.20
        }
        
        // Show number of people
        let diners = String(format: "%.0f", stepperValueStepper.value)
        
        // show Enter bill total
        let billTotal = Double(billTextField.text ?? "0.0")
        
        // Calculate what each diner pays (including the tip)
        // Amount per Diner excluding the tip
        let dividedAmt = billTotal! / stepperValueStepper.value
        
        // Amount per Diner for the tip
        let tipPerDiner = (billTotal! * tipAmount) / stepperValueStepper.value
        
        // Amount per diner including the tip
        let eachDinerPays = String(format: "%.2f", dividedAmt + tipPerDiner)
        

        print("\(billTotal ?? 0.0): bill total")
        print("\(tipAmount): tip amount")
        print("\(diners): number of diners")
        print("\(dividedAmt): amount per diner excl. tip")
        print("\(eachDinerPays): amount incl. tip diner")
    }
    
    

}


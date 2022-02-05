//
//  ViewController.swift
//  Prework - Abha Mam
//
//  Created by Abha Mam on 9/5/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        // get bill amount from test fiedl input
        let bill = Double (billAmountTextField.text!) ?? 0
        
        //getting tip total by multiplying
        let tipPercetages = [0.15,0.18,0.2]
        let tip = bill * tipPercetages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}


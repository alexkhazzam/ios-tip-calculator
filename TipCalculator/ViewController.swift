//
//  ViewController.swift
//  TipCalculator
//
//  Created by Alexander Khazzam on 6/19/22.
//

import UIKit

class ViewController: UIViewController {
    
    var tipPerPerson: Double?

    @IBOutlet weak var billTotal: UITextField!
    
    @IBOutlet weak var tipStepper: UIStepper!
    @IBOutlet weak var splitStepper: UIStepper!
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var splitLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tipChanged(_ sender: UIStepper) {
        tipLabel.text = String(format: "%.0f", sender.value) + "%"
    }
    
    @IBAction func splitChanged(_ sender: UIStepper) {
        splitLabel.text = String(format: "%.0f", sender.value)
    }
    
    @IBAction func calculateBtnPressed(_ sender: UIButton) {
        if billTotal.text == "" {
            tipPerPerson = 0
        } else {
            tipPerPerson = (Double(billTotal.text!)! + Double(billTotal.text!)! * (tipStepper.value / 100)) / splitStepper.value
        }
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.tipPerPerson = tipPerPerson
        }
    }
}



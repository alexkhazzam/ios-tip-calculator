//
//  ResultViewController.swift
//  TipCalculator
//
//  Created by Alexander Khazzam on 6/20/22.
//

import UIKit

class ResultViewController: UIViewController {
    
    var tipPerPerson: Double?
    
    @IBOutlet weak var totalTipLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalTipLabel.text = "$" + String(format: "%.2f", tipPerPerson ?? 0)
    }
    @IBAction func recalculateBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}

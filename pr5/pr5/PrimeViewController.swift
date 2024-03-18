//
//  PrimeViewController.swift
//  pr5
//
//  Created by bmiit on 11/03/24.
//

import UIKit

class PrimeViewController: UIViewController {

    @IBOutlet var txtField: UITextField!

    @IBOutlet var outputLabel: UILabel!
    
    @IBAction func check(_ sender: UIButton) {
        
        var number = Int(txtField.text) ?? 0;
        
        outputLabel.text = number;
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

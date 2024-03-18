//
//  ViewController.swift
//  demo2
//
//  Created by bmiit on 16/01/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtans: UIView!
    @IBOutlet var lblque: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblque.text = " ";
    }

    @IBAction func btnsubmit(_ sender: Any) {
        var question = lblque.text;
        var answer = txtans.textInputMode;
        
    }
    
}


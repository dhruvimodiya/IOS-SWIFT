//
//  ViewController.swift
//  demo1
//
//  Created by bmiit on 02/01/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    let question: [String] = [
        "What is 7 + 7 ?",
        "What is the capital of vermont?",
        "What is cognac made from?"
    ]
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes"
    ]
    var currentQuestionIndex: Int = 0
    
    @IBOutlet weak var lbltext: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lbltext.text = " "
    }

    @IBAction func btnclickme(_ sender: Any) {
        lbltext.text = "dhruvi Modiya "
    }
    
    @IBAction func showNextQuestion(_ sender: Any) {
        currentQuestionIndex += 1
        if currentQuestionIndex == question.count{
            currentQuestionIndex = 0
        }
        
        let question: String = question[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    
    @IBAction func showAnswer(_ sender: Any) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
}


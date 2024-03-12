//
//  ViewController.swift
//  TouchEvent
//
//  Created by bmiit on 12/03/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myview: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        print("Touch Began")
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        print("Touch Moved")
        let touch = touches.first!
        let location = touch.location(in: view)
        print("touch location is :\(location)")
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        print("Touch End")
        let touch = touches.first!
        let locations = touch.location(in: view)
        print("touch locations is :\(locations)")
        }

    }
//    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
//        super.touchesCancelled(touches, with: event)
//        print("Touch Cancelled")
//    }



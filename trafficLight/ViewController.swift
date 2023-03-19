//
//  ViewController.swift
//  trafficLight
//
//  Created by Zalman Zoteev on 19/03/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLabel: UIView!
    @IBOutlet var yellowLabel: UIView!
    @IBOutlet var greenLabel: UIView!
    var changeColour = "red"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redLabel.alpha = 0.3
        yellowLabel.alpha = 0.3
        greenLabel.alpha = 0.3
        redLabel.layer.cornerRadius = 84
        yellowLabel.layer.cornerRadius = 84
        greenLabel.layer.cornerRadius = 84
    }
    @IBAction func startButtonDidTapped(_ sender: UIButton) {
//        redLabel.alpha = 1
        sender.setTitle("Next", for: .normal)
        
        if changeColour == "red" {
            redLabel.alpha = 1
            greenLabel.alpha = 0.3
            changeColour = "yellow"
        } else if changeColour == "yellow" {
            redLabel.alpha = 0.3
            yellowLabel.alpha = 1
            changeColour = "green"
        } else {
            yellowLabel.alpha = 0.3
            greenLabel.alpha = 1
            changeColour = "red"
        }
    }
}


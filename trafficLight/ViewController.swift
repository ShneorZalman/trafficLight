//
//  ViewController.swift
//  trafficLight
//
//  Created by Zalman Zoteev on 19/03/2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var redLabel: UIView!
    @IBOutlet var yellowLabel: UIView!
    @IBOutlet var greenLabel: UIView!
    private var changeColour = "red"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redLabel.alpha = 0.3
        yellowLabel.alpha = 0.3
        greenLabel.alpha = 0.3
        redLabel.layer.cornerRadius = redLabel.frame.width / 2
        yellowLabel.layer.cornerRadius = yellowLabel.frame.width / 2
        greenLabel.layer.cornerRadius = greenLabel.frame.width / 2
    }
    @IBAction func startButtonDidTapped(_ sender: UIButton) {
        if sender.currentTitle != "Next" {
            sender.setTitle("Next", for: .normal)
        }
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


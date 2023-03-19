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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redLabel.alpha = 0.3
        yellowLabel.alpha = 0.3
        greenLabel.alpha = 0.3
    }
    @IBAction func startButtonDidTapped(_ sender: UIButton) {
        sender.setTitle("Next", for: .normal)
        redLabel.alpha = 1
        if redLabel.alpha == 1 {
            yellowLabel.alpha = 1
            redLabel.alpha = 0.3
            greenLabel.alpha = 0.3
        }
    }
}


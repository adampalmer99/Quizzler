//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Adam Palmer on 08/02/2023.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var trueButton: UIButton!
    @IBOutlet var falseButton: UIButton!
    
    let quiz = [
        "Four + Two is equal to Six",
        "5 - 3 is greater than 1",
        "3 + 8 is less than 10"
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        questionNumber += 1
        updateUI()
        
        
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber]

    }
    
}


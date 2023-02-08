//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Adam Palmer on 08/02/2023.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var trueButton: UIButton!
    @IBOutlet var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle! // true or false
       let userGotitRight = quizBrain.checkAnswer(userAnswer)
      
        if userGotitRight {
            sender.backgroundColor = UIColor.green
            
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
      
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
   @objc func updateUI() {
       questionLabel.text = quizBrain.getQuestionText()
       progressBar.progress = quizBrain.getProgress()
       scoreLabel.text = "Score: \(quizBrain.getScore())"
       trueButton.backgroundColor = UIColor.clear
       falseButton.backgroundColor = UIColor.clear

    }
    
}


//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizBrain = QuizBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        
        if quizBrain.checkAnswer(userAnswer) {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(resetButtons), userInfo: nil, repeats: false)
        
        if quizBrain.nextQuestion() {
            updateUI()
        } else {
            endGame()
        }
        
    }
    
    @objc func resetButtons() {
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
    
    func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        scoreLabel.text = "Score: \(quizBrain.score)"
        progressBar.progress = quizBrain.getProgress()
    }
    
    func endGame() {
        questionLabel.text = "Game Over!"
        scoreLabel.text = "Score: \(quizBrain.score)"
        progressBar.progress = 1
        trueButton.isEnabled = false
        falseButton.isEnabled = false
    }
    
}


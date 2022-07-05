//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //View
    @IBOutlet weak var questionLable: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    //Controller
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        progressBar.progress = 0
    }
    
    //
    @IBAction func answerBtnPressed(_ sender: UIButton) {
        
        let userCorrect = quizBrain.checkAnswer(sender.currentTitle!)
        updatePageByAnswer(isCorrect: userCorrect, sender: sender)
        
        if !quizBrain.goNextQuiz() {
            let alert = UIAlertController(title: "문제끝!", message: "user score: \(quizBrain.score)!", preferredStyle: UIAlertController.Style.alert)
            
            let action = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
            alert.addAction(action)
            self.present(alert, animated: true)
            quizBrain.resetQuiz()
        }
        updateUI()
    }
    
    func updatePageByAnswer(isCorrect: Bool, sender:UIButton) {
        if isCorrect {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
    }
    
    func updateUI () {
        UIView.animate(withDuration: 0.3, animations: {
            self.trueButton.backgroundColor = UIColor.clear
            self.falseButton.backgroundColor = UIColor.clear
        })
        questionLable.text = quizBrain.getQuizText()
        progressBar.progress = quizBrain.getProgressData()
    }
}


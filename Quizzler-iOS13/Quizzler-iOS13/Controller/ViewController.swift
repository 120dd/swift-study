//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLable: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        progressBar.progress = 0
        // Do any additional setup after loading the view.
    }
    @IBAction func answerBtnPressed(_ sender: UIButton) {
        
        let userCorrect = quizBrain.checkAnswer(sender.currentTitle!)
        
        if userCorrect {
            sender.backgroundColor = UIColor.green
//            quizBrain.score += 1
        } else {
            sender.backgroundColor = UIColor.red
        }
        quizBrain.goNextQuiz()
        updateUI()
//        if quizBrain.quizNumber + 1 < quizBrain.quiz.count{
////        if quizNumber + 1 < quiz.count{
//            quizBrain.quizNumber += 1
//            updateUI()
//        } else {
//            let alert = UIAlertController(title: "문제끝!", message: "user score: \(quizBrain.score)!", preferredStyle: UIAlertController.Style.alert)
//
//            let action = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
//            alert.addAction(action)
//            self.present(alert, animated: true)
//
//            quizBrain.quizNumber = 0
//            quizBrain.score = 0
//            updateUI()
//        }
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


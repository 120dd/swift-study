//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by monosig on 2022/07/04.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain{
    let quiz = [
        Question(q: "10+1=11", a: true),
        Question(q: "10+5=12", a: false),
        Question(q: "15+4=19", a: true),
    ]
    var quizNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer:String)->Bool{
        if userAnswer == String(quiz[quizNumber].answer) {
            self.score += 1
            return true
        } else {
            return false
        }
    }
    
    func getQuizText()->String {
        return quiz[quizNumber].text
    }
    
    func getProgressData() -> Float {
        return Float(quizNumber+1)/Float(quiz.count)
    }
    
    mutating func goNextQuiz()  {
        if quizNumber + 1 < quiz.count{
            self.quizNumber += 1
        } else {
//            let alert = UIAlertController(title: "문제끝!", message: "user score: \(score)!", preferredStyle: UIAlertController.Style.alert)
////
//            let action = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
//            alert.addAction(action)
//            self.present(alert, animated: true)
            self.quizNumber = 0
            self.score = 0
        }
    }
    
    
}

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
    
    let quiz = [
        ["10+1=11","True"],
        ["10+5=12","False"],
        ["15+4=19","True"],
    ]
    
    var quizNumber = 0
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    @IBAction func answerBtnPressed(_ sender: UIButton) {
        if quiz[quizNumber][1] == sender.currentTitle! {
            score += 1
        }
        
        if quizNumber + 1 < quiz.count{
            quizNumber += 1
            updateUI()
        } else {
            quizNumber = 0
//            questionLable.text = "user score: \(score)!"
        }
    }
    
    func updateUI () {
        questionLable.text = quiz[quizNumber][0]
    }
    

}

